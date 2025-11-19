int main(int argc, const char **argv, const char **envp)
{
  _set_user_dir_suffix();
  mDNSLogCategory_Default = os_log_create("com.apple.mDNSResponder", "Default");
  v5 = os_log_create("com.apple.mDNSResponder", "Default_redacted");
  mDNSLogCategory_Default_redacted = v5;
  if (mDNSLogCategory_Default)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the Default log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_Default = &_os_log_default;
  }

  mDNSLogCategory_State = os_log_create("com.apple.mDNSResponder", "State");
  v7 = os_log_create("com.apple.mDNSResponder", "State_redacted");
  mDNSLogCategory_State_redacted = v7;
  if (!mDNSLogCategory_State || !v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the State log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_State = &_os_log_default;
  }

  mDNSLogCategory_mDNS = os_log_create("com.apple.mDNSResponder", "mDNS");
  v8 = os_log_create("com.apple.mDNSResponder", "mDNS_redacted");
  mDNSLogCategory_mDNS_redacted = v8;
  if (!mDNSLogCategory_mDNS || !v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the mDNS log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_mDNS = &_os_log_default;
  }

  mDNSLogCategory_uDNS = os_log_create("com.apple.mDNSResponder", "uDNS");
  v9 = os_log_create("com.apple.mDNSResponder", "uDNS_redacted");
  mDNSLogCategory_uDNS_redacted = v9;
  if (!mDNSLogCategory_uDNS || !v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the uDNS log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_uDNS = &_os_log_default;
  }

  mDNSLogCategory_SPS = os_log_create("com.apple.mDNSResponder", "SPS");
  v10 = os_log_create("com.apple.mDNSResponder", "SPS_redacted");
  mDNSLogCategory_SPS_redacted = v10;
  if (!mDNSLogCategory_SPS || !v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the SPS log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_SPS = &_os_log_default;
  }

  mDNSLogCategory_NAT = os_log_create("com.apple.mDNSResponder", "NAT");
  v11 = os_log_create("com.apple.mDNSResponder", "NAT_redacted");
  mDNSLogCategory_NAT_redacted = v11;
  if (!mDNSLogCategory_NAT || !v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the NAT log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_NAT = &_os_log_default;
  }

  mDNSLogCategory_D2D = os_log_create("com.apple.mDNSResponder", "D2D");
  v12 = os_log_create("com.apple.mDNSResponder", "D2D_redacted");
  mDNSLogCategory_D2D_redacted = v12;
  if (!mDNSLogCategory_D2D || !v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the D2D log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_D2D = &_os_log_default;
  }

  mDNSLogCategory_XPC = os_log_create("com.apple.mDNSResponder", "XPC");
  v13 = os_log_create("com.apple.mDNSResponder", "XPC_redacted");
  mDNSLogCategory_XPC_redacted = v13;
  if (!mDNSLogCategory_XPC || !v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the XPC log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_XPC = &_os_log_default;
  }

  mDNSLogCategory_Analytics = os_log_create("com.apple.mDNSResponder", "Analytics");
  v14 = os_log_create("com.apple.mDNSResponder", "Analytics_redacted");
  mDNSLogCategory_Analytics_redacted = v14;
  if (!mDNSLogCategory_Analytics || !v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the Analytics log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_Analytics = &_os_log_default;
  }

  mDNSLogCategory_DNSSEC = os_log_create("com.apple.mDNSResponder", "DNSSEC");
  v15 = os_log_create("com.apple.mDNSResponder", "DNSSEC_redacted");
  mDNSLogCategory_DNSSEC_redacted = v15;
  if (!mDNSLogCategory_DNSSEC || !v15)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could NOT create the DNSSEC log handle in mDNSResponder", valuePtr, 2u);
    }

    mDNSLogCategory_DNSSEC = &_os_log_default;
  }

  mDNSMacOSXSystemBuildNumber(0);
  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s starting %s %d", v16, v17, v18, v19, v20, "mDNSResponder mDNSResponder-2881.40.18 (Oct 11 2025 00:04:16)");
  if (geteuid())
  {
    v26 = &unk_10016D000;
    if (argc >= 2)
    {
      v27 = "-NoMulticastAdvertisements";
      v28 = "-DebugLogging";
      v29 = "-UnicastPacketLogging";
      v30 = 1;
      do
      {
        v31 = argv[v30];
        if (!strcasecmp(v31, v27))
        {
          NoMulticastAdvertisements = 1;
        }

        if (!strcasecmp(v31, v28))
        {
          v26[208] = 1;
        }

        if (!strcasecmp(v31, v29))
        {
          mDNS_PacketLoggingEnabled = 1;
        }

        v32 = v30;
        if (!strcasecmp(v31, "-OfferSleepProxyService"))
        {
          v33 = v29;
          v34 = v28;
          v35 = v27;
          v36 = v30 + 1;
          if (v30 + 1 >= argc)
          {
            v38 = 100;
          }

          else
          {
            v37 = argv[v36];
            if (*v37 - 48 > 9 || *(v37 + 1) - 48 > 9 || v37[2])
            {
              v38 = 100;
            }

            else
            {
              v38 = atoi(argv[v36]);
              v31 = v37;
              v32 = ++v30;
            }

            v26 = &unk_10016D000;
          }

          OfferSleepProxyService = v38;
          v27 = v35;
          v28 = v34;
          v29 = v33;
        }

        if (!strcasecmp(v31, "-UseInternalSleepProxy"))
        {
          if (v30 + 1 >= argc || (v39 = argv[v30 + 1], *v39 - 48 > 9) || v39[1])
          {
            v40 = 1;
          }

          else
          {
            v40 = atoi(v39);
            ++v30;
          }

          UseInternalSleepProxy = v40;
          v32 = v30;
          v31 = argv[v30];
        }

        if (!strcasecmp(v31, "-StrictUnicastOrdering"))
        {
          StrictUnicastOrdering = 1;
          v31 = argv[v32];
        }

        if (!strcasecmp(v31, "-AlwaysAppendSearchDomains"))
        {
          AlwaysAppendSearchDomains = 1;
          v31 = argv[v32];
        }

        if (!strcasecmp(v31, "-DisableAllowExpired"))
        {
          EnableAllowExpired = 0;
        }

        ++v30;
      }

      while (v30 < argc);
    }

    v26[208] = 1;
    mDNS_PacketLoggingEnabled = 1;
    NoMulticastAdvertisements = PreferencesGetValueBool(@"NoMulticastAdvertisements", NoMulticastAdvertisements);
    StrictUnicastOrdering = PreferencesGetValueBool(@"StrictUnicastOrdering", StrictUnicastOrdering);
    AlwaysAppendSearchDomains = PreferencesGetValueBool(@"AlwaysAppendSearchDomains", AlwaysAppendSearchDomains);
    EnableAllowExpired = PreferencesGetValueBool(@"EnableAllowExpired", EnableAllowExpired);
    OfferSleepProxyService = PreferencesGetValueInt(@"OfferSleepProxyService", OfferSleepProxyService);
    UseInternalSleepProxy = PreferencesGetValueInt(@"UseInternalSleepProxy", UseInternalSleepProxy);
    PQWorkaroundThreshold = PreferencesGetValueInt(@"PQWorkaroundThreshold", PQWorkaroundThreshold);
    v41 = mdns_managed_defaults_create("com.apple.mDNSResponder", 0);
    if (v41)
    {
      v47 = v41;
      v48 = PQWorkaroundThreshold;
      Value = CFDictionaryGetValue(v41, @"PQWorkaroundThreshold");
      if (Value)
      {
        v50 = Value;
        v51 = CFGetTypeID(Value);
        if (v51 == CFNumberGetTypeID() && !CFNumberIsFloatType(v50))
        {
          *valuePtr = 0;
          if (CFNumberGetValue(v50, kCFNumberSInt64Type, valuePtr))
          {
            v52 = *valuePtr;
            if (*valuePtr >= 0x7FFFFFFF)
            {
              v52 = 0x7FFFFFFFLL;
            }

            if (v52 <= 0xFFFFFFFF80000000)
            {
              v48 = 0x80000000;
            }

            else
            {
              v48 = v52;
            }
          }
        }
      }

      PQWorkaroundThreshold = v48;
      CFRelease(v47);
    }

    if (NoMulticastAdvertisements)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "-NoMulticastAdvertisements is set: Administratively prohibiting multicast advertisements", v42, v43, v44, v45, v46, v399);
    }

    if (AlwaysAppendSearchDomains)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "-AlwaysAppendSearchDomains is set", v42, v43, v44, v45, v46, v399);
    }

    if (StrictUnicastOrdering)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "-StrictUnicastOrdering is set", v42, v43, v44, v45, v46, v399);
    }

    signal(1, HandleSIG);
    signal(2, HandleSIG);
    signal(13, 1);
    signal(15, HandleSIG);
    signal(29, HandleSIG);
    signal(30, HandleSIG);
    signal(31, HandleSIG);
    signal(27, HandleSIG);
    signal(18, HandleSIG);
    signal(28, HandleSIG);
    mDNSStorage[0] = &PlatformStorage;
    KQueueFD = kqueue();
    if (KQueueFD == -1)
    {
      v54 = *__error();
      v66 = mDNSLogCategory_Default;
      strerror(v54);
      LogMsgWithLevel(v66, OS_LOG_TYPE_DEFAULT, "kqueue() failed errno %d (%s)", v67, v68, v69, v70, v71, v54);
      v72 = &unk_100178000;
      v73 = &unk_100178000;
      if (v54)
      {
        goto LABEL_187;
      }

LABEL_179:
      CFRunLoopRun();
      v133 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == v73[435])
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
        {
          *valuePtr = 0;
          goto LABEL_185;
        }
      }

      else
      {
        v133 = *(v72 + 436);
        if (os_log_type_enabled(v133, OS_LOG_TYPE_FAULT))
        {
          *valuePtr = 0;
LABEL_185:
          _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_FAULT, "ERROR: CFRunLoopRun Exiting.", valuePtr, 2u);
        }
      }

      mDNS_StartExit();
      mDNS_FinalExit();
      v54 = 0;
      goto LABEL_187;
    }

    v53 = pthread_mutex_init(&stru_100164CC8, 0);
    if (v53)
    {
      v54 = v53;
      v55 = mDNSLogCategory_Default;
      strerror(v53);
      LogMsgWithLevel(v55, OS_LOG_TYPE_DEFAULT, "pthread_mutex_init() failed error %d (%s)", v56, v57, v58, v59, v60, v54);
LABEL_187:
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "%s exiting", v61, v62, v63, v64, v65, "mDNSResponder mDNSResponder-2881.40.18 (Oct 11 2025 00:04:16)");
      goto LABEL_188;
    }

    pthread_mutex_lock(&stru_100164CC8);
    *v412 = 0;
    if (socketpair(1, 1, 0, v412) == -1)
    {
      v54 = *__error();
      v77 = mDNSLogCategory_Default;
      strerror(v54);
      LogMsgWithLevel(v77, OS_LOG_TYPE_DEFAULT, "socketpair() failed errno %d (%s)", v78, v79, v80, v81, v82, v54);
      v72 = &unk_100178000;
      v73 = &unk_100178000;
      goto LABEL_178;
    }

    dword_100164D0C = v412[0];
    KQueueSet(v412[1], 1u, -1, &main_wakeKQEntry);
    getpid();
    v74 = sandbox_check();
    switch(v74)
    {
      case -1:
        v74 = *__error();
        break;
      case 0:
        v83 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_140;
          }

          *valuePtr = 0;
          v76 = "mDNSResponder is not sandboxed (check for com.apple.private.sandbox.profile:embedded entitlement)";
        }

        else
        {
          v83 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_140;
          }

          *valuePtr = 0;
          v76 = "mDNSResponder is not sandboxed (check for com.apple.private.sandbox.profile:embedded entitlement)";
        }

        v86 = v83;
        v87 = OS_LOG_TYPE_FAULT;
LABEL_138:
        v88 = 2;
LABEL_139:
        _os_log_impl(&_mh_execute_header, v86, v87, v76, valuePtr, v88);
LABEL_140:
        mDNSStorage[0] = &PlatformStorage;
        dword_10016D220 = 0;
        byte_10016D224 = 0;
        byte_10016D225[0] = NoMulticastAdvertisements == 0;
        byte_10016D226 = 0;
        dword_10016D228 = 1;
        *&word_10016D22C = 0;
        word_10016D234 = 0;
        *(mDNSStorage + &loc_100009420) = 0;
        dword_10016D264 = 0;
        qword_10016D240 = 0;
        *&dword_10016D248 = 0;
        off_10016D238 = mDNS_StatusCallback;
        *(&dword_10016D24C + 3) = 0;
        *valuePtr = 0;
        v89 = mach_timebase_info(valuePtr);
        if (v89)
        {
          v54 = v89;
LABEL_176:
          v72 = &unk_100178000;
          v73 = &unk_100178000;
LABEL_177:
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Daemon start: mDNS_Init failed %d", v90, v91, v92, v93, v94, v54);
          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Daemon start: mDNSDaemonInitialize failed", v128, v129, v130, v131, v132, v400);
          goto LABEL_178;
        }

        mDNSPlatformClockDivisor = 1000000 * *&valuePtr[4] / *valuePtr;
        v95 = arc4random();
        dword_10016D254 = v95;
        v103 = v95 + mDNSPlatformRawTime(v95, v96, v97, v98, v99, v100, v101, v102);
        dword_10016D258 = 0;
        dword_10016D25C = v103;
        dword_10016D260 = v103;
        LODWORD(qword_10016D268) = v103;
        HIDWORD(qword_10016D268) = v103;
        v104 = v103 + 939524096;
        *&dword_10016D270 = vdupq_n_s32(v103 + 939524096);
        dword_10016D280 = v103 + 939524096;
        dword_10016D284 = v103 + 939524096;
        dword_10016D2D0 = v103 + 939524096;
        *&dword_10016D288 = (v103 + 939524096);
        byte_10016D290 = 0;
        qword_10016D2AC = 0;
        unk_10016D2C0 = 0;
        dword_10016D2C8 = 0;
        qword_10016D294 = 0;
        unk_10016D29C = 0;
        dword_10016D2A4 = 0;
        *&qword_10016D300 = 0u;
        *(&xmmword_10016D2D8 + 12) = 0u;
        unk_10016D2F4 = 0u;
        unk_10016D2D4 = 0u;
        qword_10016D314 = 0xA00000000;
        bzero(&qword_10016D320, 0xFA0uLL);
        v105 = (&dword_10016D254 + "/System/Library/Frameworks/Security.framework/Security");
        v106 = xmmword_10010D310;
        v107 = xmmword_10010D320;
        v108 = 500;
        v109 = vdupq_n_s64(0x1F3uLL);
        v110 = vdupq_n_s64(4uLL);
        do
        {
          if (vuzp1_s16(vmovn_s64(vcgtq_u64(v109, v107)), *v106.i8).u8[0])
          {
            *(v105 - 3) = v104;
          }

          if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1F3uLL), *&v107)), *&v106).i8[2])
          {
            *(v105 - 2) = v104;
          }

          if (vuzp1_s16(*&v106, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1F3uLL), *&v106))).i32[1])
          {
            *(v105 - 1) = v104;
            *v105 = v104;
          }

          v106 = vaddq_s64(v106, v110);
          v107 = vaddq_s64(v107, v110);
          v105 += 4;
          v108 -= 4;
        }

        while (v108);
        v111 = xmmword_10010D320;
        v112 = vdupq_n_s64(1uLL);
        v113 = vdupq_n_s64(2uLL);
        v114 = 146;
        v115 = rrcachestorage;
        do
        {
          v116 = vaddq_s64(v111, v112);
          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x92uLL), v111)).u8[0])
          {
            *v115 = &rrcachestorage[28 * v116.i64[0]];
          }

          if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x92uLL), *&v111)).i32[1])
          {
            v115[28] = &rrcachestorage[28 * v116.i64[1]];
          }

          v111 = vaddq_s64(v111, v113);
          v115 += 56;
          v114 -= 2;
        }

        while (v114);
        qword_10016CD40 = 0;
        qword_10016D320 = rrcachestorage;
        dword_10016D308 += 146;
        *(&dword_10016D308 + &loc_100002774 + 4) = 0;
        *(&dword_10016D308 + &loc_1000027B4 + 4) = 0;
        *(&dword_10016D308 + &loc_1000028B8) = 0;
        *(&dword_10016D308 + &loc_1000029C0) = 0;
        *(&dword_10016D308 + &loc_100002AC0) = 0;
        bzero(&dword_10016D308 + &loc_100001798, 0xFA1uLL);
        v117 = &dword_10016D308 + &loc_100003054 + 4;
        v117[32] = 0;
        *v117 = 0u;
        *(v117 + 1) = 0u;
        xmmword_100170388 = 0u;
        dword_100170398 = 0;
        dword_1001703A0 = v103 + 939524096;
        dword_1001703A4 = v103 + 939524096;
        *(&dword_10016D308 + &loc_100003668) = 0;
        *(&dword_10016D308 + &loc_100003768) = 0;
        qword_1001703F0 = 0;
        v118 = (&dword_10016D308 + &loc_1000030A8);
        *v118 = 0u;
        v118[1] = 0u;
        v118[2] = 0u;
        *(v118 + 44) = 0u;
        *(&dword_10016D308 + &loc_100004CCC) = 0;
        *(&dword_10016D308 + &loc_100004CD4) = 0;
        *(&dword_10016D308 + &loc_100003868) = 0u;
        dword_1001704CC = -1;
        dword_100170B80 = 0;
        xmmword_100170B98 = 0u;
        dword_100170BA8 = 0;
        dword_100170BAC = v103 + 939524096;
        dword_100170BB0 = 0;
        dword_100170BB4 = arc4random();
        dword_100170BB8 = arc4random();
        dword_100170BBC = arc4random();
        qword_100170BC0 = 0;
        dword_100170BC8 = 0;
        dword_100170BCC = v103;
        *(&dword_10016D308 + &loc_1000038C8) = 0;
        v119 = &dword_10016D308 + &loc_1000039B8;
        *v119 = 0u;
        v119[16] = 0;
        *(&dword_10016D308 + &loc_1000039C8 + 2) = 0;
        *(&dword_10016D308 + &loc_1000039D8) = 0;
        *(&dword_10016D308 + &loc_100004CC0) = 0;
        qword_100170CD8 = 0;
        xmmword_100170CE8 = 0u;
        xmmword_100170CF8 = 0u;
        qword_100170D08 = 0;
        dword_100170D18 = 0;
        *(&dword_10016D30C + &loc_100003A10) = 0;
        *(&dword_10016D308 + &loc_100003A18) = 0u;
        *valuePtr = 0;
        v120 = malloc_type_calloc(1uLL, 0x18uLL, 0xB7BBD98FuLL);
        if (!v120)
        {
          goto LABEL_398;
        }

        v121 = v120;
        v122 = &_dnssec_obj_trust_anchor_manager_kind;
        v120[1] = &_dnssec_obj_trust_anchor_manager_kind;
        do
        {
          v123 = v122[2];
          if (v123)
          {
            v123(v121);
          }

          v122 = *v122;
        }

        while (v122);
        ++*v121;
        *valuePtr = 0;
        v124 = dnssec_obj_trust_anchor_create_with_ds_data();
        v125 = *valuePtr;
        if (!*valuePtr)
        {
          v126 = dnssec_obj_trust_anchor_manager_add_anchor(v121, v124);
          *valuePtr = v126;
          if (!v126)
          {
            if (is_apple_internal_build_s_once != -1)
            {
              dispatch_once(&is_apple_internal_build_s_once, &__block_literal_global_6175);
            }

            if (is_apple_internal_build_is_internal)
            {
              v127 = dnssec_obj_trust_anchor_create_with_ds_data();
              v125 = *valuePtr;
              if (!*valuePtr)
              {
                v125 = dnssec_obj_trust_anchor_manager_add_anchor(v121, v127);
                *valuePtr = v125;
                if (!v124)
                {
                  goto LABEL_172;
                }

                goto LABEL_171;
              }
            }

            else
            {
              v127 = 0;
              v125 = *valuePtr;
            }

            if (!v124)
            {
              goto LABEL_172;
            }

            goto LABEL_171;
          }

          v125 = v126;
        }

        v127 = 0;
        if (!v124)
        {
LABEL_172:
          if (v127)
          {
            ref_count_obj_release(v127);
          }

          qword_100172038 = v121;
          if (v125)
          {
            v54 = -65537;
            goto LABEL_176;
          }

          v134 = v103 + 1800000;
          if ((v103 + 1800000) <= 1)
          {
            v134 = 1;
          }

          dword_10016D2BC = v134;
          v120 = malloc_type_calloc(1uLL, 0x130uLL, 0x547C59EAuLL);
          if (v120)
          {
            v135 = v120;
            v136 = "\x05local";
            do
            {
              if (!v136)
              {
                break;
              }

              v137 = *v136;
              if (v137 > 0x3F)
              {
                break;
              }

              if (!*v136)
              {
                v138 = v136 - "\x05local" + 1;
                if (v138 <= 0x100u)
                {
                  memcpy(v120, "\x05local", v138);
                  goto LABEL_201;
                }

                break;
              }

              v136 += v137 + 1;
            }

            while (v136 - "\x05local" <= 255);
            *v120 = 0;
LABEL_201:
            *&byte_10016D225[&loc_100003740 + 3] = v135;
            byte_10016D226 = byte_10016D225[0] == 0;
            v428 = 0u;
            v429 = 0u;
            v426 = 0u;
            v427 = 0u;
            v424 = 0u;
            v425 = 0u;
            v422 = 0u;
            v423 = 0u;
            v420 = 0u;
            v421 = 0u;
            v418 = 0u;
            v419 = 0u;
            v416 = 0u;
            v417 = 0u;
            *__s = 0u;
            v415 = 0u;
            mDNSMacOSXSystemBuildNumber(__s);
            if (MEMORY[0xFFFFFC021])
            {
              SameDomainLabelPointer = vectorSameDomainLabel;
              v144 = "setSameDomainLabelPointer: using vector code";
            }

            else
            {
              v144 = "setSameDomainLabelPointer: using scalar code";
            }

            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, v144, v139, v140, v141, v142, v143, v399);
            HelperQueue = dispatch_queue_create("com.apple.mDNSResponder.HelperQueue", 0);
            if (!HelperQueue)
            {
              v54 = -65539;
              LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "dispatch_queue_create: Helper queue NULL", v145, v146, v147, v148, v149, v401);
              goto LABEL_287;
            }

            if (iOSVers)
            {
              v150 = 2;
            }

            else
            {
              v150 = 4;
            }

            if (OSXVers)
            {
              v151 = 1;
            }

            else
            {
              v151 = v150;
            }

            byte_10017039C = v151;
            v152 = 100;
            do
            {
              memset(valuePtr, 0, 64);
              GetUserSpecifiedLocalHostName(valuePtr);
              if (valuePtr[0])
              {
                break;
              }

              usleep(0xC350u);
              --v152;
            }

            while (v152);
            LOBYTE(xmmword_10016FA80) = 0;
            GetRandomUUIDLocalHostname(byte_10016FBC0);
            *v413 = 0x200000006;
            v411 = 32;
            v153 = HINFO_HWstring_buffer;
            if (sysctl(v413, 2u, HINFO_HWstring_buffer, &v411, 0, 0))
            {
              v153 = HINFO_HWstring;
            }

            else
            {
              HINFO_HWstring = HINFO_HWstring_buffer;
            }

            if (strchr(HINFO_HWstring_buffer, 44))
            {
              v154 = strcspn(v153, "0123456789");
            }

            else
            {
              v154 = strlen(v153);
            }

            HINFO_HWstring_prefixlen = v154;
            v155 = socket(2, 2, 17);
            v156 = v155;
            if (v155 > 2)
            {
              *valuePtr = 0xE9140000uLL;
              valuePtr[1] = 2;
              v170 = bind(v155, valuePtr, 0x10u);
              close(v156);
              if (!v170)
              {
                byte_10016D224 = 1;
LABEL_225:
                v171 = strlen(HINFO_HWstring);
                v172 = strlen(__s);
                v173 = v172;
                if (v172 + v171 <= 0xFD)
                {
                  byte_10016FCC8 = v171;
                  byte_10016FDC8 = v172;
                  memcpy(&unk_10016FCC9, HINFO_HWstring, v171);
                  memcpy(&unk_10016FDC9, __s, v173);
                }

                v174 = mDNSStorage[0];
                *(mDNSStorage[0] + 8) = -5868;
                v174 += 8;
                *(v174 + 8) = mDNSStorage;
                *(v174 + 16) = -1;
                *(v174 + 24) = myKQSocketCallBack;
                *(v174 + 32) = v174;
                *(v174 + 40) = "IPv4 UDP packet reception";
                *(v174 + 48) = -1;
                *(v174 + 56) = myKQSocketCallBack;
                *(v174 + 64) = v174;
                *(v174 + 72) = "IPv6 UDP packet reception";
                v175 = SetupSocket(v174, 59668, 2, 0);
                if (v175)
                {
                  v176 = v175;
                  v177 = mDNSLogCategory_Default;
                  v178 = *__error();
                  v179 = __error();
                  strerror(*v179);
                  LogMsgWithLevel(v177, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInit_setup: SetupSocket(AF_INET) failed error %d errno %d (%s)", v180, v181, v182, v183, v184, v176);
                }

                v185 = SetupSocket(mDNSStorage[0] + 8, 59668, 30, 0);
                if (v185)
                {
                  v186 = v185;
                  v187 = mDNSLogCategory_Default;
                  v188 = *__error();
                  v189 = __error();
                  strerror(*v189);
                  LogMsgWithLevel(v187, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInit_setup: SetupSocket(AF_INET6) failed error %d errno %d (%s)", v190, v191, v192, v193, v194, v186);
                }

                *&v440.sa_len = 0;
                *&v440.sa_data[6] = 0;
                v410 = 16;
                if (getsockname(*(mDNSStorage[0] + 24), &v440, &v410) < 0)
                {
                  v195 = mDNSLogCategory_Default;
                  v196 = *__error();
                  v197 = __error();
                  strerror(*v197);
                  LogMsgWithLevel(v195, OS_LOG_TYPE_DEFAULT, "getsockname v4 error %d (%s)", v198, v199, v200, v201, v202, v196);
                }

                else
                {
                  word_10016D22C = *v440.sa_data;
                }

                v203 = mDNSStorage[0];
                v204 = *(mDNSStorage[0] + 56);
                if ((v204 & 0x80000000) == 0)
                {
                  memset(valuePtr, 0, 28);
                  v407[0] = 28;
                  if (getsockname(v204, valuePtr, v407) < 0)
                  {
                    v205 = mDNSLogCategory_Default;
                    v206 = *__error();
                    v207 = __error();
                    strerror(*v207);
                    LogMsgWithLevel(v205, OS_LOG_TYPE_DEFAULT, "getsockname v6 error %d (%s)", v208, v209, v210, v211, v212, v206);
                  }

                  else
                  {
                    word_10016D22E = *&valuePtr[2];
                  }

                  v203 = mDNSStorage[0];
                }

                *v203 = 0;
                *(v203 + 108) = 0;
                *(v203 + 172) = 0;
                *(v203 + 364) = 0;
                *(v203 + 428) = 0;
                *(v203 + 236) = 0;
                *(v203 + 300) = 0;
                *(v203 + 492) = 0;
                *(v203 + 500) = 0;
                *(v203 + 600) = 0;
                *(v203 + 608) = 0;
                *(v203 + 688) = 257;
                *(v203 + 692) = 0;
                *(v203 + 696) = 0;
                NetworkChangedKey_IPv4 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv4);
                NetworkChangedKey_IPv6 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv6);
                NetworkChangedKey_Hostnames = SCDynamicStoreKeyCreateHostNames(0);
                NetworkChangedKey_Computername = SCDynamicStoreKeyCreateComputerName(0);
                NetworkChangedKey_DNS = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetDNS);
                NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, &stru_1001541B8, 0);
                NetworkChangedKey_StateInterfacePrefix = NetworkInterfaceEntity;
                if (!NetworkChangedKey_IPv4 || !NetworkChangedKey_IPv6 || !NetworkChangedKey_Hostnames || !NetworkChangedKey_Computername || !NetworkChangedKey_DNS || !NetworkInterfaceEntity)
                {
                  v54 = -65539;
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SCDynamicStore string setup failed", v214, v215, v216, v217, v218, v401);
                  v72 = &unk_100178000;
                  v73 = &unk_100178000;
                  goto LABEL_288;
                }

                *valuePtr = 0;
                memset(&valuePtr[16], 0, 24);
                *&valuePtr[8] = mDNSStorage;
                v219 = SCDynamicStoreCreate(0, @"mDNSResponder:WatchForNetworkChanges", NetworkChanged, valuePtr);
                Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                v221 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv4);
                v222 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv6);
                v223 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                v224 = v223;
                if (v219)
                {
                  if (Mutable && v221 && v222 && v223)
                  {
                    CFArrayAppendValue(Mutable, NetworkChangedKey_IPv4);
                    CFArrayAppendValue(Mutable, NetworkChangedKey_IPv6);
                    CFArrayAppendValue(Mutable, NetworkChangedKey_Hostnames);
                    CFArrayAppendValue(Mutable, NetworkChangedKey_Computername);
                    CFArrayAppendValue(Mutable, NetworkChangedKey_DNS);
                    CFArrayAppendValue(Mutable, @"Setup:/Network/DynamicDNS");
                    CFArrayAppendValue(Mutable, @"State:/IOKit/PowerManagement/CurrentSettings");
                    CFArrayAppendValue(v224, v221);
                    CFArrayAppendValue(v224, v222);
                    CFArrayAppendValue(v224, @"State:/Network/Interface/[^/]+/AirPort");
                    if (SCDynamicStoreSetNotificationKeys(v219, Mutable, v224))
                    {
                      RunLoopSource = SCDynamicStoreCreateRunLoopSource(0, v219, 0);
                      *(mDNSStorage[0] + 512) = RunLoopSource;
                      v226 = &unk_100178000;
                      if (RunLoopSource)
                      {
                        Main = CFRunLoopGetMain();
                        CFRunLoopAddSource(Main, *(mDNSStorage[0] + 512), kCFRunLoopDefaultMode);
                        SCDynamicStoreSetDisconnectCallBack();
                        *(mDNSStorage[0] + 504) = v219;
                        v228 = 1;
LABEL_261:
                        CFRelease(v224);
                        v252 = v228;
LABEL_262:
                        if (v222)
                        {
                          CFRelease(v222);
                        }

                        if (v221)
                        {
                          CFRelease(v221);
                        }

                        if (Mutable)
                        {
                          CFRelease(Mutable);
                        }

                        if ((v252 & 1) == 0)
                        {
                          v54 = -1;
                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInit_setup: WatchForNetworkChanges failed %d", v237, v238, v239, v240, v241, -1);
                          goto LABEL_287;
                        }

                        v253 = socket(32, 3, 1);
                        v254 = v253;
                        *(mDNSStorage[0] + 528) = v253;
                        if (v253 < 0)
                        {
                          v293 = -65539;
                          v294 = mDNSLogCategory_Default;
                          v295 = *__error();
                          v296 = __error();
                          strerror(*v296);
                          LogMsgWithLevel(v294, OS_LOG_TYPE_DEFAULT, "WatchForSysEvents: socket failed error %d errno %d (%s)", v297, v298, v299, v300, v301, v254);
                        }

                        else
                        {
                          *&valuePtr[8] = 2;
                          *valuePtr = 0x100000001;
                          v255 = ioctl(v253, 0x800C6502uLL);
                          if ((v255 & 0x80000000) == 0)
                          {
                            v256 = mDNSStorage[0];
                            *(mDNSStorage[0] + 536) = SysEventCallBack;
                            *(v256 + 544) = mDNSStorage;
                            *(v256 + 552) = "System Event Notifier";
                            KQueueSet(*(v256 + 528), 1u, -1, (v256 + 536));
                            v257 = time(0);
                            SystemWakeForNetworkAccess();
                            HIBYTE(dword_10016D2A4) = 0;
                            myGetIfAddrs();
                            UpdateInterfaceList(v257);
                            SetupActiveInterfaces(v257);
                            mDNS_Lock_(mDNSStorage, "mDNSPlatformInit_setup", 8267);
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Note: SetDomainSecrets: no keychain support", v258, v259, v260, v261, v262, valuePtr);
                            SetLocalDomains(v263, v264, v265, v266, v267, v268, v269, v270, v403);
                            mDNS_Unlock_(mDNSStorage, "mDNSPlatformInit_setup", 8270);
                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Note: Compiled without SnowLeopard Fine-Grained Power Management support", v271, v272, v273, v274, v275, v404);
                            v276 = IORegisterForSystemPower(mDNSStorage, (mDNSStorage[0] + 560), PowerChanged, (mDNSStorage[0] + 572));
                            *(mDNSStorage[0] + 568) = v276;
                            if (v276)
                            {
                              v282 = CFRunLoopGetMain();
                              v283 = IONotificationPortGetRunLoopSource(*(mDNSStorage[0] + 560));
                              CFRunLoopAddSource(v282, v283, kCFRunLoopDefaultMode);
                              v284 = HINFO_HWstring;
                              if (!strncasecmp(HINFO_HWstring, "Xserve", 6uLL) || !strncasecmp(v284, "RackMac", 7uLL))
                              {
                                v290 = 85;
                                v291 = 84;
                                v292 = 25;
                              }

                              else
                              {
                                if (!strncasecmp(v284, "MacPro", 6uLL))
                                {
                                  v290 = 85;
                                  v291 = 84;
                                }

                                else
                                {
                                  if (strncasecmp(v284, "PowerMac", 8uLL))
                                  {
                                    if (!strncasecmp(v284, "iMac", 4uLL))
                                    {
                                      v290 = 78;
                                      v291 = 77;
                                      v292 = 30;
                                    }

                                    else if (!strncasecmp(v284, "Macmini", 7uLL))
                                    {
                                      v290 = 74;
                                      v291 = 73;
                                      v292 = 33;
                                    }

                                    else if (!strncasecmp(v284, "TimeCapsule", 0xBuLL))
                                    {
                                      v290 = 70;
                                      v291 = 10;
                                      v292 = 34;
                                    }

                                    else if (!strncasecmp(v284, "AirPort", 7uLL))
                                    {
                                      v290 = 70;
                                      v291 = 10;
                                      v292 = 35;
                                    }

                                    else
                                    {
                                      if (strncasecmp(v284, "MacBook", 7uLL))
                                      {
                                        v72 = &unk_100178000;
                                        v73 = &unk_100178000;
                                        if (strncasecmp(v284, "PowerBook", 9uLL))
                                        {
                                          goto LABEL_349;
                                        }

                                        v290 = 72;
                                        v291 = 71;
                                        v292 = 37;
LABEL_348:
                                        SPMetricPortability = v292;
                                        SPMetricMarginalPower = v291;
                                        SPMetricTotalPower = v290;
LABEL_349:
                                        if (mDNS_LoggingEnabled == 1)
                                        {
                                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "HW_MODEL: %.*s (%s) Portability %d Marginal Power %d Total Power %d Features %d", v285, v286, v287, v288, v289, HINFO_HWstring_prefixlen);
                                        }

                                        SSLqueue = dispatch_get_global_queue(0, 0);
                                        if (!SSLqueue)
                                        {
                                          LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "dispatch_queue_create: SSL queue NULL", v374, v375, v376, v377, v378, v402);
                                        }

                                        v409 = 16777343;
                                        RegisterLocalOnlyAddressRecord("\tlocalhost", 1, &v409, 4u);
                                        *v407 = 0;
                                        v408 = 0x100000000000000;
                                        RegisterLocalOnlyAddressRecord("\tlocalhost", 28, v407, 0x10u);
                                        if (is_apple_internal_build_s_once != -1)
                                        {
                                          dispatch_once(&is_apple_internal_build_s_once, &__block_literal_global_6175);
                                        }

                                        if (is_apple_internal_build_is_internal)
                                        {
                                          mDNSMacOSXUpdateEtcHosts_internal();
                                        }

                                        else
                                        {
                                          RegisterLocalOnlyAddressRecord("\rbroadcasthost", 1, &onesIPv4Addr, 4u);
                                        }

                                        v438 = 0u;
                                        v439 = 0u;
                                        v436 = 0u;
                                        v437 = 0u;
                                        v434 = 0u;
                                        v435 = 0u;
                                        v432 = 0u;
                                        v433 = 0u;
                                        v431 = 0u;
                                        memset(valuePtr, 0, sizeof(valuePtr));
                                        AppendDNSNameString(valuePtr, "1.0.0.127.in-addr.arpa.", v379, v380, v381, v382, v383, v384);
                                        CreatePTRRecord(valuePtr);
                                        valuePtr[0] = 0;
                                        AppendDNSNameString(valuePtr, "1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa.", v385, v386, v387, v388, v389, v390);
                                        CreatePTRRecord(valuePtr);
                                        if (dnssd_analytics_init_sInitAnalyticsOnce != -1)
                                        {
                                          dispatch_once(&dnssd_analytics_init_sInitAnalyticsOnce, &__block_literal_global_7376);
                                        }

                                        if (_os_feature_enabled_impl() && mdns_trust_checks_init_s_once != -1)
                                        {
                                          dispatch_once(&mdns_trust_checks_init_s_once, &__block_literal_global_7662);
                                        }

                                        v406[0] = _NSConcreteStackBlock;
                                        v406[1] = 0x40000000;
                                        v406[2] = __mDNSPlatformInit_setup_block_invoke;
                                        v406[3] = &__block_descriptor_tmp_414;
                                        v406[4] = mDNSStorage;
                                        v391 = v406;
                                        *valuePtr = _NSConcreteStackBlock;
                                        *&valuePtr[8] = 3221225472;
                                        *&valuePtr[16] = __util_managed_network_change_handler_block_invoke;
                                        *&valuePtr[24] = &unk_100153DE8;
                                        *&valuePtr[32] = v391;
                                        v392 = v391;
                                        dispatch_async(&_dispatch_main_q, valuePtr);

                                        if (unicast_assist_init_s_once != -1)
                                        {
                                          dispatch_once(&unicast_assist_init_s_once, &__block_literal_global_267);
                                        }

                                        dword_10016D228 = 0;
                                        if (off_10016D238)
                                        {
                                          mDNS_Lock_(mDNSStorage, "mDNSCoreInitComplete", 19355);
                                          mDNS_VerifyLockState("Drop Lock", 0, dword_10016D248, ++dword_10016D24C, "mDNSCoreInitComplete", 19356);
                                          off_10016D238(mDNSStorage, 0);
                                          mDNS_VerifyLockState("Reclaim Lock", 0, dword_10016D248, dword_10016D24C, "mDNSCoreInitComplete", 19358);
                                          --dword_10016D24C;
                                          mDNS_Unlock_(mDNSStorage, "mDNSCoreInitComplete", 19359);
                                        }

                                        if (!&_D2DInitialize)
                                        {
                                          goto LABEL_384;
                                        }

                                        CFRunLoopGetMain();
                                        v393 = D2DInitialize();
                                        v394 = mDNSLogCategory_D2D;
                                        if (mDNS_SensitiveLoggingEnableCount)
                                        {
                                          v395 = mDNSLogCategory_D2D == v73[435];
                                        }

                                        else
                                        {
                                          v395 = 1;
                                        }

                                        v396 = v395;
                                        if (v393)
                                        {
                                          v397 = v393;
                                          if (v396)
                                          {
                                            if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_ERROR))
                                            {
                                              *valuePtr = 67109120;
                                              *&valuePtr[4] = v397;
LABEL_383:
                                              _os_log_impl(&_mh_execute_header, v394, OS_LOG_TYPE_ERROR, "D2DInitialiize failed: %u", valuePtr, 8u);
                                            }
                                          }

                                          else
                                          {
                                            v394 = mDNSLogCategory_D2D_redacted;
                                            if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_ERROR))
                                            {
                                              *valuePtr = 67109120;
                                              *&valuePtr[4] = v397;
                                              goto LABEL_383;
                                            }
                                          }

LABEL_384:
                                          v54 = 0;
                                          goto LABEL_288;
                                        }

                                        if (v396)
                                        {
                                          if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
                                          {
                                            *valuePtr = 0;
LABEL_387:
                                            _os_log_impl(&_mh_execute_header, v394, OS_LOG_TYPE_DEFAULT, "D2DInitialize succeeded", valuePtr, 2u);
                                          }
                                        }

                                        else
                                        {
                                          v394 = mDNSLogCategory_D2D_redacted;
                                          if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
                                          {
                                            *valuePtr = 0;
                                            goto LABEL_387;
                                          }
                                        }

                                        v54 = 0;
LABEL_288:
                                        uDNS_SetupDNSConfig();
                                        if (DPCFeatureEnabled_sOnce != -1)
                                        {
                                          dispatch_once(&DPCFeatureEnabled_sOnce, &__block_literal_global_3326);
                                        }

                                        if (DPCFeatureEnabled_sEnabled)
                                        {
                                          bzero(&DPCBrowse, 0x2B8uLL);
                                          mDNS_StartBrowse_internal(&DPCBrowse, "\x06_local\t_dnssd-dp\x04_tcp", "\x05local", 0, 0, 0, 0, DPCBrowseHandler, 0);
                                          dword_10016256C = -1;
                                        }

                                        if (v54)
                                        {
                                          goto LABEL_177;
                                        }

                                        if (_os_feature_enabled_impl())
                                        {
                                          v322 = 31;
                                          do
                                          {
                                            mDNS_StatusCallback(mDNSStorage, -65790, v316, v317, v318, v319, v320, v321);
                                            --v322;
                                          }

                                          while (v322);
                                        }

                                        v323 = CFMachPortCreate(0, SignalCallback, 0, 0);
                                        v324 = CFMachPortCreateRunLoopSource(0, v323, 0);
                                        signal_port = CFMachPortGetPort(v323);
                                        v325 = CFRunLoopGetMain();
                                        CFRunLoopAddSource(v325, v324, kCFRunLoopDefaultMode);
                                        if (v324)
                                        {
                                          CFRelease(v324);
                                        }

                                        if (!init_log_utility_service_log_utility_listener)
                                        {
                                          mach_service = xpc_connection_create_mach_service("com.apple.mDNSResponder.log_utility", 0, 1uLL);
                                          init_log_utility_service_log_utility_listener = mach_service;
                                          if (mach_service && xpc_get_type(mach_service) == &_xpc_type_connection)
                                          {
                                            log_utility_server_queue = dispatch_queue_create("com.apple.mDNSResponder.log_utility_server_queue", 0);
                                            xpc_connection_set_event_handler(init_log_utility_service_log_utility_listener, &__block_literal_global_7545);
                                            xpc_connection_resume(init_log_utility_service_log_utility_listener);
                                          }

                                          else
                                          {
                                            v339 = mDNSLogCategory_XPC;
                                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == v73[435])
                                            {
                                              if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_ERROR))
                                              {
                                                goto LABEL_299;
                                              }

                                              *valuePtr = 0;
                                            }

                                            else
                                            {
                                              v339 = mDNSLogCategory_XPC_redacted;
                                              if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_ERROR))
                                              {
                                                goto LABEL_299;
                                              }

                                              *valuePtr = 0;
                                            }

                                            _os_log_impl(&_mh_execute_header, v339, OS_LOG_TYPE_ERROR, "Error Creating XPC Listener for Log Utility Server!", valuePtr, 2u);
                                          }
                                        }

LABEL_299:
                                        v326 = launch_activate_socket("Listeners", &launchd_fds, &launchd_fds_count);
                                        if (v326)
                                        {
                                          v327 = v326;
                                          v328 = mDNSLogCategory_Default;
                                          strerror(v326);
                                          LogMsgWithLevel(v328, OS_LOG_TYPE_DEFAULT, "launch_activate_socket() failed error %d (%s)", v329, v330, v331, v332, v333, v327);
                                        }

                                        v334 = launchd_fds;
                                        v335 = launchd_fds_count;
                                        memset(valuePtr, 0, 106);
                                        if (launchd_fds)
                                        {
                                          if (launchd_fds_count)
                                          {
                                            do
                                            {
                                              v337 = *v334++;
                                              v336 = v337;
                                              if ((v337 & 0x80000000) == 0 && !uds_socket_setup(v336))
                                              {
                                                goto LABEL_341;
                                              }
                                            }

                                            while (--v335);
                                          }

LABEL_319:
                                          memset(__s, 0, sizeof(__s));
                                          if (getrlimit(8, __s) < 0)
                                          {
                                            goto LABEL_331;
                                          }

                                          if (setrlimit(8, __s) < 0)
                                          {
                                            my_perror("ERROR: Unable to set maximum file descriptor limit");
                                          }

                                          if (getrlimit(8, __s) < 0)
                                          {
                                            goto LABEL_331;
                                          }

                                          v343 = vdupq_n_s64(0x2800uLL);
                                          v440 = vbslq_s8(vcgtq_u64(*__s, v343), *__s, v343);
                                          v344 = *&__s[8] >> 11 >= 5uLL && *__s >> 11 > 4uLL;
                                          if (!v344 && setrlimit(8, &v440) < 0)
                                          {
                                            my_perror("ERROR: Unable to set maximum file descriptor limit");
                                          }

                                          if (getrlimit(8, __s) < 0)
                                          {
LABEL_331:
                                            my_perror("ERROR: Unable to get file descriptor limit");
                                          }

                                          else
                                          {
                                            mDNS_GetDomains(mDNSStorage + &loc_100003494 + 4, 2, 0, -2, AutomaticBrowseDomainChange, 0);
                                            RegisterLocalOnlyDomainEnumPTR(mDNSStorage, "\x05local", 3);
                                            RegisterLocalOnlyDomainEnumPTR(mDNSStorage, "\x05local", 0);
                                            AddAutoBrowseDomain(0, "\x05local");
                                            udsserver_handle_configchange(mDNSStorage);
                                          }

                                          mDNSMacOSXNetworkChanged(v345, v346, v347, v348, v349, v350, v351, v352);
                                          UpdateDebugState(v353, v354, v355, v356, v357, v358, v359, v360, v402);
                                          v405 = 0;
                                          v361 = pthread_create(&v405, 0, KQueueLoop, mDNSStorage);
                                          v54 = v361;
                                          if (v361)
                                          {
                                            v362 = mDNSLogCategory_Default;
                                            strerror(v361);
                                            LogMsgWithLevel(v362, OS_LOG_TYPE_DEFAULT, "pthread_create() failed error %d (%s)", v363, v364, v365, v366, v367, v54);
                                          }

LABEL_178:
                                          pthread_mutex_unlock(&stru_100164CC8);
                                          if (v54)
                                          {
                                            goto LABEL_187;
                                          }

                                          goto LABEL_179;
                                        }

                                        listenfd = socket(1, 1, 0);
                                        if (listenfd < 0)
                                        {
                                          v368 = "ERROR: socket(AF_DNSSD, SOCK_STREAM, 0); failed";
                                        }

                                        else
                                        {
                                          memset(&valuePtr[2], 0, 104);
                                          v340 = umask(0);
                                          unlink("/var/run/mDNSResponder");
                                          v341 = 0;
                                          *valuePtr = 362;
                                          while (1)
                                          {
                                            valuePtr[v341 + 2] = aVarRunMdnsresp[v341];
                                            if (v341 == 22)
                                            {
                                              break;
                                            }

                                            ++v341;
                                          }

                                          v342 = bind(listenfd, valuePtr, 0x6Au);
                                          umask(v340);
                                          if ((v342 & 0x80000000) == 0)
                                          {
                                            if (uds_socket_setup(listenfd))
                                            {
                                              goto LABEL_319;
                                            }

LABEL_341:
                                            my_perror("ERROR: udsserver_init");
                                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Daemon start: udsserver_init failed", v369, v370, v371, v372, v373, v402);
                                            v54 = -1;
                                            goto LABEL_178;
                                          }

                                          v368 = "ERROR: bind(listenfd, (struct sockaddr *) &laddr, sizeof(laddr)); failed";
                                        }

                                        my_perror(v368);
                                        goto LABEL_341;
                                      }

                                      v290 = 72;
                                      v291 = 71;
                                      v292 = 37;
                                    }

                                    v72 = &unk_100178000;
                                    v73 = &unk_100178000;
                                    goto LABEL_348;
                                  }

                                  v290 = 83;
                                  v291 = 82;
                                }

                                v292 = 27;
                              }

                              v72 = &unk_100178000;
                              v73 = &unk_100178000;
                              goto LABEL_348;
                            }

                            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInit_setup: IORegisterForSystemPower failed", v277, v278, v279, v280, v281, v402);
                            v54 = -1;
LABEL_287:
                            v72 = &unk_100178000;
                            v73 = &unk_100178000;
                            goto LABEL_288;
                          }

                          v307 = v255;
                          v308 = mDNSLogCategory_Default;
                          v309 = *__error();
                          v310 = __error();
                          strerror(*v310);
                          LogMsgWithLevel(v308, OS_LOG_TYPE_DEFAULT, "WatchForSysEvents: SIOCSKEVFILT failed error %d errno %d (%s)", v311, v312, v313, v314, v315, v307);
                          close(*(mDNSStorage[0] + 528));
                          *(mDNSStorage[0] + 528) = -1;
                          v293 = -65537;
                        }

                        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInit_setup: WatchForSysEvents failed %d", v302, v303, v304, v305, v306, v293);
                        v54 = v293;
                        goto LABEL_287;
                      }

                      v242 = v219;
                      v243 = "SCDynamicStoreCreateRunLoopSource failed: %s";
                    }

                    else
                    {
                      v242 = v219;
                      v243 = "SCDynamicStoreSetNotificationKeys failed: %s";
                      v226 = &unk_100178000;
                    }

                    v244 = *(v226 + 434);
                    v245 = SCError();
                    v246 = SCErrorString(v245);
                    LogMsgWithLevel(v244, OS_LOG_TYPE_DEFAULT, v243, v247, v248, v249, v250, v251, v246);
                    v219 = v242;
                  }

                  CFRelease(v219);
                }

                else
                {
                  v229 = mDNSLogCategory_Default;
                  v230 = SCError();
                  v231 = SCErrorString(v230);
                  LogMsgWithLevel(v229, OS_LOG_TYPE_DEFAULT, "SCDynamicStoreCreate failed: %s", v232, v233, v234, v235, v236, v231);
                }

                v228 = 0;
                v252 = 0;
                if (!v224)
                {
                  goto LABEL_262;
                }

                goto LABEL_261;
              }
            }

            else
            {
              v157 = mDNSLogCategory_Default;
              v158 = *__error();
              v159 = __error();
              strerror(*v159);
              LogMsgWithLevel(v157, OS_LOG_TYPE_DEFAULT, "mDNSPlatformInit_CanReceiveUnicast: socket error %d errno %d (%s)", v160, v161, v162, v163, v164, v156);
            }

            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "No unicast UDP responses", v165, v166, v167, v168, v169, v401);
            goto LABEL_225;
          }

LABEL_398:
          __break(1u);
          return v120;
        }

LABEL_171:
        ref_count_obj_release(v124);
        goto LABEL_172;
      case 1:
        v75 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_140;
          }

          *valuePtr = 0;
          v76 = "mDNSResponder is sandboxed via com.apple.private.sandbox.profile:embedded entitlement";
        }

        else
        {
          v75 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_140;
          }

          *valuePtr = 0;
          v76 = "mDNSResponder is sandboxed via com.apple.private.sandbox.profile:embedded entitlement";
        }

        v86 = v75;
        v87 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_138;
    }

    v84 = v74;
    v85 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_140;
      }

      *valuePtr = 134217984;
      *&valuePtr[4] = v84;
      v76 = "Couldn't determine if mDNSResponder is sandboxed because of sandbox_check() error: %{mdns:err}ld";
    }

    else
    {
      v85 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_140;
      }

      *valuePtr = 134217984;
      *&valuePtr[4] = v84;
      v76 = "Couldn't determine if mDNSResponder is sandboxed because of sandbox_check() error: %{mdns:err}ld";
    }

    v86 = v85;
    v87 = OS_LOG_TYPE_FAULT;
    v88 = 12;
    goto LABEL_139;
  }

  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSResponder cannot be run as root !! Exiting..", v21, v22, v23, v24, v25, v399);
  v54 = -1;
LABEL_188:
  LODWORD(v120) = v54;
  return v120;
}

void LogMsgWithLevel(NSObject *a1, os_log_type_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  memset(__b, 0, sizeof(__b));
  mDNS_vsnprintf(__b, 512, a3, &a9);
  if (!a1)
  {
    a1 = mDNSLogCategory_Default;
  }

  if (os_log_type_enabled(a1, a2))
  {
    *buf = 136380675;
    v12 = __b;
    _os_log_impl(&_mh_execute_header, a1, a2, "%{private}s", buf, 0xCu);
  }
}

uint64_t mDNS_vsnprintf(char *__b, int a2, char *a3, int *a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = (a2 - 1);
  if (a2 == 1)
  {
    v7 = 0;
    goto LABEL_307;
  }

  v6 = a3;
  v7 = 0;
  v8 = *a3;
  v108 = a2 - 2;
  while (2)
  {
    if (v8 != 37)
    {
      if (!v8)
      {
        goto LABEL_307;
      }

      *__b++ = v8;
      v7 = (v7 + 1);
      if (v7 >= v5)
      {
        goto LABEL_307;
      }

      goto LABEL_221;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    memset(v112, 0, sizeof(v112));
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = *++v6;
          v12 = *v6;
          if (v12 <= 0x2A)
          {
            break;
          }

          switch(v12)
          {
            case '+':
              v13 = 2;
              break;
            case '-':
              v13 = 1;
              break;
            case '0':
              v13 = 4;
              break;
            default:
              goto LABEL_26;
          }

          v11 |= v13;
        }

        if (v12 != 32)
        {
          break;
        }

        v9 = 32;
      }

      if (v12 != 35)
      {
        break;
      }

      ++v10;
    }

    if (v12 != 42)
    {
LABEL_26:
      if (v12 - 48 > 9)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        do
        {
          v16 = v8 + 10 * v16 - 48;
          v17 = *++v6;
          v8 = v17;
        }

        while ((v17 - 48) < 0xA);
      }

      goto LABEL_31;
    }

    v14 = a4;
    a4 += 2;
    v15 = *v14;
    if (v15 >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = -v15;
    }

    v11 |= v15 >> 31;
    v8 = *++v6;
LABEL_31:
    if (v8 == 46)
    {
      v18 = v6 + 1;
      v8 = v6[1];
      if (v8 == 42)
      {
        v19 = a4;
        a4 += 2;
        v20 = *v19;
        v8 = v6[2];
        v18 = v6 + 2;
      }

      else if ((v8 - 48) > 9)
      {
        v20 = 0;
      }

      else
      {
        v20 = 0;
        do
        {
          v20 = v8 + 10 * v20 - 48;
          v21 = *++v18;
          v8 = v21;
        }

        while ((v21 - 48) < 0xA);
      }

      LOBYTE(v11) = v11 | 8;
      v6 = v18;
    }

    else
    {
      v20 = 0;
    }

    if (v11)
    {
      v22 = v11 & 0xFB;
    }

    else
    {
      v22 = v11;
    }

    while (1)
    {
      v23 = 32;
      if (v8 <= 104)
      {
        break;
      }

      if (v8 > 109)
      {
        if (v8 <= 114)
        {
          if (v8 == 110)
          {
            v43 = a4;
            a4 += 2;
            v44 = *v43;
            if ((v22 & 0x10) != 0)
            {
              *v44 = v7;
            }

            else if ((v22 & 0x20) != 0)
            {
              *v44 = v7;
            }

            else
            {
              *v44 = v7;
            }

            goto LABEL_222;
          }

          if (v8 == 111)
          {
            v39 = a4;
            a4 += 2;
            if ((v22 & 0x20) != 0)
            {
              v40 = *v39;
            }

            else
            {
              v40 = *v39;
            }

            if ((v22 & 0x10) != 0)
            {
              v51 = v40;
            }

            else
            {
              v51 = v40;
            }

            if ((v22 & 4) != 0)
            {
              v52 = v16;
            }

            else
            {
              v52 = v20;
            }

            if (v52 <= 1)
            {
              v52 = 1;
            }

            if ((v22 & 8) != 0)
            {
              v52 = v20;
            }

            if (v52 >= 0x12B)
            {
              v20 = 299;
            }

            else
            {
              v20 = v52;
            }

            if (v51)
            {
              v53 = -1;
              v54 = v114;
              do
              {
                v55 = v51;
                *(v54 - 2) = v51 & 7 | 0x30;
                v31 = v54 - 2;
                v56 = v53++;
                --v54;
                v57 = v51 > 7;
                v51 >>= 3;
              }

              while (v57);
              LODWORD(v28) = v56 + 2;
              if (v10 && (v55 & 7) != 0)
              {
                *(v54 - 2) = 48;
                LODWORD(v28) = v53 + 2;
                v31 = v54 - 2;
              }
            }

            else
            {
              LODWORD(v28) = 0;
              v31 = &v113;
            }

            if (v28 >= v20)
            {
              v29 = 1;
              v8 = 111;
            }

            else
            {
              v77 = v20 + ~v28;
              v31 += ~v77;
              memset(v31, 48, v77 + 1);
              v29 = 1;
              v8 = 111;
              LODWORD(v28) = v20;
            }

            goto LABEL_177;
          }

          if (v8 != 112)
          {
            goto LABEL_133;
          }

          v22 |= 0x28u;
          v20 = 16;
LABEL_76:
          v25 = "0123456789ABCDEF";
          if ((v22 & 0x20) == 0)
          {
LABEL_77:
            v34 = a4;
            a4 += 2;
            v27 = *v34;
            goto LABEL_78;
          }

LABEL_64:
          v26 = a4;
          a4 += 2;
          v27 = *v26;
LABEL_78:
          if ((v22 & 0x10) != 0)
          {
            v27 = v27;
          }

          v35 = v16 - 2;
          if (!v10)
          {
            v35 = v16;
          }

          if ((v22 & 4) == 0)
          {
            v35 = v20;
          }

          if (v35 <= 1)
          {
            v35 = 1;
          }

          if ((v22 & 8) != 0)
          {
            v35 = v20;
          }

          if (v35 >= 0x12B)
          {
            v20 = 299;
          }

          else
          {
            v20 = v35;
          }

          LODWORD(v28) = 0;
          if (v27)
          {
            v31 = &v113;
            do
            {
              *--v31 = v25[v27 & 0xF];
              LODWORD(v28) = v28 + 1;
              v36 = v27 >= 0x10;
              v27 >>= 4;
            }

            while (v36);
          }

          else
          {
            v31 = &v113;
          }

          if (v28 < v20)
          {
            v37 = v20 + ~v28;
            v31 += ~v37;
            v38 = v10;
            memset(v31, 48, v37 + 1);
            v10 = v38;
            LODWORD(v28) = v20;
          }

          if (v10)
          {
            *(v31 - 2) = 48;
            v31 -= 2;
            v31[1] = v8;
            LODWORD(v28) = v28 + 2;
          }

          goto LABEL_176;
        }

        if (v8 != 115)
        {
          if (v8 == 117)
          {
            v41 = a4;
            a4 += 2;
            if ((v22 & 0x20) != 0)
            {
              v42 = *v41;
            }

            else
            {
              v42 = *v41;
            }

            v47 = 0;
            if ((v22 & 0x10) != 0)
            {
              v42 = v42;
            }

            v8 = 117;
            goto LABEL_158;
          }

          if (v8 != 120)
          {
            goto LABEL_133;
          }

          v25 = "0123456789abcdef";
          if ((v22 & 0x20) == 0)
          {
            goto LABEL_77;
          }

          goto LABEL_64;
        }

        v45 = a4;
        a4 += 2;
        v31 = *v45;
        if (!*v45)
        {
          LODWORD(v28) = 8;
          v31 = "<<NULL>>";
          goto LABEL_287;
        }

        if (v10)
        {
          if (v10 == 1)
          {
            v78 = *v31++;
            LODWORD(v28) = v78;
            goto LABEL_287;
          }

          if (v10 == 2)
          {
            if (*v31)
            {
              v28 = v112;
              goto LABEL_275;
            }

            v112[0] = 46;
            v28 = &v112[1];
            if (*v31)
            {
              while (1)
              {
LABEL_275:
                memset(v111, 0, 253);
                if (*v31 >= 0x40u)
                {
                  v99 = *v31;
                  v92 = v28;
                  goto LABEL_285;
                }

                if (v28 + *v31 >= &v112[254])
                {
                  break;
                }

                ConvertDomainLabelToCString_withescape(v31, v111, 92);
                v28 += mDNS_snprintf(v28);
                v90 = &v31[*v31];
                v91 = v90[1];
                v31 = v90 + 1;
                if (!v91)
                {
                  goto LABEL_286;
                }
              }

              v92 = v28;
LABEL_285:
              LODWORD(v28) = v28 + mDNS_snprintf(v92);
            }

LABEL_286:
            v31 = v112;
            LODWORD(v28) = v28 - v112;
LABEL_287:
            v29 = 1;
            v8 = 115;
            if ((v22 & 8) == 0 || v28 <= v20)
            {
              goto LABEL_177;
            }

            if (!v20)
            {
              LODWORD(v28) = 0;
              goto LABEL_177;
            }

            LODWORD(v28) = v20;
            while ((v31[v28] & 0xC0) == 0x80)
            {
              v29 = 1;
              v8 = 115;
              LODWORD(v28) = v28 - 1;
              if (!v28)
              {
                goto LABEL_177;
              }
            }
          }

          else
          {
            LODWORD(v28) = 0;
          }
        }

        else
        {
          if ((v22 & 8) == 0)
          {
            LODWORD(v28) = -1;
            do
            {
              LODWORD(v28) = v28 + 1;
            }

            while (v31[v28]);
            goto LABEL_287;
          }

          if (v20)
          {
            v89 = 0;
            while (v31[v89])
            {
              if (v20 == ++v89)
              {
                LODWORD(v89) = v20;
                break;
              }
            }
          }

          else
          {
            LODWORD(v89) = 0;
          }

          v28 = v89;
          while (v28)
          {
            v93 = v28--;
            v94 = v93[v31 - 1];
            if ((v94 & 0xFFFFFFC0) != 0xFFFFFF80)
            {
              if (v94 < 0xFFFFFFC0)
              {
                LODWORD(v28) = v93;
              }

              else if ((v89 - v28) <= 6 && (v94 >> (7 - (v89 - v28))) == 254)
              {
                LODWORD(v28) = v89;
              }

              goto LABEL_287;
            }
          }
        }

        v29 = 1;
        v8 = 115;
        goto LABEL_177;
      }

      if (v8 != 108)
      {
        if (v8 != 105)
        {
          goto LABEL_133;
        }

        goto LABEL_73;
      }

LABEL_54:
      v22 |= v23;
      v24 = *++v6;
      v8 = v24;
    }

    if (v8 > 96)
    {
      if (v8 <= 103)
      {
        if (v8 != 97)
        {
          if (v8 == 99)
          {
            v46 = a4;
            a4 += 2;
            v112[299] = *v46;
            LODWORD(v28) = 1;
            v31 = &v112[299];
            goto LABEL_176;
          }

          if (v8 != 100)
          {
LABEL_133:
            v31 = v112;
            LODWORD(v28) = mDNS_snprintf(v112);
            goto LABEL_176;
          }

LABEL_73:
          v32 = a4;
          a4 += 2;
          if ((v22 & 0x20) != 0)
          {
            v33 = *v32;
          }

          else
          {
            v33 = *v32;
          }

          if ((v22 & 0x10) != 0)
          {
            v33 = v33;
          }

          if ((v22 & 2) != 0)
          {
            v9 = 43;
          }

          if (v33 < 0)
          {
            v47 = 45;
          }

          else
          {
            v47 = v9;
          }

          if (v33 >= 0)
          {
            v42 = v33;
          }

          else
          {
            v42 = -v33;
          }

LABEL_158:
          v58 = v16 - (v47 != 0);
          if ((v22 & 4) == 0)
          {
            v58 = v20;
          }

          if (v58 <= 1)
          {
            v58 = 1;
          }

          if ((v22 & 8) != 0)
          {
            v58 = v20;
          }

          if (v58 >= 0x12B)
          {
            v20 = 299;
          }

          else
          {
            v20 = v58;
          }

          LODWORD(v28) = 0;
          if (v42)
          {
            v31 = &v113;
            do
            {
              *--v31 = (v42 % 0xA) | 0x30;
              LODWORD(v28) = v28 + 1;
              v36 = v42 >= 0xA;
              v42 /= 0xAuLL;
            }

            while (v36);
          }

          else
          {
            v31 = &v113;
          }

          if (v28 < v20)
          {
            v59 = v20 + ~v28;
            v31 += ~v59;
            v60 = v47;
            memset(v31, 48, v59 + 1);
            v47 = v60;
            LODWORD(v28) = v20;
          }

          if (v47)
          {
            *--v31 = v47;
            LODWORD(v28) = v28 + 1;
          }

LABEL_176:
          v29 = 1;
LABEL_177:
          if (v28 < v16 && (v22 & 1) == 0)
          {
            LODWORD(v61) = v16 + ~v28;
            if (v5 <= v7 + 1)
            {
              v62 = v7 + 1;
            }

            else
            {
              v62 = v5;
            }

            v109 = v20;
            v63 = v22;
            v64 = v5;
            v65 = v29;
            v66 = v62 + ~v7;
            if (v61 >= v66)
            {
              v61 = v66;
            }

            else
            {
              v61 = v61;
            }

            memset(__b, 32, v61 + 1);
            v29 = v65;
            v5 = v64;
            v22 = v63;
            v20 = v109;
            do
            {
              ++__b;
              v7 = (v7 + 1);
              if (v7 >= v5)
              {
                goto LABEL_307;
              }
            }

            while (v28 < --v16);
          }

          v67 = v5 - v7;
          if (v29)
          {
            if (v28 <= v67)
            {
              if (v28)
              {
                goto LABEL_211;
              }

              v67 = 0;
            }

            else if (v67)
            {
              while ((v31[v67] & 0xC0) == 0x80)
              {
                if (!--v67)
                {
                  goto LABEL_213;
                }
              }

              LODWORD(v28) = v67;
LABEL_211:
              v72 = 0;
              v67 = v28;
              do
              {
                *__b++ = v31[v72++];
              }

              while (v28 != v72);
            }
          }

          else
          {
            v68 = __b;
            if ((v22 & 8) != 0)
            {
              v68 = __b;
              if (v20)
              {
                v69 = &__b[v67];
                v68 = __b;
                if (__b < v69)
                {
                  v70 = 0;
                  v68 = __b;
                  do
                  {
                    v71 = v31[v70];
                    if (v70)
                    {
                      *v68++ = 32;
                    }

                    if (v68 < v69)
                    {
                      *v68++ = a0123456789abcd[v71 >> 4];
                    }

                    if (v68 < v69)
                    {
                      *v68++ = a0123456789abcd[v71 & 0xF];
                    }

                    ++v70;
                  }

                  while (v70 < v20 && v68 < v69);
                }
              }
            }

            v67 = v68 - __b;
            __b = v68;
          }

LABEL_213:
          v7 = v67 + v7;
          if (v7 >= v5)
          {
            goto LABEL_307;
          }

          v73 = v16 - v67;
          if (v16 > v67)
          {
            LODWORD(v74) = v16 + ~v67;
            if (v74 >= v108 - v7)
            {
              v74 = (v108 - v7);
            }

            else
            {
              v74 = v74;
            }

            memset(__b, 32, v74 + 1);
            do
            {
              ++__b;
              v7 = (v7 + 1);
              if (v7 >= v5)
              {
                goto LABEL_307;
              }
            }

            while (--v73);
          }

LABEL_221:
          v75 = v8;
          v8 = 0;
          if (v75)
          {
LABEL_222:
            v76 = *++v6;
            v8 = v76;
          }

          continue;
        }

        v48 = a4;
        a4 += 2;
        v49 = *v48;
        if (!v49)
        {
          v29 = 1;
          LODWORD(v28) = 8;
          v8 = 97;
          v31 = "<<NULL>>";
          goto LABEL_177;
        }

        if (v10)
        {
          v50 = *v49;
          if (!*v49)
          {
            v31 = v112;
            goto LABEL_268;
          }

          if (v50 != 6)
          {
            if (v50 == 4)
            {
              v49 += 4;
LABEL_242:
              v102 = v49[2];
              v104 = v49[3];
              v31 = v112;
              v96 = *v49;
              v100 = v49[1];
              LODWORD(v28) = mDNS_snprintf(v112);
              v29 = 1;
              v20 = 4;
              v8 = 97;
              goto LABEL_177;
            }

            v97 = *v49;
            v31 = v112;
LABEL_268:
            LODWORD(v28) = mDNS_snprintf(v112);
            v20 = 0;
LABEL_281:
            v29 = 1;
LABEL_282:
            v8 = 97;
            goto LABEL_177;
          }

          v49 += 4;
LABEL_244:
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = v49 + 1;
          v85 = 7;
          while (1)
          {
            if (__rev16(*(v84 - 1)))
            {
              if (v85 <= v81)
              {
                goto LABEL_254;
              }

              v83 = 0;
            }

            else
            {
              if (!v83)
              {
                v82 = v79;
              }

              if (v83 + 1 > v81)
              {
                v81 = v83 + 1;
                v80 = v82;
              }

              ++v83;
            }

            v84 += 2;
            --v85;
            ++v79;
            if (v85 == -1)
            {
LABEL_254:
              v86 = 7;
              v31 = &v113;
              while (1)
              {
                if (v81 >= 2 && v81 + v80 - 1 == v86)
                {
                  if (v81 + v80 == 8)
                  {
                    *--v31 = 58;
                  }

                  --v31;
                  v86 = v80;
                }

                else
                {
                  v87 = v49[2 * v86 + 1] | (v49[2 * v86] << 8);
                  do
                  {
                    v88 = v31;
                    *--v31 = a0123456789abcd[v87 & 0xF];
                    v57 = v87 > 0xF;
                    v87 >>= 4;
                  }

                  while (v57);
                  if (!v86)
                  {
LABEL_265:
                    LODWORD(v28) = &v113 - v31;
                    v29 = 1;
                    v20 = 16;
                    goto LABEL_282;
                  }

                  v31 = v88 - 2;
                }

                *v31 = 58;
                if (--v86 < 0)
                {
                  goto LABEL_265;
                }
              }
            }
          }
        }

        switch(v20)
        {
          case 4u:
            goto LABEL_242;
          case 6u:
            v106 = v49[4];
            v107 = v49[5];
            v103 = v49[2];
            v105 = v49[3];
            v31 = v112;
            v98 = *v49;
            v101 = v49[1];
            break;
          case 0x10u:
            goto LABEL_244;
          default:
            v31 = v112;
            break;
        }

        LODWORD(v28) = mDNS_snprintf(v112);
        goto LABEL_281;
      }

      v23 = 16;
      goto LABEL_54;
    }

    break;
  }

  if (v8 > 75)
  {
    if (v8 != 76)
    {
      if (v8 != 88)
      {
        goto LABEL_133;
      }

      goto LABEL_76;
    }

    goto LABEL_54;
  }

  if (v8 != 37)
  {
    if (v8 != 72)
    {
      goto LABEL_133;
    }

    LODWORD(v28) = 0;
    v29 = 0;
    v30 = a4;
    a4 += 2;
    v31 = *v30;
    goto LABEL_177;
  }

  *__b++ = 37;
  v7 = (v7 + 1);
  if (v7 < v5)
  {
    LODWORD(v28) = 0;
    v29 = 1;
    v31 = &v113;
    goto LABEL_177;
  }

LABEL_307:
  *__b = 0;
  return v7;
}

uint64_t KQueueSet(int a1, uint16_t a2, int16_t a3, void *a4)
{
  v6.ident = a1;
  v6.filter = a3;
  v6.flags = a2;
  v6.fflags = 0;
  v6.data = 0;
  v6.udata = a4;
  v4 = kevent(KQueueFD, &v6, 1, 0, 0, 0);
  result = 0;
  if (v4 < 0)
  {
    return *__error();
  }

  return result;
}

void mDNSMacOSXSystemBuildNumber(void *a1)
{
  v15 = 0;
  v14 = 0;
  buffer[0] = *"<Unknown>";
  memset(&buffer[1], 0, 240);
  v32[0] = *"<Unknown>";
  memset(&v32[1], 0, 240);
  v28 = xmmword_10010D82C;
  v29 = unk_10010D83C;
  v30 = xmmword_10010D84C;
  v31 = unk_10010D85C;
  v24 = xmmword_10010D7EC;
  v25 = unk_10010D7FC;
  v26 = xmmword_10010D80C;
  v27 = unk_10010D81C;
  v20 = xmmword_10010D7AC;
  v21 = unk_10010D7BC;
  v22 = xmmword_10010D7CC;
  v23 = unk_10010D7DC;
  *v16 = *"<Unknown>";
  v17 = unk_10010D77C;
  v18 = xmmword_10010D78C;
  v19 = unk_10010D79C;
  v2 = _CFCopySystemVersionDictionary();
  if (!v2)
  {
    goto LABEL_10;
  }

  v8 = v2;
  Value = CFDictionaryGetValue(v2, _kCFSystemVersionProductNameKey);
  v10 = CFDictionaryGetValue(v8, _kCFSystemVersionProductVersionKey);
  v11 = CFDictionaryGetValue(v8, _kCFSystemVersionBuildVersionKey);
  if (Value)
  {
    CFStringGetCString(Value, buffer, 256, 0x8000100u);
  }

  if (v10)
  {
    CFStringGetCString(v10, v32, 256, 0x8000100u);
  }

  if (v11 && CFStringGetCString(v11, v16, 256, 0x8000100u))
  {
    sscanf(v16, "%d%c%d", &v15 + 4, &v14, &v15);
  }

  CFRelease(v8);
  if (!HIDWORD(v15))
  {
LABEL_10:
    HIDWORD(v15) = 13;
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "Note: No Major Build Version number found; assuming 13", v3, v4, v5, v6, v7, v13);
  }

  if (a1)
  {
    mDNS_snprintf(a1);
  }

  if ((buffer[0] & 0xDF) == 0x4D)
  {
    v12 = &OSXVers;
  }

  else
  {
    v12 = &iOSVers;
  }

  *v12 = HIDWORD(v15);
}

unint64_t mDNSPlatformRawTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (mDNSPlatformClockDivisor)
  {
    v13 = mach_absolute_time();
    if ((v13 - mDNSPlatformRawTime_last_mach_absolute_time) < 0)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformRawTime: last_mach_absolute_time %08X%08X", v8, v9, v10, v11, v12, mDNSPlatformRawTime_last_mach_absolute_time);
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformRawTime: this_mach_absolute_time %08X%08X", v14, v15, v16, v17, v18, v13);
      mDNSPlatformRawTime_last_mach_absolute_time = v13;
      NotifyOfElusiveBug("mach_absolute_time went backwards!", "This error occurs from time to time, often on newly released hardware, and usually the exact cause is different in each instance.\r\rPlease file a new Radar bug report with the title “mach_absolute_time went backwards” and assign it to Radar Component “Kernel” Version “X”.", v19, v20, v21, v22, v23, v24);
    }

    mDNSPlatformRawTime_last_mach_absolute_time = v13;
    return v13 / mDNSPlatformClockDivisor;
  }

  else
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "mDNSPlatformRawTime called before mDNSPlatformTimeInit", a4, a5, a6, a7, a8, v26);
    return 0;
  }
}

void GetUserSpecifiedLocalHostName(_BYTE *a1)
{
  v2 = SCDynamicStoreCopyLocalHostName(0);
  if (v2)
  {
    v3 = v2;
    mDNSDomainLabelFromCFString(v2, a1);

    CFRelease(v3);
  }
}

uint64_t SetupSocket(uint64_t a1, uint64_t a2, int a3, _WORD *a4)
{
  if (a3 == 2)
  {
    v8 = 16;
  }

  else
  {
    v8 = 48;
  }

  v86 = 255;
  v87 = 1;
  if (a3 == 2)
  {
    v9 = 24;
  }

  else
  {
    v9 = 56;
  }

  v85 = 0;
  *(a1 + 80) = 0;
  v10 = socket(a3, 2, 17);
  v11 = v10;
  if ((v10 & 0x80000000) == 0)
  {
    *v88 = 900;
    setsockopt(v10, 0xFFFF, 4230, v88, 4u);
    if (a2 == 59668)
    {
      v12 = setsockopt(v11, 0xFFFF, 4356, &v87, 4u);
      if (v12 < 0)
      {
        v33 = v12;
        v34 = "setsockopt - SO_RECV_ANYIF";
        goto LABEL_77;
      }

      v13 = setsockopt(v11, 0xFFFF, 512, &v87, 4u);
      if ((v13 & 0x80000000) == 0)
      {
        *v88 = 1;
        if (setsockopt(v11, 0xFFFF, 0x10000, v88, 4u) == -1 && mDNS_LoggingEnabled)
        {
          v14 = mDNSLogCategory_Default;
          v15 = __error();
          v16 = strerror(*v15);
          LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, "SetupSocket: SO_NOWAKEFROMSLEEP failed %s", v17, v18, v19, v20, v21, v16);
        }

        *v88 = xmmword_10010D380;
        if (!setsockopt(v11, 0xFFFF, 4360, v88, 0x10u))
        {
          goto LABEL_28;
        }

        v22 = *__error();
        v23 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
LABEL_27:
            v35 = strerror(v22);
            *buf = 136446210;
            v91 = v35;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "SetupSocket: Attributing mDNS traffic to com.apple.datausage.dns.multicast failed: %{public}s", buf, 0xCu);
          }
        }

        else
        {
          v23 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_27;
          }
        }

LABEL_28:
        v32 = 0;
LABEL_29:
        if (!setsockopt(v11, 0xFFFF, 0x40000, &v87, 4u))
        {
          goto LABEL_36;
        }

        v36 = *__error();
        v37 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_36;
          }
        }

        else
        {
          v37 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_36;
          }
        }

        v38 = strerror(v36);
        *v88 = 136446210;
        *&v88[4] = v38;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "SetupSocket: setting SO_TIMESTAMP_CONTINUOUS failed: %{public}s", v88, 0xCu);
LABEL_36:
        if (a3 == 2)
        {
          v39 = setsockopt(v11, 0, 7, &v87, 4u);
          if (v39 < 0)
          {
            v33 = v39;
            v34 = "setsockopt - IP_RECVDSTADDR";
          }

          else
          {
            v40 = setsockopt(v11, 0, 20, &v87, 4u);
            if (v40 < 0)
            {
              v33 = v40;
              v34 = "setsockopt - IP_RECVIF";
            }

            else
            {
              v41 = setsockopt(v11, 0, 24, &v87, 4u);
              if (v41 < 0)
              {
                v33 = v41;
                v34 = "setsockopt - IP_RECVTTL";
              }

              else
              {
                v42 = setsockopt(v11, 0, 4, &v86, 4u);
                if (v42 < 0)
                {
                  v33 = v42;
                  v34 = "setsockopt - IP_TTL";
                }

                else
                {
                  v43 = setsockopt(v11, 0, 10, &v86, 4u);
                  if ((v43 & 0x80000000) == 0)
                  {
                    *v88 = 512;
                    *&v88[8] = 0;
                    *&v88[2] = a2;
                    if (v32)
                    {
                      v44 = 16777440;
                    }

                    else
                    {
                      v44 = 0;
                    }

                    *&v88[4] = v44;
                    v45 = v11;
                    v46 = 16;
LABEL_46:
                    v47 = bind(v45, v88, v46);
                    if (v47)
                    {
                      v33 = v47;
                      v34 = "bind";
                      goto LABEL_77;
                    }

                    if (a4)
                    {
                      *a4 = *&v88[2];
                    }

                    goto LABEL_71;
                  }

                  v33 = v43;
                  v34 = "setsockopt - IP_MULTICAST_TTL";
                }
              }
            }
          }
        }

        else
        {
          if (a3 != 30)
          {
LABEL_71:
            v64 = (a1 + v9);
            v65 = fcntl(v11, 3, 0, v82, v83, v84);
            fcntl(v11, 4, v65 | 4u);
            fcntl(v11, 2, 1);
            *(a1 + v8) = v11;
            *v64 = myKQSocketCallBack;
            v64[1] = a1;
            v64[2] = "UDP packet reception";
            KQueueSet(v11, 1u, -1, (a1 + v9));
            return 0;
          }

          if (v32)
          {
            if (a4)
            {
              *a4 = 0;
            }

            close(v11);
            return 0;
          }

          v48 = setsockopt(v11, 41, 61, &v87, 4u);
          if (v48 < 0)
          {
            v33 = v48;
            v34 = "setsockopt - IPV6_RECVPKTINFO";
          }

          else
          {
            v49 = setsockopt(v11, 41, 37, &v87, 4u);
            if (v49 < 0)
            {
              v33 = v49;
              v34 = "setsockopt - IPV6_RECVHOPLIMIT";
            }

            else
            {
              v50 = setsockopt(v11, 41, 27, &v87, 4u);
              if (v50 < 0)
              {
                v33 = v50;
                v34 = "setsockopt - IPV6_V6ONLY";
              }

              else
              {
                v51 = setsockopt(v11, 41, 4, &v86, 4u);
                if (v51 < 0)
                {
                  v33 = v51;
                  v34 = "setsockopt - IPV6_UNICAST_HOPS";
                }

                else
                {
                  v52 = setsockopt(v11, 41, 10, &v86, 4u);
                  if (v52 < 0)
                  {
                    v33 = v52;
                    v34 = "setsockopt - IPV6_MULTICAST_HOPS";
                  }

                  else
                  {
                    v53 = setsockopt(v11, 41, 11, &v87, 4u);
                    if ((v53 & 0x80000000) == 0)
                    {
                      v54 = setsockopt(v11, 41, 42, &v85, 4u);
                      if ((v54 & 0x80000000) != 0)
                      {
                        v55 = v54;
                        v56 = mDNSLogCategory_Default;
                        v57 = *__error();
                        v58 = __error();
                        v83 = v57;
                        v84 = strerror(*v58);
                        v82 = v55;
                        LogMsgWithLevel(v56, OS_LOG_TYPE_DEFAULT, "SetupSocket: setsockopt - IPV6_USE_MIN_MTU: IP6PO_MINMTU_DISABLE socket %d err %d errno %d (%s)", v59, v60, v61, v62, v63, v11);
                      }

                      *v88 = 7708;
                      *&v88[2] = a2;
                      *&v88[4] = 0;
                      *&v88[8] = in6addr_any;
                      v89 = 0;
                      v45 = v11;
                      v46 = 28;
                      goto LABEL_46;
                    }

                    v33 = v53;
                    v34 = "setsockopt - IPV6_MULTICAST_LOOP";
                  }
                }
              }
            }
          }
        }

LABEL_77:
        v66 = *__error();
        if (strcmp(v34, "bind") || !a2 || a2 == 59668)
        {
          v67 = mDNSLogCategory_Default;
          strerror(v66);
          LogMsgWithLevel(v67, OS_LOG_TYPE_DEFAULT, "%s skt %d port %d error %d errno %d (%s)", v68, v69, v70, v71, v72, v34);
        }

        v79 = strcmp(v34, "bind") == 0 && v66 == 48;
        if (v79)
        {
          v80 = 48;
        }

        else
        {
          v80 = v33;
        }

        if (a2 == 59668 && v79)
        {
          NotifyOfElusiveBug("Setsockopt SO_REUSEPORT failed", "Congratulations, you've reproduced an elusive bug.\rPlease contact the current assignee of <rdar://problem/3814904>.\rAlternatively, you can send email to radar-3387020@group.apple.com. (Note number is different.)\rIf possible, please leave your machine undisturbed so that someone can come to investigate the problem.", v73, v74, v75, v76, v77, v78);
          v80 = 48;
        }

        close(v11);
        return v80;
      }
    }

    else
    {
      if (a2 != 58900)
      {
        goto LABEL_28;
      }

      v13 = setsockopt(v11, 0xFFFF, 512, &v87, 4u);
      if ((v13 & 0x80000000) == 0)
      {
        v32 = 1;
        goto LABEL_29;
      }
    }

    v33 = v13;
    v34 = "setsockopt - SO_REUSEPORT";
    goto LABEL_77;
  }

  if (*__error() != 47)
  {
    v24 = mDNSLogCategory_Default;
    v25 = *__error();
    v26 = __error();
    strerror(*v26);
    LogMsgWithLevel(v24, OS_LOG_TYPE_DEFAULT, "SetupSocket: socket error %d errno %d (%s)", v27, v28, v29, v30, v31, v11);
  }

  return v11;
}

void SystemWakeForNetworkAccess()
{
  v0 = mDNSLogCategory_SPS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v1 = mDNSLogCategory_SPS == mDNSLogCategory_State;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (!os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v5 = 0;
    v2 = &v5;
    goto LABEL_10;
  }

  v0 = mDNSLogCategory_SPS_redacted;
  if (os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEBUG))
  {
    v4 = 0;
    v2 = &v4;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "SystemWakeForNetworkAccess: compile-time disabled", v2, 2u);
  }
}

__n128 UpdateInterfaceList(int a1)
{
  v1 = myGetIfAddrs_ifa;
  if (!myGetIfAddrs_ifa)
  {
    getifaddrs(&myGetIfAddrs_ifa);
    v1 = myGetIfAddrs_ifa;
  }

  memset(v244, 0, sizeof(v244));
  v2 = socket(30, 2, 0);
  v3 = &unk_100178000;
  if ((v2 & 0x80000000) != 0 && *__error() != 47)
  {
    v4 = mDNSLogCategory_Default;
    v5 = *__error();
    v6 = __error();
    v225 = v5;
    v226 = strerror(*v6);
    LogMsgWithLevel(v4, OS_LOG_TYPE_DEFAULT, "UpdateInterfaceList: InfoSocket error %d errno %d (%s)", v7, v8, v9, v10, v11, v2);
  }

  if (BYTE1(dword_10016D2A4) != 2 && v1 != 0)
  {
    v236 = v2;
    do
    {
      if (!*(v1 + 24))
      {
        goto LABEL_96;
      }

      v16 = *(v1 + 8);
      if (*v16 == 108 && v16[1] == 108 && v16[2] == 119)
      {
        v17 = mDNSLogCategory_State;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
        {
          nameEncoding[0] = 136446210;
          *&nameEncoding[1] = v16;
          v18 = v17;
          v19 = "isExcludedInterface: excluding %{public}s";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, v19, nameEncoding, 0xCu);
        }
      }

      else
      {
        if ((v2 & 0x80000000) != 0)
        {
          v29 = mDNSLogCategory_State;
          if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
          {
            nameEncoding[0] = 67109120;
            nameEncoding[1] = v2;
            v30 = v29;
            v31 = "isExcludedInterface: invalid socket FD passed: %d";
            goto LABEL_36;
          }

LABEL_37:
          v35 = *(v1 + 24);
          if (*(v35 + 1) == 18)
          {
            if (*(v35 + 4) == 6)
            {
              v36 = *(v35 + 6) == 6 && dword_10016D230 == 0;
              v37 = v36 && HIWORD(dword_10016D230) == 0;
              if (v37 && word_10016D234 == 0)
              {
                v39 = v35 + *(v35 + 5);
                v40 = *(v39 + 8);
                word_10016D234 = *(v39 + 12);
                dword_10016D230 = v40;
              }
            }

            if ((getExtendedFlags(*(v1 + 8)) & 0x100000) != 0 && (!AWDLInterfaceID || !WiFiAwareInterfaceID))
            {
              *nameEncoding = @"IOInterfaceName";
              *&values = 0;
              *&values = CFStringCreateWithCString(kCFAllocatorDefault, *(v1 + 8), 0x8000100u);
              *v247 = 0;
              *v247 = CFDictionaryCreate(kCFAllocatorDefault, nameEncoding, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              *nameEncoding = @"IOPropertyMatch";
              v41 = CFDictionaryCreate(kCFAllocatorDefault, nameEncoding, v247, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v41);
              if (values)
              {
                CFRelease(values);
                *&values = 0;
              }

              if (*v247)
              {
                CFRelease(*v247);
                *v247 = 0;
              }

              v2 = v236;
              if (MatchingService)
              {
                CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IO80211VirtualInterfaceRole", kCFAllocatorDefault, 0);
                if (CFProperty)
                {
                  v44 = CFProperty;
                  v45 = CFGetTypeID(CFProperty);
                  if (v45 == CFStringGetTypeID())
                  {
                    if (!AWDLInterfaceID && CFStringCompare(v44, @"AirLink", 0) == kCFCompareEqualTo)
                    {
                      v233 = *(v35 + 2);
                      AWDLInterfaceID = v233;
                      v46 = *(v3 + 434);
                      if (!mDNS_SensitiveLoggingEnableCount || v46 == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(*(v3 + 434), OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_68;
                        }
                      }

                      else
                      {
                        v46 = mDNSLogCategory_Default_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_68:
                          *buf = 134217984;
                          *&buf[4] = v233;
                          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "UpdateInterfaceList: AWDLInterfaceID = %lu", buf, 0xCu);
                        }
                      }
                    }

                    if (!WiFiAwareInterfaceID && CFStringCompare(v44, @"WiFi-Aware Discovery+Data", 0) == kCFCompareEqualTo)
                    {
                      v47 = *(v35 + 2);
                      WiFiAwareInterfaceID = v47;
                      v48 = *(v3 + 434);
                      if (!mDNS_SensitiveLoggingEnableCount || v48 == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(*(v3 + 434), OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_76;
                        }
                      }

                      else
                      {
                        v48 = mDNSLogCategory_Default_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_76:
                          *buf = 134217984;
                          *&buf[4] = v47;
                          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "UpdateInterfaceList: WiFiAwareInstanceID = %lu", buf, 0xCu);
                        }
                      }
                    }
                  }

                  CFRelease(v44);
                }

                IOObjectRelease(MatchingService);
              }
            }
          }

          if ((*(v1 + 16) & 1) == 0)
          {
            goto LABEL_96;
          }

          v49 = *(v1 + 24);
          v50 = *(v49 + 1);
          if (v50 != 30 && v50 != 2)
          {
            goto LABEL_96;
          }

          v52 = *(v1 + 32);
          if (v52)
          {
            v53 = *(v52 + 1);
            if (v53 == v50 || !v53)
            {
              if (if_nametoindex(*(v1 + 8)) <= 0)
              {
                v73 = *(v3 + 434);
                v74 = *(v1 + 8);
                v225 = if_nametoindex(v74);
                LogMsgWithLevel(v73, OS_LOG_TYPE_DEFAULT, "UpdateInterfaceList: if_nametoindex returned zero/negative value for %5s(%d)", v75, v76, v77, v78, v79, v74);
              }

              else
              {
                v70 = *(v1 + 24);
                v71 = *(v1 + 32);
                v72 = *(v70 + 1);
                *(v71 + 1) = v72;
                if (v72 != 30)
                {
                  if (v72 == 2 && *(v71 + 4) == -1)
                  {
                    goto LABEL_96;
                  }

LABEL_109:
                  v234 = if_nametoindex(*(v1 + 8));
                  v86 = *(v1 + 8);
                  *&buf[4] = 0;
                  *buf = 0;
                  v87 = CFStringCreateWithFormat(0, 0, @"State:/Network/Interface/%s/AirPort", v86);
                  if (v87)
                  {
                    v88 = v87;
                    v89 = SCDynamicStoreCopyValue(0, v87);
                    if (v89)
                    {
                      v90 = v89;
                      Value = CFDictionaryGetValue(v89, @"BSSID");
                      if (Value)
                      {
                        v92 = Value;
                        if (CFDataGetLength(Value) == 6)
                        {
                          v248.location = 0;
                          v248.length = 6;
                          CFDataGetBytes(v92, v248, buf);
                        }
                      }

                      CFRelease(v90);
                    }

                    CFRelease(v88);
                  }

                  v93 = *&buf[4];
                  v94 = *buf;
                  ExtendedFlags = getExtendedFlags(*(v1 + 8));
                  memset(nameEncoding, 0, sizeof(nameEncoding));
                  LODWORD(v238) = 0;
                  values = 0uLL;
                  v246 = 0;
                  if (SetupAddr(nameEncoding, *(v1 + 24), v96, v97, v98, v99, v100, v101) || SetupAddr(&values, *(v1 + 32), v102, v103, v104, v105, v106, v107))
                  {
                    goto LABEL_298;
                  }

                  v108 = v94 | (v93 << 32);
                  v230 = ExtendedFlags;
                  v231 = v108 >> 16;
                  v109 = mDNSStorage[0];
                  v110 = *mDNSStorage[0];
                  if (*mDNSStorage[0])
                  {
                    v111 = HIDWORD(v108);
                    v112 = v234;
                    while (1)
                    {
                      if (v112 == *(v110 + 3720))
                      {
                        v113 = mDNSSameAddress(nameEncoding, (v110 + 3560));
                        v112 = v234;
                        if (v113)
                        {
                          if (*(v110 + 3724) == v94 && *(v110 + 3726) == v231 && v111 == *(v110 + 3728))
                          {
                            break;
                          }
                        }
                      }

                      v109 = v110 + 3680;
                      v110 = *(v110 + 3680);
                      if (!v110)
                      {
                        goto LABEL_126;
                      }
                    }

                    if (*(v110 + 3696))
                    {
                      v176 = mDNSLogCategory_Default;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_253;
                        }
                      }

                      else
                      {
                        v176 = mDNSLogCategory_Default_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_253:
                          v184 = *(v1 + 8);
                          *buf = 136446979;
                          *&buf[4] = v184;
                          *&buf[12] = 2160;
                          *&buf[14] = 1752392040;
                          *&buf[22] = 1045;
                          *&buf[24] = 20;
                          *&buf[28] = 2101;
                          *&buf[30] = nameEncoding;
                          _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "Ignoring attempt to re-add interface (%{public}s, %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P) already marked as existing", buf, 0x26u);
                        }
                      }

LABEL_298:
                      v3 = &unk_100178000;
                      goto LABEL_96;
                    }

                    v177 = *(v1 + 8);
                    if (!v177)
                    {
                      goto LABEL_328;
                    }

                    v178 = (v110 + 3606);
                    v179 = 64;
                    while (1)
                    {
                      v180 = *v177;
                      *v178 = v180;
                      if (!v180)
                      {
                        break;
                      }

                      ++v178;
                      ++v177;
                      if (--v179 <= 1)
                      {
                        *v178 = 0;
                        break;
                      }
                    }

                    v181 = *v109;
                    v182 = *(*(*v109 + 3688) + 120);
                    if (*(*(*v109 + 3688) + 120))
                    {
                      v183 = *(v181 + 3712);
                      if ((v183 & 0x8000) != 0)
                      {
                        if ((v183 & 0x10) == 0 || (v182 = *(v181 + 3778), *(v181 + 3778)))
                        {
                          v182 = 1;
                        }
                      }

                      else
                      {
                        v182 = 0;
                      }
                    }

                    if (*(v181 + 3671) == v182)
                    {
                      v185 = 1;
                    }

                    else
                    {
                      *(v181 + 3671) = v182;
                      v185 = 2;
                    }

                    *(v181 + 3696) = v185;
                    if (*(v181 + 3744) == 3)
                    {
                      v186 = util_is_managed_network(v181 + 3606);
                      v181 = *v109;
                    }

                    else
                    {
                      v186 = 0;
                    }

                    if (*(v181 + 3777) != v186)
                    {
                      v187 = mDNSLogCategory_mDNS;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
                        {
                          goto LABEL_269;
                        }
                      }

                      else
                      {
                        v187 = mDNSLogCategory_mDNS_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
                        {
LABEL_269:
                          v188 = *(v181 + 3552);
                          *buf = 136446722;
                          *&buf[4] = v181 + 3606;
                          *&buf[12] = 1024;
                          *&buf[14] = v188;
                          *&buf[18] = 1024;
                          *&buf[20] = v186;
                          _os_log_impl(&_mh_execute_header, v187, OS_LOG_TYPE_DEBUG, "AddInterfaceToList: Updating for privacy risk -- ifname: %{public}s, ifid: %d, risk: %{mdns:yesno}d", buf, 0x18u);
                        }
                      }

                      v181 = *v109;
                      *(v181 + 3777) = v186;
                      *(v181 + 3696) = 2;
                    }

                    if (*(v181 + 3704) != a1)
                    {
                      *(v181 + 3700) = a1;
                    }

                    v189 = NetWakeInterface(v181);
                    v190 = *v109;
                    if (*(*v109 + 3672) == v189)
                    {
                      v191 = v230;
                    }

                    else
                    {
                      *(v190 + 3672) = v189;
                      v191 = v230;
                      if (*(v190 + 3768))
                      {
                        mDNS_Lock_(mDNSStorage, "AddInterfaceToList", 3984);
                        mDNS_Unlock_(mDNSStorage, "AddInterfaceToList", 3987);
                        v190 = *v109;
                      }
                    }

                    *(v190 + 3674) = (v191 & 0x800) == 0;
                    if (*(v190 + 3671) && !*(v190 + 3673) && *(v190 + 3748) == 3 && !*(v190 + 8))
                    {
                      *(*v109 + 8) = mdns_multicast_delay_histogram_create();
                    }

                    goto LABEL_298;
                  }

LABEL_126:
                  v114 = malloc_type_calloc(1uLL, 0xEC8uLL, 0xE3BF5675uLL);
                  if (!v114)
                  {
                    goto LABEL_328;
                  }

                  v120 = v114;
                  v121 = v234;
                  *(v114 + 444) = v234;
                  *(v114 + 894) = v238;
                  *(v114 + 3560) = *nameEncoding;
                  *(v114 + 899) = v246;
                  *(v114 + 3580) = values;
                  v122 = *(v1 + 8);
                  if (!v122)
                  {
LABEL_328:
                    __break(1u);
                  }

                  v123 = v114 + 3606;
                  v124 = 64;
                  v125 = v114 + 3606;
                  while (1)
                  {
                    v126 = *v122;
                    *v125 = v126;
                    if (!v126)
                    {
                      break;
                    }

                    ++v125;
                    ++v122;
                    if (--v124 <= 1)
                    {
                      *v125 = 0;
                      break;
                    }
                  }

                  v114[3669] = 0;
                  if (byte_10016D226)
                  {
                    v127 = (*(v1 + 16) >> 3) & 1;
                    v128 = v127;
                  }

                  else
                  {
                    v128 = byte_10016D225;
                    v127 = (*(v1 + 16) >> 3) & 1;
                  }

                  v114[3670] = v128;
                  v114[3673] = v127;
                  v114[3674] = (v230 & 0x800) == 0;
                  if ((v230 & 0x20100000) != 0 || *v123 == 112 && v114[3607] == 50 && v114[3608] == 112)
                  {
                    v129 = 1;
                  }

                  else
                  {
                    v129 = util_is_car_play((v114 + 3606));
                    v121 = v234;
                  }

                  *(v120 + 3676) = v129;
                  if (v129 && mDNS_LoggingEnabled)
                  {
                    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AddInterfaceToList: DirectLink set for %s", v115, v116, v117, v118, v119, *(v1 + 8));
                    v121 = v234;
                  }

                  *(v120 + 3680) = 0;
                  *(v120 + 3688) = mDNSStorage;
                  v130 = 1;
                  *(v120 + 3696) = 1;
                  *(v120 + 3698) = 0;
                  if ((v230 & 0x20000) != 0)
                  {
LABEL_148:
                    *(v120 + 3699) = v130;
                    if (v130 && mDNS_LoggingEnabled)
                    {
                      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AddInterfaceToList: D2DInterface set for %s", v115, v116, v117, v118, v119, *(v1 + 8));
                      v121 = v234;
                    }
                  }

                  else
                  {
                    if (*v123 == 112 && *(v120 + 3607) == 50)
                    {
                      v130 = *(v120 + 3608) == 112;
                      goto LABEL_148;
                    }

                    *(v120 + 3699) = 0;
                  }

                  *(v120 + 3776) = (v230 & 0x100000) >> 20;
                  *(v120 + 3677) = (v230 & 0x100000) == 0;
                  *(v120 + 3700) = a1;
                  *(v120 + 3704) = a1;
                  *(v120 + 3712) = *(v1 + 16);
                  *(v120 + 3720) = v121;
                  *(v120 + 3724) = v94;
                  *(v120 + 3726) = v231;
                  *(v120 + 3728) = v93;
                  *(v120 + 3730) = *(*(v1 + 24) + 1);
                  *(v120 + 3768) = 0;
                  *(v120 + 3732) = xmmword_10010D2B0;
                  v131 = socket(2, 2, 0);
                  if (v131 != -1)
                  {
                    v132 = v131;
                    v133 = 0;
                    memset(buf, 0, 32);
                    while (1)
                    {
                      v134 = v123[v133];
                      buf[v133] = v134;
                      if (!v134)
                      {
                        break;
                      }

                      if (++v133 == 15)
                      {
                        buf[15] = 0;
                        break;
                      }
                    }

                    if (ioctl(v131, 0xC020699FuLL, buf) != -1)
                    {
                      v135 = *&buf[20];
                      *(v120 + 3744) = *&buf[24];
                      goto LABEL_177;
                    }

                    v141 = mDNSLogCategory_Default;
                    if (mDNS_SensitiveLoggingEnableCount)
                    {
                      v142 = mDNSLogCategory_Default == mDNSLogCategory_State;
                    }

                    else
                    {
                      v142 = 1;
                    }

                    if (v142)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_175;
                      }
                    }

                    else
                    {
                      v141 = mDNSLogCategory_Default_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                      {
LABEL_175:
                        v146 = __error();
                        v147 = strerror(*v146);
                        *v247 = 136446210;
                        *&v247[4] = v147;
                        _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "GetIFTFamily: SIOCGIFTYPE failed: %{public}s", v247, 0xCu);
                      }
                    }

                    v135 = 0;
LABEL_177:
                    close(v132);
LABEL_178:
                    *(v120 + 3708) = v135;
                    v148 = socket(30, 2, 0);
                    if (v148 == -1)
                    {
                      v152 = 0;
                    }

                    else
                    {
                      v149 = v148;
                      v150 = 0;
                      memset(buf, 0, 32);
                      while (1)
                      {
                        v151 = v123[v150];
                        buf[v150] = v151;
                        if (!v151)
                        {
                          break;
                        }

                        if (++v150 == 15)
                        {
                          buf[15] = 0;
                          break;
                        }
                      }

                      if (ioctl(v148, 0xC02069ADuLL, buf) == -1)
                      {
                        v152 = 0;
                      }

                      else
                      {
                        v152 = *&buf[16];
                      }

                      close(v149);
                    }

                    *(v120 + 3748) = v152;
                    if ((*(v120 + 3712) & 0x10) == 0)
                    {
                      goto LABEL_214;
                    }

                    v153 = socket(2, 2, 0);
                    if (v153 < 0)
                    {
                      if (*__error())
                      {
                        v158 = *__error();
                        if (!v158)
                        {
                          goto LABEL_190;
                        }
                      }

                      else
                      {
                        v158 = -6700;
                      }

                      *(v120 + 3778) = 0;
                      v159 = &unk_100178000;
                      v160 = v158;
                    }

                    else
                    {
LABEL_190:
                      v154 = 0;
                      memset(buf, 0, 32);
                      while (1)
                      {
                        v155 = v123[v154];
                        buf[v154] = v155;
                        if (!v155)
                        {
                          break;
                        }

                        if (++v154 == 15)
                        {
                          buf[15] = 0;
                          break;
                        }
                      }

                      if (strcmp((v120 + 3606), buf))
                      {
                        v156 = 0;
                        v157 = -6744;
                        goto LABEL_196;
                      }

                      if (ioctl(v153, 0xC020695FuLL, buf) == -1)
                      {
                        if (*__error())
                        {
                          v232 = *__error();
                          if (!v232)
                          {
                            goto LABEL_202;
                          }

                          v156 = 0;
                          if (v153 < 0)
                          {
                            goto LABEL_204;
                          }
                        }

                        else
                        {
                          v156 = 0;
                          v157 = -6700;
LABEL_196:
                          v232 = v157;
                          if (v153 < 0)
                          {
                            goto LABEL_204;
                          }
                        }

LABEL_203:
                        close(v153);
                        goto LABEL_204;
                      }

LABEL_202:
                      v232 = 0;
                      v156 = *&buf[16] != 0;
                      if ((v153 & 0x80000000) == 0)
                      {
                        goto LABEL_203;
                      }

LABEL_204:
                      *(v120 + 3778) = v156;
                      v159 = &unk_100178000;
                      v160 = v232;
                      if (!v232)
                      {
                        goto LABEL_214;
                      }
                    }

                    v161 = *(v159 + 434);
                    if (!mDNS_SensitiveLoggingEnableCount || v161 == mDNSLogCategory_State)
                    {
                      if (!os_log_type_enabled(*(v159 + 434), OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_214;
                      }
                    }

                    else
                    {
                      v161 = mDNSLogCategory_Default_redacted;
                      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_214;
                      }
                    }

                    *buf = 136446466;
                    *&buf[4] = v120 + 3606;
                    *&buf[12] = 2048;
                    *&buf[14] = v160;
                    _os_log_impl(&_mh_execute_header, v161, OS_LOG_TYPE_ERROR, "AddInterfaceToList: Failed to determine if point-to-point interface allows mDNS -- ifname: %{public}s, error: %{mdns:err}ld", buf, 0x16u);
LABEL_214:
                    v162 = *(*(v120 + 3688) + 120);
                    if (v162)
                    {
                      v163 = *(v120 + 3712);
                      if ((v163 & 0x8000) != 0)
                      {
                        if ((v163 & 0x10) == 0 || (v162 = *(v120 + 3778)) != 0)
                        {
                          v162 = 1;
                        }
                      }

                      else
                      {
                        v162 = 0;
                      }
                    }

                    *(v120 + 3671) = v162;
                    if (*(v120 + 3744) == 3)
                    {
                      v164 = util_is_managed_network(v120 + 3606);
                    }

                    else
                    {
                      v164 = 0;
                    }

                    *(v120 + 3777) = v164;
                    v165 = mDNSLogCategory_mDNS;
                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEBUG))
                      {
                        goto LABEL_228;
                      }
                    }

                    else
                    {
                      v165 = mDNSLogCategory_mDNS_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEBUG))
                      {
LABEL_228:
                        v171 = *(v120 + 3552);
                        *buf = 136446722;
                        *&buf[4] = v120 + 3606;
                        *&buf[12] = 1024;
                        *&buf[14] = v171;
                        *&buf[18] = 1024;
                        *&buf[20] = v164;
                        _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEBUG, "AddInterfaceToList: Privacy risk -- ifname: %{public}s, ifid: %d, risk: %{mdns:yesno}d", buf, 0x18u);
                      }
                    }

                    v172 = (v230 & 0x4000) == 0 && NetWakeInterface(v120);
                    v173 = v234;
                    *(v120 + 3672) = v172;
                    v174 = (v120 + 3600);
                    v175 = myGetIfAddrs_ifa;
                    if (!myGetIfAddrs_ifa)
                    {
                      getifaddrs(&myGetIfAddrs_ifa);
                      v173 = v234;
                      v175 = &myGetIfAddrs_ifa;
                      goto LABEL_282;
                    }

                    do
                    {
                      v192 = v175[3];
                      if (v192 && *(v192 + 1) == 18 && *(v192 + 2) == v173)
                      {
                        v193 = v192 + *(v192 + 5);
                        v194 = *(v193 + 8);
                        *(v120 + 3604) = *(v193 + 12);
                        *v174 = v194;
                        goto LABEL_288;
                      }

LABEL_282:
                      v175 = *v175;
                    }

                    while (v175);
                    *(v120 + 3604) = 0;
                    *v174 = 0;
LABEL_288:
                    if (*(v120 + 3672) && !*v174)
                    {
                      v226 = (v120 + 3606);
                      v227 = nameEncoding;
                      v225 = v173;
                      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AddInterfaceToList: Bad MAC address %.6a for %d %s %#a", v166, v167, v168, v169, v170, v120 + 3600);
                    }

                    if (*(v120 + 3671) && !*(v120 + 3673) && *(v120 + 3748) == 3)
                    {
                      v195 = *(v120 + 8);
                      if (v195)
                      {
                        os_release(v195);
                        *(v120 + 8) = 0;
                      }

                      *(v120 + 8) = mdns_multicast_delay_histogram_create();
                    }

                    *v109 = v120;
                    goto LABEL_298;
                  }

                  v136 = mDNSLogCategory_Default;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
                  {
                    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
                    {
                      v143 = __error();
                      v144 = strerror(*v143);
                      *buf = 136446210;
                      *&buf[4] = v144;
                      v140 = v136;
LABEL_172:
                      _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_ERROR, "GetIFTFamily: socket() failed: %{public}s", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v137 = mDNSLogCategory_Default_redacted;
                    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
                    {
                      v138 = __error();
                      v139 = strerror(*v138);
                      *buf = 136446210;
                      *&buf[4] = v139;
                      v140 = v137;
                      goto LABEL_172;
                    }
                  }

                  v135 = 0;
                  goto LABEL_178;
                }

                if ((v2 & 0x80000000) != 0)
                {
                  goto LABEL_109;
                }

                memset(v243, 0, sizeof(v243));
                v242 = 0u;
                memset(buf, 0, sizeof(buf));
                v80 = *(v1 + 8);
                if (!v80)
                {
                  goto LABEL_328;
                }

                v81 = 0;
                while (1)
                {
                  v82 = *(v80 + v81);
                  buf[v81] = v82;
                  if (!v82)
                  {
                    break;
                  }

                  if (++v81 == 15)
                  {
                    buf[15] = 0;
                    break;
                  }
                }

                v83 = *v70;
                *&buf[28] = *(v70 + 12);
                *&buf[16] = v83;
                v84 = ioctl(v2, 0xC1206949uLL, buf);
                if ((buf[16] & 0x9A) == 0 || v84 == -1)
                {
                  goto LABEL_109;
                }
              }
            }

            else
            {
              memset(buf, 0, 20);
              SetupAddr(buf, v49, v22, v23, v24, v25, v26, v27);
              v54 = *(v3 + 434);
              v55 = *(v1 + 8);
              v56 = if_nametoindex(v55);
              v228 = buf;
              v229 = *(*(v1 + 32) + 1);
              v226 = *(v1 + 16);
              v227 = *(*(v1 + 24) + 1);
              v225 = v56;
              LogMsgWithLevel(v54, OS_LOG_TYPE_DEFAULT, "UpdateInterfaceList: ifa_netmask for %5s(%d) Flags %04X Family %2d %#a has different family: %d", v57, v58, v59, v60, v61, v55);
            }
          }

          else
          {
            memset(buf, 0, 20);
            SetupAddr(buf, v49, v22, v23, v24, v25, v26, v27);
            v62 = *(v3 + 434);
            v63 = *(v1 + 8);
            v64 = if_nametoindex(v63);
            v227 = *(*(v1 + 24) + 1);
            v228 = buf;
            v225 = v64;
            v226 = *(v1 + 16);
            LogMsgWithLevel(v62, OS_LOG_TYPE_DEFAULT, "UpdateInterfaceList: ifa_netmask is NULL for %5s(%d) Flags %04X Family %2d %#a", v65, v66, v67, v68, v69, v63);
          }

          goto LABEL_96;
        }

        v20 = 0;
        memset(buf, 0, 32);
        while (1)
        {
          v21 = v16[v20];
          buf[v20] = v21;
          if (!v21)
          {
            break;
          }

          if (++v20 == 15)
          {
            buf[15] = 0;
            break;
          }
        }

        if (ioctl(v2, 0xC02069ADuLL, buf, v225, v226, v227, v228, v229) == -1)
        {
          v32 = __error();
          v33 = mDNSLogCategory_State;
          if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
          {
            v34 = *v32;
            nameEncoding[0] = 67109120;
            nameEncoding[1] = v34;
            v30 = v33;
            v31 = "isExcludedInterface: SIOCGIFFUNCTIONALTYPE failed -- error: %{darwin.errno}d";
LABEL_36:
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, v31, nameEncoding, 8u);
          }

          goto LABEL_37;
        }

        if (*&buf[16] != 6)
        {
          goto LABEL_37;
        }

        v28 = mDNSLogCategory_State;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEBUG))
        {
          nameEncoding[0] = 136446210;
          *&nameEncoding[1] = v16;
          v18 = v28;
          v19 = "isExcludedInterface: excluding coprocessor interface %{public}s";
          goto LABEL_31;
        }
      }

LABEL_96:
      v1 = *v1;
    }

    while (v1);
  }

  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  mDNS_snprintf(v244);
  v242 = 0u;
  memset(buf, 0, sizeof(buf));
  nameEncoding[0] = 134217984;
  v13 = SCDynamicStoreCopyComputerName(0, nameEncoding);
  if (v13)
  {
    v14 = v13;
    mDNSDomainLabelFromCFString(v13, buf);
    CFRelease(v14);
    v15 = &unk_10016D000;
    if (buf[0])
    {
      goto LABEL_308;
    }
  }

  else
  {
    v15 = &unk_10016D000;
  }

  v196 = &buf[1];
  v197 = v244[0];
  if (LOBYTE(v244[0]))
  {
    v198 = v244 + 1;
    do
    {
      *v196++ = v197;
      v199 = *v198++;
      v197 = v199;
      if (v199)
      {
        v200 = v196 >= v243;
      }

      else
      {
        v200 = 1;
      }
    }

    while (!v200);
  }

  buf[0] = v196 + ~buf;
LABEL_308:
  v239 = 0u;
  v240 = 0u;
  *nameEncoding = 0u;
  v238 = 0u;
  GetUserSpecifiedLocalHostName(nameEncoding);
  v206 = LOBYTE(nameEncoding[0]);
  if (!LOBYTE(nameEncoding[0]))
  {
    v207 = nameEncoding + 1;
    v208 = v244[0];
    if (LOBYTE(v244[0]))
    {
      v209 = v244 + 1;
      do
      {
        *v207++ = v208;
        v210 = *v209++;
        v208 = v210;
        if (v210)
        {
          v211 = v207 >= buf;
        }

        else
        {
          v211 = 1;
        }
      }

      while (!v211);
    }

    v212 = v207 + ~nameEncoding;
    v206 = v212;
    LOBYTE(nameEncoding[0]) = v212;
  }

  v213 = v15[67];
  v214 = *(v213 + 172);
  if (*(v213 + 172) != buf[0] || memcmp((v213 + 173), &buf[1], v214))
  {
    if (v214)
    {
      LogMsgWithLevel(*(v3 + 434), OS_LOG_TYPE_DEFAULT, "User updated Computer Name from “%#s” to “%#s”", v201, v202, v203, v204, v205, v213 + 172);
      v213 = v15[67];
      v206 = LOBYTE(nameEncoding[0]);
    }

    v215 = *&buf[16];
    xmmword_10016FA40 = *buf;
    *algn_10016FA50 = *&buf[16];
    v216 = *&buf[32];
    v217 = v242;
    xmmword_10016FA60 = *&buf[32];
    unk_10016FA70 = v242;
    *(v213 + 172) = *buf;
    *(v213 + 188) = v215;
    *(v213 + 204) = v216;
    *(v213 + 220) = v217;
  }

  v218 = *(v213 + 108);
  if (v218 != v206 || memcmp((v213 + 109), nameEncoding + 1, v206))
  {
    if (v218)
    {
      LogMsgWithLevel(*(v3 + 434), OS_LOG_TYPE_DEFAULT, "User updated Local Hostname from “%#s” to “%#s”", v201, v202, v203, v204, v205, v213 + 108);
      v213 = v15[67];
    }

    v220 = (mDNSStorage + &loc_100002868);
    v221 = *nameEncoding;
    v222 = v238;
    *v220 = *nameEncoding;
    v220[1] = v222;
    v223 = v239;
    v224 = v240;
    v220[2] = v239;
    v220[3] = v224;
    *(v213 + 108) = v221;
    *(v213 + 124) = v222;
    *(v213 + 140) = v223;
    *(v213 + 156) = v224;
    mDNS_SetFQDN(mDNSStorage);
  }

  return result;
}

uint64_t myGetIfAddrs()
{
  if (myGetIfAddrs_ifa)
  {
    freeifaddrs(myGetIfAddrs_ifa);
    myGetIfAddrs_ifa = 0;
  }

  getifaddrs(&myGetIfAddrs_ifa);
  return myGetIfAddrs_ifa;
}

uint64_t SetupAddr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v9 = 4294901747;
    v11 = mDNSLogCategory_Default;
    v12 = "SetupAddr ERROR: NULL sockaddr";
    goto LABEL_10;
  }

  v8 = *(a2 + 1);
  if (v8 != 30)
  {
    if (v8 == 2)
    {
      v9 = 0;
      v10 = *(a2 + 4);
      *a1 = 4;
      *(a1 + 4) = v10;
      return v9;
    }

    v9 = 4294901747;
    v11 = mDNSLogCategory_Default;
    v14 = *(a2 + 1);
    v12 = "SetupAddr invalid sa_family %d";
    LOBYTE(a2) = 0;
LABEL_10:
    LogMsgWithLevel(v11, a2, v12, a4, a5, a6, a7, a8, v14);
    return v9;
  }

  *a1 = 6;
  *(a1 + 4) = *(a2 + 8);
  if (*(a2 + 8) != 254 || (*(a2 + 9) & 0xC0) != 0x80)
  {
    return 0;
  }

  v9 = 0;
  *(a1 + 6) = 0;
  return v9;
}

BOOL NetWakeInterface(uint64_t a1)
{
  if (*(*(a1 + 3688) + 120))
  {
    v2 = *(a1 + 3712);
    if ((v2 & 0x8000) != 0 && ((v2 & 0x10) == 0 || *(a1 + 3778)) && (v2 & 8) == 0 && !*(a1 + 3699))
    {
      v10 = a1 + 3606;
      if (!strcmp((a1 + 3606), "ap1"))
      {
        v12 = mDNSLogCategory_SPS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_SPS == mDNSLogCategory_State)
        {
          result = os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          *buf = 136446210;
          *v26 = v10;
          v5 = "NetWakeInterface: returning false for %{public}s";
        }

        else
        {
          v12 = mDNSLogCategory_SPS_redacted;
          result = os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEFAULT);
          if (!result)
          {
            return result;
          }

          *buf = 136446210;
          *v26 = v10;
          v5 = "NetWakeInterface: returning false for %{public}s";
        }

        v7 = v12;
        v8 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_17;
      }

      if (CheckInterfaceSupport(a1, "mDNS_Keepalive"))
      {
        v11 = mDNSLogCategory_SPS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_SPS == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            *v26 = v10;
            goto LABEL_41;
          }
        }

        else
        {
          v11 = mDNSLogCategory_SPS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            *v26 = v10;
LABEL_41:
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NetWakeInterface: interface supports TCP Keepalive -- ifname: %{public}s", buf, 0xCu);
          }
        }

        return 1;
      }

      v13 = socket(2, 2, 0);
      v14 = v13;
      if (v13 < 0)
      {
        v19 = *__error();
        v20 = mDNSLogCategory_SPS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_SPS == mDNSLogCategory_State)
        {
          result = os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v20 = mDNSLogCategory_SPS_redacted;
          result = os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }
        }

        *buf = 67109634;
        *v26 = v14;
        *&v26[4] = 2082;
        *&v26[6] = v10;
        *&v26[14] = 1024;
        *&v26[16] = v19;
        v5 = "NetWakeInterface: socket failed -- socket: %d, ifname: %{public}s, error: %{darwin.errno}d";
        v7 = v20;
        v8 = OS_LOG_TYPE_ERROR;
        v9 = 24;
        goto LABEL_18;
      }

      v15 = 0;
      v32 = 0u;
      v33 = 0u;
      while (1)
      {
        v16 = *(v10 + v15);
        *(&v32 + v15) = v16;
        if (!v16)
        {
          break;
        }

        if (++v15 == 15)
        {
          HIBYTE(v32) = 0;
          break;
        }
      }

      if ((ioctl(v13, 0xC0206988uLL, &v32) & 0x80000000) == 0)
      {
LABEL_60:
        close(v14);
        v22 = mDNSLogCategory_SPS;
        if (mDNS_SensitiveLoggingEnableCount)
        {
          v23 = mDNSLogCategory_SPS == mDNSLogCategory_State;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          if (!os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEFAULT))
          {
            return v33 & 1;
          }
        }

        else
        {
          v22 = mDNSLogCategory_SPS_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEFAULT))
          {
            return v33 & 1;
          }
        }

        *buf = 136447235;
        *v26 = a1 + 3606;
        *&v26[8] = 2160;
        *&v26[10] = 1752392040;
        *&v26[18] = 1045;
        v27 = 20;
        v28 = 2101;
        v29 = a1 + 3560;
        v30 = 1024;
        v31 = v33 & 1;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "NetWakeInterface: interface -- ifname: %{public}s, address: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P, supports Wake-On-Lan: %{mdns:yesno}d", buf, 0x2Cu);
        return v33 & 1;
      }

      v17 = *__error();
      if (v17 == 102)
      {
        if (!*(a1 + 3724))
        {
          v18 = *(*(a1 + 3688) + 143) != 0;
LABEL_59:
          LODWORD(v33) = v18;
          goto LABEL_60;
        }

LABEL_58:
        v18 = 0;
        goto LABEL_59;
      }

      v21 = mDNSLogCategory_SPS;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_SPS == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }

      else
      {
        v21 = mDNSLogCategory_SPS_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }
      }

      *buf = 136446466;
      *v26 = a1 + 3606;
      *&v26[8] = 1024;
      *&v26[10] = v17;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "NetWakeInterface: SIOCGIFWAKEFLAGS failed -- ifname: %{public}s, error: %{darwin.errno}d", buf, 0x12u);
      goto LABEL_58;
    }
  }

  v3 = mDNSLogCategory_SPS;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_SPS == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    result = os_log_type_enabled(mDNSLogCategory_SPS, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    *buf = 136446210;
    *v26 = a1 + 3606;
    v5 = "NetWakeInterface: returning false for %{public}s";
    goto LABEL_16;
  }

  v3 = mDNSLogCategory_SPS_redacted;
  result = os_log_type_enabled(mDNSLogCategory_SPS_redacted, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *buf = 136446210;
    *v26 = a1 + 3606;
    v5 = "NetWakeInterface: returning false for %{public}s";
LABEL_16:
    v7 = v3;
    v8 = OS_LOG_TYPE_DEBUG;
LABEL_17:
    v9 = 12;
LABEL_18:
    _os_log_impl(&_mh_execute_header, v7, v8, v5, buf, v9);
    return 0;
  }

  return result;
}

void mDNS_SetFQDN(uint64_t a1)
{
  memset(v33, 0, sizeof(v33));
  if (AppendDomainLabel(v33, (a1 + 10344)) && AppendLiteralLabelString(v33, "local"))
  {
    mDNS_Lock_(a1, "mDNS_SetFQDN", 16835);
    if (!SameDomainNameCS((a1 + 10408), v33))
    {
      v14 = v33;
      do
      {
        if (!v14)
        {
          break;
        }

        v15 = *v14;
        if (v15 > 0x3F)
        {
          break;
        }

        if (!*v14)
        {
          v16 = v14 - v33 + 1;
          if (v16 <= 0x100u)
          {
            memcpy((a1 + 10408), v33, v16);
            goto LABEL_14;
          }

          break;
        }

        v14 += v15 + 1;
      }

      while (v14 - v33 <= 255);
      *(a1 + 10408) = 0;
LABEL_14:
      DeadvertiseAllInterfaceRecords(a1, 1);
      AdvertiseNecessaryInterfaceRecords(a1);
    }

    for (i = *(a1 + 12616); i; i = *i)
    {
      if (*(i + 120))
      {
        D2D_stop_advertising_record(i, v7, v8, v9, v10, v11, v12, v13);
        SetTargetToHostName(a1, i);
        D2D_start_advertising_record(i, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    for (j = *(a1 + 12624); j; j = *j)
    {
      if (*(j + 120))
      {
        D2D_stop_advertising_record(j, v7, v8, v9, v10, v11, v12, v13);
        SetTargetToHostName(a1, j);
        D2D_start_advertising_record(j, v26, v27, v28, v29, v30, v31, v32);
      }
    }

    mDNS_Unlock_(a1, "mDNS_SetFQDN", 16849);
  }

  else
  {
    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ERROR: mDNS_SetFQDN: Cannot create MulticastHostname", v2, v3, v4, v5, v6, v33[0]);
  }
}

uint64_t AppendDomainLabel(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = 257;
  v3 = a1;
  do
  {
    if (!v3)
    {
      break;
    }

    v4 = *v3;
    if (v4 > 0x3F)
    {
      break;
    }

    if (!*v3)
    {
      v2 = (v3 - a1 + 1);
      break;
    }

    v3 += v4 + 1;
  }

  while (v3 - a1 < 256);
  v5 = &a1[v2];
  v6 = *a2;
  if (v6 > 0x3F || &v5[v6 + 1] > a1 + 256)
  {
    return 0;
  }

  v9 = -1;
  do
  {
    v5[v9] = a2[v9 + 1];
    ++v9;
  }

  while (v9 < *a2);
  result = &v5[v9 + 1];
  v5[v9] = 0;
  return result;
}

_BYTE *AppendLiteralLabelString(_BYTE *a1, char *a2)
{
  v2 = 257;
  v3 = a1;
  do
  {
    if (!v3)
    {
      break;
    }

    v4 = *v3;
    if (v4 > 0x3F)
    {
      break;
    }

    if (!*v3)
    {
      v2 = (v3 - a1 + 1);
      break;
    }

    v3 += v4 + 1;
  }

  while (v3 - a1 < 256);
  v5 = &a1[v2];
  v6 = (v5 + 63);
  if (a1 + 255 < v5 + 63)
  {
    v6 = (a1 + 255);
  }

  v7 = *a2;
  v8 = v5;
  if (*a2)
  {
    v9 = v5 >= v6;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    do
    {
      *v8++ = v7;
      v10 = *++a2;
      v7 = v10;
      if (v10)
      {
        v11 = v8 >= v6;
      }

      else
      {
        v11 = 1;
      }
    }

    while (!v11);
  }

  *(v5 - 1) = v8 - v5;
  *v8 = 0;
  v12 = v8 + 1;
  if (*a2)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

void mDNS_Lock_(unsigned int *a1, uint64_t a2, int a3)
{
  mDNS_VerifyLockState("Lock", 0, a1[12], a1[13], a2, a3);
  v13 = a1[12];
  v14 = a1[16];
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_23;
    }

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
      v5 = os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT);
      if (!v5)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v17 = mDNSLogCategory_Default_redacted;
      v5 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT);
      if (!v5)
      {
        goto LABEL_23;
      }
    }

    v22 = a1[15] + mDNSPlatformRawTime(v5, v6, v7, v8, v9, v10, v11, v12);
    v27 = 136446722;
    v28 = a2;
    v29 = 1024;
    v30 = v14;
    v31 = 1024;
    v32 = v22;
    v19 = "%{public}s: mDNS_Lock: m->timenow already set (%d/%d)";
    v20 = v17;
    v21 = 24;
    goto LABEL_22;
  }

  if (v14)
  {
    goto LABEL_27;
  }

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
    v5 = os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
LABEL_19:
      v27 = 136446466;
      v28 = a2;
      v29 = 1024;
      v30 = v13;
      v19 = "%{public}s: mDNS_Lock: m->mDNS_busy is %u but m->timenow not set";
      v20 = v15;
      v21 = 18;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, &v27, v21);
    }
  }

  else
  {
    v15 = mDNSLogCategory_Default_redacted;
    v5 = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      goto LABEL_19;
    }
  }

LABEL_23:
  v23 = a1[15] + mDNSPlatformRawTime(v5, v6, v7, v8, v9, v10, v11, v12);
  if (v23 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v23;
  }

  a1[16] = v14;
LABEL_27:
  v24 = a1[17] - v14;
  if (v24 >= 1)
  {
    v25 = a1[15] + v24;
    a1[15] = v25;
    v26 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_33:
        v27 = 136446722;
        v28 = a2;
        v29 = 1024;
        v30 = v24;
        v31 = 1024;
        v32 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}s: mDNSPlatformRawTime went backwards by %d ticks; setting correction factor to %d", &v27, 0x18u);
      }
    }

    else
    {
      v26 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }
    }

    v14 = a1[17];
    a1[16] = v14;
  }

  a1[17] = v14;
  ++a1[12];
}

BOOL SameDomainNameCS(_BYTE *a1, _BYTE *a2)
{
  v2 = a1;
  while (1)
  {
    if (!v2 || (v3 = *v2, v3 > 0x3F))
    {
LABEL_6:
      v4 = 257;
      goto LABEL_8;
    }

    if (!*v2)
    {
      break;
    }

    v2 += v3 + 1;
    if (v2 - a1 >= 256)
    {
      goto LABEL_6;
    }
  }

  v4 = v2 - a1 + 1;
LABEL_8:
  v5 = a2;
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
    if (v5 - a2 >= 256)
    {
      goto LABEL_13;
    }
  }

  v7 = v5 - a2 + 1;
LABEL_15:
  v8 = 0;
  if (v4 <= 0x100u && v4 == v7)
  {
    return memcmp(a1, a2, v4) == 0;
  }

  return v8;
}

void mDNS_Unlock_(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 52);
  v7 = *(a1 + 48) - 1;
  *(a1 + 48) = v7;
  mDNS_VerifyLockState("Unlock", 0, v7, v6, a2, a3);
  if (!*(a1 + 48))
  {
    v8 = *(a1 + 64);
    v9 = v8 + 939524096;
    if (*(a1 + 16))
    {
      v10 = v8 + 939524096;
    }

    else
    {
      v11 = *(a1 + 200);
      if (!v11 || (v9 = *(v11 + 204), v10 = *(a1 + 64), v9))
      {
        v10 = *(a1 + 64);
        if (!*(a1 + 224))
        {
          v12 = *(a1 + 12632);
          if (v12)
          {
            while (*(v12 + 8) == 2)
            {
              v12 = *v12;
              if (!v12)
              {
                goto LABEL_10;
              }
            }

            v10 = *(a1 + 64);
          }

          else
          {
LABEL_10:
            v10 = *(a1 + 64);
            if (!*(a1 + 12648))
            {
              v10 = *(a1 + 64);
              if (!*(a1 + 15112))
              {
                v10 = *(a1 + 64);
                if (!*(a1 + 140))
                {
                  if (v9 - *(a1 + 12680) > 0)
                  {
                    v9 = *(a1 + 12680);
                  }

                  if (v9 - *(a1 + 104) > 0)
                  {
                    v9 = *(a1 + 104);
                  }

                  v13 = *(a1 + 12684);
                  if (v9 - v13 > 0 && v13 != 0)
                  {
                    v9 = *(a1 + 12684);
                  }

                  if (v9 - *(a1 + 88) > 0)
                  {
                    v9 = *(a1 + 88);
                  }

                  if (v9 - *(a1 + 108) > 0)
                  {
                    v9 = *(a1 + 108);
                  }

                  v15 = *(a1 + 116);
                  if (v9 - *(a1 + 112) > 0)
                  {
                    v9 = *(a1 + 112);
                  }

                  if (v9 - v15 <= 0 || v15 == 0)
                  {
                    v17 = v9;
                  }

                  else
                  {
                    v17 = *(a1 + 116);
                  }

                  for (i = *(a1 + 14160); i; i = *(i + 296))
                  {
                    for (j = 0; j != 40; j += 8)
                    {
                      v20 = *(i + 256 + j);
                      if (v20)
                      {
                        if (*(v20 + 704) == 2)
                        {
                          v21 = *(v20 + 712);
                          if (v17 - v21 > 0)
                          {
                            v17 = v21;
                          }
                        }
                      }
                    }
                  }

                  next_scheduled_event = resolver_discovery_get_next_scheduled_event();
                  if (v17 - next_scheduled_event <= 0 || next_scheduled_event == 0)
                  {
                    v24 = v17;
                  }

                  else
                  {
                    v24 = next_scheduled_event;
                  }

                  v25 = *(a1 + 148);
                  if (!v25 && *(a1 + 152) && v24 - *(a1 + 180) > 0)
                  {
                    v24 = *(a1 + 180);
                  }

                  if (v24 - v25 > 0 && v25 != 0)
                  {
                    v24 = *(a1 + 148);
                  }

                  v27 = *(a1 + 80);
                  if (v27)
                  {
                    if (v24 - v27 > 0)
                    {
                      v24 = *(a1 + 80);
                    }
                  }

                  else
                  {
                    if (v24 - *(a1 + 92) > 0)
                    {
                      v24 = *(a1 + 92);
                    }

                    if (v24 - *(a1 + 96) > 0)
                    {
                      v24 = *(a1 + 96);
                    }
                  }

                  v31 = *(a1 + 84);
                  if (!v31)
                  {
                    v31 = *(a1 + 100);
                  }

                  if (v24 - v31 > 0)
                  {
                    v24 = v31;
                  }

                  v32 = *(a1 + 188);
                  if (v24 - *(a1 + 184) > 0)
                  {
                    v24 = *(a1 + 184);
                  }

                  if (v24 - v32 > 0 && v32 != 0)
                  {
                    v24 = *(a1 + 188);
                  }

                  v34 = *(a1 + 160);
                  v35 = *(a1 + 164);
                  if (v24 - v34 > 0 && v34 != 0)
                  {
                    v24 = *(a1 + 160);
                  }

                  if (v24 - v35 <= 0 || v35 == 0)
                  {
                    v10 = v24;
                  }

                  else
                  {
                    v10 = *(a1 + 164);
                  }
                }
              }
            }
          }
        }
      }
    }

    *(a1 + 72) = v10;
    if (v8)
    {
      goto LABEL_73;
    }

    v28 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v29 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
      {
LABEL_73:
        *(a1 + 64) = 0;
        return;
      }

      v38 = 136446210;
      v39 = a2;
    }

    else
    {
      v28 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      v38 = 136446210;
      v39 = a2;
    }

    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}s: mDNS_Unlock: ERROR! m->timenow aready zero", &v38, 0xCu);
    goto LABEL_73;
  }
}

void SetupActiveInterfaces(int a1)
{
  dword_100170398 = 0;
  v1 = *mDNSStorage[0];
  if (*mDNSStorage[0])
  {
    v70 = 136447235;
    do
    {
      if (!v1[462].i8[0])
      {
        goto LABEL_174;
      }

      v2 = SearchForInterfaceByName(&v1[450] + 6, 0);
      v3 = v2;
      v4 = v1[471];
      if (v4)
      {
        v5 = *&v4 == v2;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (v4)
        {
          goto LABEL_174;
        }
      }

      else
      {
        v6 = mDNSLogCategory_State;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v73 = v4;
          *&v73[8] = 2048;
          *&v73[10] = v3;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "SetupActiveInterfaces ERROR! n->Registered %p != primary %p", buf, 0x16u);
        }
      }

      v1[471] = v3;
      v8 = (v1[464].i8[0] & 8) == 0 && (v1[463].i32[0] - a1) > 0xFFFFFFC4;
      v1[462].i8[2] = v8;
      if (v1[450].i8[6] == 112 && v1[450].i8[7] == 50 && v1[451].i8[0] == 112 || v1[459].i8[4])
      {
        v9 = mDNSLogCategory_State;
        v10 = 1;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          *v73 = v1 + 3606;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "SetupActiveInterfaces: %{public}s DirectLink interface registering", buf, 0xCu);
        }
      }

      else
      {
        v10 = 0;
      }

      if (v1[444])
      {
        v11 = v1[447].i32[1];
        if (v11 == 6)
        {
          if (vorr_s8(v1[448], *&vextq_s8(*v1[448].i8, *v1[448].i8, 8uLL)))
          {
            goto LABEL_27;
          }
        }

        else if (v11 == 4 && v1[448].i32[0])
        {
LABEL_27:
          mDNS_Lock_(mDNSStorage, "mDNS_RegisterInterface", 17083);
          v1[2].i8[0] = 1;
          v12 = v1[445].i32[0];
          if (v12 == 4)
          {
            v13 = 0;
            v14 = 0;
            v1[2].i8[1] = v1[458].i8[7] != 0;
          }

          else
          {
            v13 = 0;
            v14 = 0;
            v1[2].i8[1] = 0;
            if (v12 == 6)
            {
              v14 = v1[458].i8[7] != 0;
              v13 = 1;
            }
          }

          v1[2].i8[2] = v14;
          v20 = xmmword_100170388;
          if (xmmword_100170388)
          {
            v21 = 1;
            v22 = 1;
            while (v20 != v1)
            {
              v23 = v20;
              if (*(v20 + 444) == *&v1[444])
              {
                v1[2].i8[0] = 0;
                if (v12 == *(v20 + 890))
                {
                  v22 = 0;
                }

                if (v12 == 4 && v1[458].i8[7])
                {
                  *(v20 + 17) = 1;
                }

                if (v13)
                {
                  v21 = v1[458].u8[7];
                  if (v1[458].i8[7])
                  {
                    v21 = 0;
                    *(v20 + 18) = 1;
                  }
                }

                else
                {
                  v21 = 0;
                }
              }

              v20 = *v20;
              if (!*v23)
              {
                v24 = v22 == 0;
                goto LABEL_61;
              }
            }

            v36 = mDNSLogCategory_mDNS;
            if (mDNS_SensitiveLoggingEnableCount)
            {
              v37 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
            }

            else
            {
              v37 = 1;
            }

            if (v37)
            {
              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_86;
              }
            }

            else
            {
              v36 = mDNSLogCategory_mDNS_redacted;
              if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
              {
LABEL_86:
                *buf = 136446979;
                *v73 = v1 + 3606;
                *&v73[8] = 2160;
                *&v73[10] = 1752392040;
                *&v73[18] = 1045;
                *&v73[20] = 20;
                v74 = 2101;
                *v75 = v1 + 445;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Tried to register a NetworkInterfaceInfo that's already in the list - ifname: %{public}s, ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P", buf, 0x26u);
              }
            }

            v39 = 17101;
LABEL_153:
            mDNS_Unlock_(mDNSStorage, "mDNS_RegisterInterface", v39);
            goto LABEL_154;
          }

          v24 = 0;
          v21 = 1;
          v23 = &xmmword_100170388;
LABEL_61:
          *v1 = 0;
          *v23 = v1;
          if (v1[458].i8[6])
          {
            AdvertiseInterfaceIfNeeded(mDNSStorage, v1);
            v21 = v1[2].u8[0];
          }

          v25 = mDNSLogCategory_mDNS;
          if (mDNS_SensitiveLoggingEnableCount)
          {
            v26 = mDNSLogCategory_mDNS == mDNSLogCategory_State;
          }

          else
          {
            v26 = 1;
          }

          v27 = v26;
          if (v21)
          {
            if (v27)
            {
              if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_72;
              }

LABEL_91:
              if (!v1[458].i8[7] || v24 && !v1[2].i8[0])
              {
                goto LABEL_141;
              }

              if (v10)
              {
                v41 = mDNSLogCategory_mDNS;
                if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
                {
                  if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_101;
                  }
                }

                else
                {
                  v41 = mDNSLogCategory_mDNS_redacted;
                  if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_101:
                    *buf = 136446979;
                    *v73 = v1 + 3606;
                    *&v73[8] = 2160;
                    *&v73[10] = 1752392040;
                    *&v73[18] = 1045;
                    *&v73[20] = 20;
                    v74 = 2101;
                    *v75 = v1 + 445;
                    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Using fast activation for DirectLink interface - ifname: %{public}s, ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P", buf, 0x26u);
                  }
                }

                v42 = 0;
              }

              else
              {
                v42 = 500;
              }

              v43 = mDNSLogCategory_mDNS;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_108;
                }
              }

              else
              {
                v43 = mDNSLogCategory_mDNS_redacted;
                if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
                {
LABEL_108:
                  *buf = v70;
                  *v73 = v1 + 3606;
                  *&v73[8] = 2160;
                  *&v73[10] = 1752392040;
                  *&v73[18] = 1045;
                  *&v73[20] = 20;
                  v74 = 2101;
                  *v75 = v1 + 445;
                  *&v75[8] = 1024;
                  *&v75[10] = v42;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Interface probe will be delayed - ifname: %{public}s, ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P, probe delay: %d", buf, 0x2Cu);
                }
              }

              if (v10)
              {
                v45 = 0;
                qword_10016D268 = 0;
                goto LABEL_111;
              }

              if (!qword_10016D268)
              {
                v46 = dword_10016D258;
                do
                {
                  v47 = arc4random() & 0x1FF;
                }

                while (v47 > 0x14E);
                v48 = v47 + v46;
                if (v48 <= 1)
                {
                  v48 = 1;
                }

                LODWORD(qword_10016D268) = v48;
              }

              v45 = dword_10016D258 + v42;
              if ((dword_10016D258 + v42) <= 1)
              {
                v45 = 1;
              }

              if (!dword_100170398 || dword_100170398 - v45 < 0)
              {
LABEL_111:
                dword_100170398 = v45;
              }

              ++*(&xmmword_10016D2D4 + &loc_100004D40 + 4);
              v49 = *(&xmmword_10016D2D4 + 4);
              if (*(&xmmword_10016D2D4 + 4))
              {
                while (2)
                {
                  if (*(v49 + 340))
                  {
                    goto LABEL_132;
                  }

                  v50 = *(v49 + 136);
                  if (v50)
                  {
                    if (v50 != *&v1[444])
                    {
                      goto LABEL_132;
                    }
                  }

                  else if (!mDNSPlatformValidQuestionForInterface(v49, v1, v44, v28, v29, v30, v31, v32))
                  {
                    goto LABEL_132;
                  }

                  v51 = *(v49 + 212);
                  if (!v51 || v51 >= 335)
                  {
                    v51 = 334;
                    *(v49 + 212) = 334;
                    *(v49 + 352) = 2;
                  }

                  *(v49 + 208) = dword_10016D258 - v51;
                  *(v49 + 224) = 0;
                  *(v49 + 689) = 0;
                  SetNextQueryTime(mDNSStorage, v49);
LABEL_132:
                  v49 = *(v49 + 8);
                  if (!v49)
                  {
                    break;
                  }

                  continue;
                }
              }

              v52 = xmmword_100170360;
              if (!xmmword_100170360)
              {
LABEL_141:
                if (mDNS_LoggingEnabled == 1)
                {
                  LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "RestartRecordGetZoneData: ResourceRecords", v28, v29, v30, v31, v32, v70);
                }

                for (i = xmmword_100170360; i; i = *i)
                {
                  if (!*(i + 32) && !*(i + 122) && !IsLocalDomain(*(i + 40)) && *(i + 344) != 8)
                  {
                    v56 = *(i + 376);
                    if (v56)
                    {
                      *(i + 358) = 0;
                      CancelGetZoneData(mDNSStorage, v56);
                    }

                    *(i + 376) = StartGetZoneData(mDNSStorage, *(i + 40), RecordRegistrationGotZoneData, i);
                  }
                }

                mDNS_UpdateAllowSleep(mDNSStorage);
                v39 = 17275;
                goto LABEL_153;
              }

              while (2)
              {
                v53 = v1[444];
                v54 = v52[4];
                if (v54)
                {
                  if (v54 == v53)
                  {
                    goto LABEL_136;
                  }
                }

                else if (mDNSPlatformValidRecordForInterface(v52, v53, v44, v28, v29, v30, v31, v32))
                {
LABEL_136:
                  mDNSCoreRestartRegistration(mDNSStorage, v52, 4);
                }

                v52 = *v52;
                if (!v52)
                {
                  goto LABEL_141;
                }

                continue;
              }
            }

            v25 = mDNSLogCategory_mDNS_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_91;
            }

LABEL_72:
            v33 = v1[444];
            *buf = 67110147;
            *v73 = v33.i32[0];
            *&v73[4] = 2082;
            *&v73[6] = v1 + 3606;
            *&v73[14] = 2160;
            *&v73[16] = 1752392040;
            v74 = 1045;
            *v75 = 20;
            *&v75[4] = 2101;
            *&v75[6] = v1 + 445;
            v34 = v25;
            v35 = "Interface not represented in list; marking active and retriggering queries - ifid: %d, ifname: %{public}s, ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P";
          }

          else
          {
            if (v27)
            {
              if (!os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_91;
              }
            }

            else
            {
              v25 = mDNSLogCategory_mDNS_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_91;
              }
            }

            v40 = v1[444];
            *buf = 67110147;
            *v73 = v40.i32[0];
            *&v73[4] = 2082;
            *&v73[6] = v1 + 3606;
            *&v73[14] = 2160;
            *&v73[16] = 1752392040;
            v74 = 1045;
            *v75 = 20;
            *&v75[4] = 2101;
            *&v75[6] = v1 + 445;
            v34 = v25;
            v35 = "Interface already represented in list - ifid: %d, ifname: %{public}s, ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P";
          }

          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0x2Cu);
          goto LABEL_91;
        }

        v16 = mDNSLogCategory_mDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
          {
LABEL_41:
            *buf = 141559043;
            *v73 = 1752392040;
            *&v73[8] = 1045;
            *&v73[10] = 20;
            *&v73[14] = 2101;
            *&v73[16] = v1 + 445;
            v74 = 1042;
            *v75 = 20;
            *&v75[4] = 2098;
            *&v75[6] = v1 + 3580;
            v17 = v16;
            v18 = "Tried to register a NetworkInterfaceInfo with invalid mask - ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P, ifmask: %{public, mdnsresponder:ip_addr}.20P";
            v19 = 44;
            goto LABEL_42;
          }
        }

        else
        {
          v16 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        v15 = mDNSLogCategory_mDNS;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_ERROR))
          {
LABEL_39:
            *buf = 141558531;
            *v73 = 1752392040;
            *&v73[8] = 1045;
            *&v73[10] = 20;
            *&v73[14] = 2101;
            *&v73[16] = v1 + 445;
            v17 = v15;
            v18 = "Tried to register a NetworkInterfaceInfo with zero InterfaceID - ifaddr: %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P";
            v19 = 28;
LABEL_42:
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v18, buf, v19);
          }
        }

        else
        {
          v15 = mDNSLogCategory_mDNS_redacted;
          if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_39;
          }
        }
      }

LABEL_154:
      v57 = mDNSLogCategory_State;
      if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
      {
        v58 = v1[465].i32[0];
        v59 = CountMaskBits(&v1[447] + 1);
        v60 = " (Flashing)";
        if (!v1[462].i8[1])
        {
          v60 = "";
        }

        v61 = " (Occulting)";
        if (!v1[462].i8[2])
        {
          v61 = "";
        }

        v62 = " (Primary)";
        if (!v1[2].i8[0])
        {
          v62 = "";
        }

        *buf = 136449539;
        *v73 = v1 + 3606;
        *&v73[8] = 1024;
        *&v73[10] = v58;
        *&v73[14] = 2160;
        *&v73[16] = 1752392040;
        v74 = 1045;
        *v75 = 6;
        *&v75[4] = 2101;
        *&v75[6] = v1 + 3724;
        v76 = 2048;
        v77 = v1;
        v78 = 2048;
        v79 = v3;
        v80 = 2160;
        v81 = 1752392040;
        v82 = 1045;
        v83 = 20;
        v84 = 2101;
        v85 = v1 + 445;
        v86 = 1024;
        v87 = v59;
        v88 = 2082;
        v89 = v60;
        v90 = 2082;
        v91 = v61;
        v92 = 2082;
        v93 = v62;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "SetupActiveInterfaces: Registered %{public}s (%u) BSSID %{sensitive, mask.hash, mdnsresponder:mac_addr}.6P Struct addr %p, primary %p, %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P/%d%{public}s%{public}s%{public}s", buf, 0x7Eu);
      }

      v63 = v1[466].u16[1];
      if (v1[458].i8[7])
      {
        if (v63 != 30 && v63 != 2)
        {
          goto LABEL_174;
        }

        v64 = 56;
        if (v63 == 2)
        {
          v64 = 24;
        }

        v65 = *(mDNSStorage[0] + v64);
        if (SearchForInterfaceByName(&v1[450] + 6, v1[466].u16[1]) == v1)
        {
          mDNSGroupJoinOrLeave(v65, v1, 0);
        }

        v66 = v65;
        v67 = v1;
        v68 = 1;
      }

      else
      {
        if (v63 != 30 && v63 != 2 || SearchForInterfaceByName(&v1[450] + 6, v1[466].u16[1]) != v1)
        {
          goto LABEL_174;
        }

        v69 = 56;
        if (v63 == 2)
        {
          v69 = 24;
        }

        v66 = *(mDNSStorage[0] + v69);
        v67 = v1;
        v68 = 0;
      }

      mDNSGroupJoinOrLeave(v66, v67, v68);
LABEL_174:
      v1 = v1[460];
    }

    while (v1);
  }
}

uint64_t SearchForInterfaceByName(char *__s2, int a2)
{
  for (i = *mDNSStorage[0]; i; i = *(i + 3680))
  {
    if (*(i + 3696) && !strcmp((i + 3606), __s2))
    {
      switch(a2)
      {
        case 2:
          if (*(i + 3560) == 4)
          {
            return i;
          }

          break;
        case 30:
          if (*(i + 3560) == 6)
          {
            return i;
          }

          break;
        case 0:
          return i;
      }
    }
  }

  return i;
}

void AdvertiseInterface(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 3552);
  if (AWDLInterfaceID)
  {
    v6 = AWDLInterfaceID == v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = 1;
  }

  else
  {
    if (WiFiAwareInterfaceID)
    {
      v7 = WiFiAwareInterfaceID == v5;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  v9 = v8 | a3;
  if (v8 | a3)
  {
    v10 = mDNS_RandomizedHostNameCallback;
  }

  else
  {
    v10 = mDNS_HostNameCallback;
  }

  if (v9)
  {
    v11 = 10664;
  }

  else
  {
    v11 = 10408;
  }

  if (a3)
  {
    v12 = v8;
  }

  else
  {
    v12 = 1;
  }

  FirstAddressRecord = (a2 + 24);
  if (v12)
  {
    v14 = a2 + 24;
  }

  else
  {
    v14 = a2 + 2376;
  }

  if (*(v14 + 8))
  {
    return;
  }

  v47 = v12;
  v15 = v9 | *(a2 + 3676);
  memset(v52, 0, 74);
  if (v15)
  {
    v16 = 32;
  }

  else
  {
    v16 = 2;
  }

  v45 = v16;
  v17 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
      v18 = "randomized";
      if (!v9)
      {
        v18 = "normal";
      }

      goto LABEL_37;
    }
  }

  else
  {
    v17 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      v18 = "randomized";
      if (!v9)
      {
        v18 = "normal";
      }

LABEL_37:
      *buf = 136446466;
      v49 = v18;
      v50 = 2082;
      v51 = a2 + 3606;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "AdvertiseInterface: Advertising %{public}s hostname on interface %{public}s", buf, 0x16u);
    }
  }

  v19 = (a1 + v11);
  mDNS_SetupResourceRecord(v14, 0, *(a2 + 3552), 1, 0x1194u, v45, 0, v10, a2);
  if (v47)
  {
    mDNS_SetupResourceRecord(a2 + 1200, 0, *(a2 + 3552), 12, 0x1194u, 32, 0, 0, 0);
  }

  v26 = (a1 + v11);
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
      v28 = v26 - v19 + 1;
      if (v28 <= 0x100u)
      {
        memcpy((v14 + 652), v19, v28);
        goto LABEL_49;
      }

      break;
    }

    v26 += v27 + 1;
  }

  while (v26 - v19 <= 255);
  *(v14 + 652) = 0;
LABEL_49:
  v29 = *(a2 + 3560);
  if (v29 == 6)
  {
    v31 = 0;
    *(v14 + 12) = 28;
    *(*(v14 + 48) + 4) = *(a2 + 3564);
    v32 = v52 + 3;
    do
    {
      v33 = *(a2 + 3579 + v31);
      *(v32 - 3) = a0123456789abcd_0[v33 & 0xF];
      LOBYTE(v33) = a0123456789abcd_0[v33 >> 4];
      *(v32 - 2) = 46;
      *(v32 - 1) = v33;
      *v32 = 46;
      v32 += 4;
      --v31;
    }

    while (v31 != -16);
    v30 = &v52[4];
    goto LABEL_55;
  }

  if (v29 == 4)
  {
    *(v14 + 12) = 1;
    *(*(v14 + 48) + 4) = *(a2 + 3564);
    v43 = *(a2 + 3565);
    v44 = *(a2 + 3564);
    v41 = *(a2 + 3567);
    v42 = *(a2 + 3566);
    v30 = v52;
LABEL_55:
    mDNS_snprintf(v30);
  }

  if (!v47 || (*(a2 + 1852) = 0, AppendDNSNameString((a2 + 1852), v52, v20, v21, v22, v23, v24, v25), *(a2 + 1320) = 1, *(a2 + 1322) = 1, (v8 & 1) == 0))
  {
    FirstAddressRecord = GetFirstAddressRecordEx(*(a1 + 12656), a3);
  }

  if (FirstAddressRecord)
  {
    v34 = FirstAddressRecord;
  }

  else
  {
    v34 = v14;
  }

  *(v14 + 96) = v34;
  mDNS_Register_internal(a1, v14);
  v35 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
LABEL_67:
      GetRRDisplayString_rdb((v14 + 8), (*(v14 + 48) + 4), (a1 + 47032));
      *buf = 141558275;
      v49 = 1752392040;
      v50 = 2085;
      v51 = a1 + 47032;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Initialized RRSet for %{sensitive, mask.hash}s", buf, 0x16u);
    }
  }

  else
  {
    v35 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_67;
    }
  }

  v36 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_75;
    }

    v38 = *(v14 + 96);
    *buf = 134217984;
    v49 = v38;
  }

  else
  {
    v36 = mDNSLogCategory_Default_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_75;
    }

    v37 = *(v14 + 96);
    *buf = 134217984;
    v49 = v37;
  }

  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "RRSet:                %lx", buf, 0xCu);
LABEL_75:
  if (v47)
  {
    mDNS_Register_internal(a1, a2 + 1200);
  }

  v39 = *(a2 + 3552);
  if (v39 == AWDLInterfaceID || v39 == WiFiAwareInterfaceID)
  {
    if (!*(a2 + 32) && !*(a2 + 1208))
    {
      goto LABEL_88;
    }

    v40 = mDNSLogCategory_D2D;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_D2D == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_D2D, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v49 = a2 + 3606;
        goto LABEL_87;
      }
    }

    else
    {
      v40 = mDNSLogCategory_D2D_redacted;
      if (os_log_type_enabled(mDNSLogCategory_D2D_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v49 = a2 + 3606;
LABEL_87:
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "D2D_start_advertising_interface - ifname: %{public}s", buf, 0xCu);
      }
    }

LABEL_88:
    if (*(a2 + 32))
    {
      internal_start_advertising_service(a2 + 32, 0, 0);
    }

    if (*(a2 + 1208))
    {
      internal_start_advertising_service(a2 + 1208, 0, 0);
    }
  }
}

double mDNS_SetupResourceRecord(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, unsigned int a5, char a6, int a7, uint64_t a8, uint64_t a9)
{
  if (a3 != -2 || a7 == 4)
  {
    if (a3 != -3 || a7 == 5)
    {
      if (a3 || (a7 & 0xFFFFFFFE) != 4)
      {
        goto LABEL_32;
      }

      v17 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v17 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }
      }

      v26 = 134218240;
      v27 = 0;
      v28 = 1024;
      v29 = a7;
      v19 = "mDNS_SetupResourceRecord: ERROR!! Mismatch InterfaceAny record InterfaceID %p called with artype %u";
    }

    else
    {
      v17 = mDNSLogCategory_Default;
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
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v17 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }
      }

      v26 = 134218240;
      v27 = -3;
      v28 = 1024;
      v29 = a7;
      v19 = "mDNS_SetupResourceRecord: ERROR!! Mismatch P2P record InterfaceID %p called with artype %u";
    }
  }

  else
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
        goto LABEL_32;
      }
    }

    else
    {
      v17 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }
    }

    v26 = 134218240;
    v27 = -2;
    v28 = 1024;
    v29 = a7;
    v19 = "mDNS_SetupResourceRecord: ERROR!! Mismatch LocalOnly record InterfaceID %p called with artype %u";
  }

  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v19, &v26, 0x12u);
LABEL_32:
  if (a5)
  {
    v23 = a5;
  }

  else
  {
    v23 = 4500;
  }

  *(a1 + 8) = a6;
  if (a5 <= 0x20C49B)
  {
    v24 = v23;
  }

  else
  {
    v24 = 2147483;
  }

  *(a1 + 32) = a3;
  *(a1 + 40) = a1 + 652;
  *(a1 + 12) = a4;
  *(a1 + 14) = 1;
  *(a1 + 16) = v24;
  *(a1 + 56) = 0;
  if (!a2)
  {
    a2 = a1 + 908;
    *(a1 + 908) = 264;
  }

  *(a1 + 48) = a2;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = a8;
  *(a1 + 112) = a9;
  *(a1 + 124) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = a7;
  *(a1 + 120) = 0;
  *(a1 + 344) = 0;
  *(a1 + 348) = 0;
  *(a1 + 352) = 0;
  *(a1 + 356) = 0;
  *(a1 + 358) = 0;
  *(a1 + 368) = a1 + 652;
  *(a1 + 616) = 0;
  *(a1 + 620) = 0;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 596) = 0;
  *(a1 + 652) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 577) = 0u;
  return result;
}

_BYTE *AppendDNSNameString(_BYTE *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 257;
  v9 = a1;
  do
  {
    if (!v9)
    {
      break;
    }

    v10 = *v9;
    if (v10 > 0x3F)
    {
      break;
    }

    if (!*v9)
    {
      v8 = (v9 - a1 + 1);
      break;
    }

    v9 += v10 + 1;
  }

  while (v9 - a1 < 256);
  v11 = &a1[v8 - 1];
  v12 = (a1 + 255);
  v13 = *a2;
  v14 = a2;
  if (v13 == 46)
  {
    if (a2[1])
    {
      v13 = 46;
    }

    else
    {
      v13 = 0;
    }

    if (a2[1])
    {
      v14 = a2;
    }

    else
    {
      v14 = a2 + 1;
    }
  }

  if (v13)
  {
    v15 = v11 >= v12;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    i = v11;
LABEL_44:
    *i = 0;
    v23 = i + 1;
    if (*v14)
    {
      return 0;
    }

    else
    {
      return v23;
    }
  }

  else
  {
    while (v13 != 46)
    {
      for (i = (v11 + 1); v13 && v13 != 46 && i < v12; ++i)
      {
        v17 = v14 + 1;
        if (v13 == 92)
        {
          v13 = *v17;
          if (!*v17)
          {
            goto LABEL_35;
          }

          v17 = v14 + 2;
          if ((v13 - 48) <= 9)
          {
            v18 = *v17;
            if ((v18 - 48) <= 9)
            {
              v19 = v14[3] - 48;
              if (v19 <= 9)
              {
                v20 = v14 + 4;
                if (((10 * v18 + 32) & 0xFE) + 100 * (v13 - 48) + v19 < 0x100)
                {
                  LOBYTE(v13) = ((10 * v18 + 32) & 0xFE) + 100 * (v13 - 48) + v19;
                  v17 = v20;
                }
              }
            }
          }
        }

        *i = v13;
        LOBYTE(v13) = *v17;
        v14 = v17;
      }

      v17 = v14;
LABEL_35:
      v21 = &i[~v11];
      if (v21 > 63)
      {
        return 0;
      }

      if (v13 == 46)
      {
        v14 = v17 + 1;
      }

      else
      {
        v14 = v17;
      }

      *v11 = v21;
      LOBYTE(v13) = *v14;
      if (*v14)
      {
        v22 = i >= v12;
      }

      else
      {
        v22 = 1;
      }

      v11 = i;
      if (v22)
      {
        goto LABEL_44;
      }
    }

    LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "AppendDNSNameString: Illegal empty label in name %s", a4, a5, a6, a7, a8, a2);
    return 0;
  }
}

size_t mDNS_Register_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v11 = *(a2 + 12);
  if (v11 <= 0x27)
  {
    if (((1 << v11) & 0x1000248000) != 0)
    {
      v12 = 6;
    }

    else if (((1 << v11) & 0x8000001024) != 0)
    {
      v12 = 4;
    }

    else
    {
      if (v11 != 33)
      {
        goto LABEL_9;
      }

      v12 = 10;
    }

    v10 = (*(a2 + 48) + v12);
  }

LABEL_9:
  v13 = *(a2 + 16);
  if (v13 <= 0)
  {
    v18 = mDNSLogCategory_State;
    v15 = 4294901756;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v15;
    }

    v19 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v19);
    *__n_6 = 67109635;
    *&__n_6[4] = v13;
    *&__n_6[8] = 2160;
    *&__n_6[10] = 1752392040;
    *&__n_6[18] = 2085;
    *&__n_6[20] = v19;
    v17 = "mDNS_Register_internal: TTL %X should be 1 - 0x7FFFFFFF %{sensitive, mask.hash}s";
    v20 = v18;
    v21 = 28;
    goto LABEL_19;
  }

  if (!*(a2 + 8))
  {
    v14 = mDNSLogCategory_State;
    v15 = 4294901756;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v15;
    }

    v22 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v22);
    *__n_6 = 141558275;
    *&__n_6[4] = 1752392040;
    *&__n_6[12] = 2085;
    *&__n_6[14] = v22;
    v17 = "mDNS_Register_internal: RecordType must be non-zero %{sensitive, mask.hash}s";
    goto LABEL_18;
  }

  if (*(a1 + 76))
  {
    v14 = mDNSLogCategory_State;
    v15 = 4294901733;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v15;
    }

    v16 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v16);
    *__n_6 = 141558275;
    *&__n_6[4] = 1752392040;
    *&__n_6[12] = 2085;
    *&__n_6[14] = v16;
    v17 = "mDNS_Register_internal: Shutting down, can't register %{sensitive, mask.hash}s";
LABEL_18:
    v20 = v14;
    v21 = 22;
    goto LABEL_19;
  }

  v23 = (a1 + 12616);
  if (*(a1 + 14))
  {
    v24 = *(a2 + 32);
    if (!v24)
    {
      if (*(a2 + 122))
      {
        *(a2 + 32) = -2;
        *(a2 + 172) = 4;
LABEL_28:
        v25 = mDNSLogCategory_State;
        if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
        {
          GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
          *__n_6 = 141558275;
          *&__n_6[4] = 1752392040;
          *&__n_6[12] = 2085;
          *&__n_6[14] = a1 + 47032;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "mDNS_Register_internal: Diverting record to local-only %{sensitive, mask.hash}s", __n_6, 0x16u);
        }

        goto LABEL_30;
      }

      if (!IsLocalDomain(*(a2 + 40)))
      {
        goto LABEL_30;
      }

      v24 = *(a2 + 32);
    }

    switch(v24)
    {
      case -3:
        goto LABEL_25;
      case -2:
        goto LABEL_30;
      case 0:
LABEL_25:
        *(a2 + 32) = -2;
        *(a2 + 172) = 4;
        goto LABEL_28;
    }

    v54 = a1 + 12656;
    while (1)
    {
      v54 = *v54;
      if (!v54)
      {
        break;
      }

      if (*(v54 + 3552) == v24)
      {
        if (*(v54 + 3670))
        {
          break;
        }

        goto LABEL_25;
      }
    }
  }

LABEL_30:
  if ((*(a2 + 172) & 0xFFFFFFFE) == 4)
  {
    v26 = AuthGroupForName(a1 + 6264, *(a2 + 24), *(a2 + 40));
    v27 = (a1 + 12616);
    if (v26)
    {
      v28 = v26 + 2;
      while (1)
      {
        v28 = *v28;
        if (!v28)
        {
          break;
        }

        if (v28 == a2)
        {
          v29 = mDNSLogCategory_State;
          if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
          {
            v30 = *(a2 + 40);
            if (v30)
            {
              v31 = *(a2 + 40);
              while (1)
              {
                if (!v31 || (v32 = *v31, v32 > 0x3F))
                {
LABEL_42:
                  v33 = 257;
                  goto LABEL_132;
                }

                if (!*v31)
                {
                  break;
                }

                v31 += v32 + 1;
                if (&v31[-v30] >= 256)
                {
                  goto LABEL_42;
                }
              }

              v33 = (v31 - v30 + 1);
            }

            else
            {
              v33 = 0;
            }

LABEL_132:
            v74 = DNSTypeName(*(a2 + 12));
            *__n_6 = 134219011;
            *&__n_6[4] = a2;
            *&__n_6[12] = 2160;
            *&__n_6[14] = 1752392040;
            *&__n_6[22] = 1040;
            *&__n_6[24] = v33;
            *&__n_6[28] = 2101;
            *&__n_6[30] = v30;
            *&__n_6[38] = 2082;
            *&__n_6[40] = v74;
            v72 = "mDNS_Register_internal: ERROR!! Tried to register LocalOnly AuthRecord %p %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) that's already in the list";
            goto LABEL_133;
          }

          return 4294901749;
        }
      }

      v27 = (a1 + 12616);
    }
  }

  else
  {
    v34 = (a1 + 12616);
    do
    {
      v27 = v34;
      v34 = *v34;
      if (v34)
      {
        v35 = v34 == a2;
      }

      else
      {
        v35 = 1;
      }
    }

    while (!v35);
    if (v34)
    {
      v29 = mDNSLogCategory_State;
      if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
      {
        return 4294901749;
      }

      v36 = *(a2 + 40);
      if (v36)
      {
        v37 = *(a2 + 40);
        do
        {
          if (!v37)
          {
            break;
          }

          v38 = *v37;
          if (v38 > 0x3F)
          {
            break;
          }

          if (!*v37)
          {
            v39 = (v37 - v36 + 1);
            goto LABEL_129;
          }

          v37 += v38 + 1;
        }

        while (&v37[-v36] < 256);
        v39 = 257;
      }

      else
      {
        v39 = 0;
      }

LABEL_129:
      v73 = DNSTypeName(*(a2 + 12));
      *__n_6 = 134219011;
      *&__n_6[4] = a2;
      *&__n_6[12] = 2160;
      *&__n_6[14] = 1752392040;
      *&__n_6[22] = 1040;
      *&__n_6[24] = v39;
      *&__n_6[28] = 2101;
      *&__n_6[30] = v36;
      *&__n_6[38] = 2082;
      *&__n_6[40] = v73;
      v72 = "mDNS_Register_internal: ERROR!! Tried to register AuthRecord %p %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) that's already in the list";
      goto LABEL_133;
    }
  }

  v40 = (a1 + 12624);
  do
  {
    v41 = v40;
    v40 = *v40;
    if (v40)
    {
      v42 = v40 == a2;
    }

    else
    {
      v42 = 1;
    }
  }

  while (!v42);
  if (v40)
  {
    v29 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(a2 + 40);
      if (v43)
      {
        v44 = *(a2 + 40);
        while (1)
        {
          if (!v44 || (v45 = *v44, v45 > 0x3F))
          {
LABEL_73:
            v46 = 257;
            goto LABEL_127;
          }

          if (!*v44)
          {
            break;
          }

          v44 += v45 + 1;
          if (&v44[-v43] >= 256)
          {
            goto LABEL_73;
          }
        }

        v46 = (v44 - v43 + 1);
      }

      else
      {
        v46 = 0;
      }

LABEL_127:
      v71 = DNSTypeName(*(a2 + 12));
      *__n_6 = 134219011;
      *&__n_6[4] = a2;
      *&__n_6[12] = 2160;
      *&__n_6[14] = 1752392040;
      *&__n_6[22] = 1040;
      *&__n_6[24] = v46;
      *&__n_6[28] = 2101;
      *&__n_6[30] = v43;
      *&__n_6[38] = 2082;
      *&__n_6[40] = v71;
      v72 = "mDNS_Register_internal: ERROR!! Tried to register AuthRecord %p %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s) that's already in the Duplicate list";
LABEL_133:
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v72, __n_6, 0x30u);
    }

    return 4294901749;
  }

  v47 = *(a2 + 88);
  if (v47)
  {
    v48 = *(a2 + 8);
    if (v48 != 32)
    {
      if (v48 != 2)
      {
        v15 = 4294901747;
        v61 = mDNSLogCategory_State;
        if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
        {
          return v15;
        }

        v62 = *(a2 + 40);
        if (v62)
        {
          v63 = *(a2 + 40);
          while (1)
          {
            if (!v63 || (v64 = *v63, v64 > 0x3F))
            {
LABEL_116:
              v65 = 257;
              goto LABEL_191;
            }

            if (!*v63)
            {
              break;
            }

            v63 += v64 + 1;
            if (&v63[-v62] >= 256)
            {
              goto LABEL_116;
            }
          }

          v65 = (v63 - v62 + 1);
        }

        else
        {
          v65 = 0;
        }

LABEL_191:
        v104 = DNSTypeName(*(a2 + 12));
        *__n_6 = 141558787;
        *&__n_6[4] = 1752392040;
        *&__n_6[12] = 1040;
        *&__n_6[14] = v65;
        *&__n_6[18] = 2101;
        *&__n_6[20] = v62;
        *&__n_6[28] = 2082;
        *&__n_6[30] = v104;
        v17 = "mDNS_Register_internal: ERROR! %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s): rr->DependentOn && RecordType != kDNSRecordTypeUnique or kDNSRecordTypeKnownUnique";
        v20 = v61;
        v21 = 38;
        goto LABEL_19;
      }

      *(a2 + 8) = 16;
    }

    if ((*(v47 + 8) & 0x32) != 0)
    {
      goto LABEL_79;
    }

    v15 = 4294901747;
    v66 = mDNSLogCategory_State;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v15;
    }

    v67 = *(a2 + 40);
    if (v67)
    {
      v68 = *(a2 + 40);
      while (1)
      {
        if (!v68 || (v69 = *v68, v69 > 0x3F))
        {
LABEL_124:
          v70 = 257;
          goto LABEL_199;
        }

        if (!*v68)
        {
          break;
        }

        v68 += v69 + 1;
        if (&v68[-v67] >= 256)
        {
          goto LABEL_124;
        }
      }

      v70 = (v68 - v67 + 1);
    }

    else
    {
      v70 = 0;
    }

LABEL_199:
    v109 = DNSTypeName(*(a2 + 12));
    v110 = *(*(a2 + 88) + 8);
    *__n_6 = 141559043;
    *&__n_6[4] = 1752392040;
    *&__n_6[12] = 1040;
    *&__n_6[14] = v70;
    *&__n_6[18] = 2101;
    *&__n_6[20] = v67;
    *&__n_6[28] = 2082;
    *&__n_6[30] = v109;
    *&__n_6[38] = 1024;
    *&__n_6[40] = v110;
    v17 = "mDNS_Register_internal: ERROR! %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s): rr->DependentOn->RecordType bad type %X";
    v20 = v66;
    v21 = 44;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v17, __n_6, v21);
    return v15;
  }

LABEL_79:
  *a2 = 0;
  v49 = *(a2 + 120);
  if (*(a2 + 120) && v10)
  {
    *v10 = 0;
    v49 = *(a2 + 120);
  }

  *(a2 + 188) = 0;
  if (*(a2 + 8) == 2)
  {
    v50 = 3;
  }

  else
  {
    v50 = 0;
  }

  *(a2 + 190) = v50;
  *(a2 + 191) = 4;
  *(a2 + 192) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 256) = 0;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0;
  if (!v49)
  {
    InitializeLastAPTime(a1, a2);
  }

  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(a2 + 328) = 10;
  *(a2 + 336) = 0;
  if (*(a2 + 126) && !*(a2 + 144))
  {
    *(a2 + 191) = 2;
  }

  *(a2 + 344) = 0;
  *(a2 + 348) = 0;
  *(a2 + 352) = 0;
  *(a2 + 356) = 0;
  *(a2 + 358) = 0;
  v51 = *(a2 + 40);
  *(a2 + 360) = 0;
  *(a2 + 368) = v51;
  *(a2 + 616) = 0;
  *(a2 + 620) = 0;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 624) = 0;
  *(a2 + 640) = 0;
  *(a2 + 632) = 0;
  if (*(a2 + 12) == 16 && !*(a2 + 20))
  {
    *(a2 + 20) = 1;
    *(*(a2 + 48) + 4) = 0;
  }

  if (!*(a2 + 120))
  {
    *(a2 + 20) = GetRDLength(a2 + 8, 0, a3, a4, a5, a6, a7, a8);
    *(a2 + 22) = GetRDLength(a2 + 8, 1, v55, v56, v57, v58, v59, v60);
    goto LABEL_142;
  }

  SetTargetToHostName(a1, a2);
  if (*(a2 + 344) != 8)
  {
    goto LABEL_142;
  }

  v52 = *(a2 + 12);
  if (v52 <= 0x27)
  {
    if (((1 << v52) & 0x1000248000) != 0)
    {
      v53 = 6;
    }

    else if (((1 << v52) & 0x8000001024) != 0)
    {
      v53 = 4;
    }

    else
    {
      if (v52 != 33)
      {
        goto LABEL_140;
      }

      v53 = 10;
    }

    *(*(a2 + 48) + v53) = 0;
  }

LABEL_140:
  v76 = mDNSLogCategory_State;
  if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
  {
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
    *__n_6 = 136446210;
    *&__n_6[4] = a1 + 47032;
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "mDNS_Register_internal: record %{public}s in NoTarget state", __n_6, 0xCu);
  }

LABEL_142:
  v77 = *(a2 + 40);
  v78 = v77;
  while (1)
  {
    if (!v78)
    {
      goto LABEL_152;
    }

    v79 = *v78;
    if (v79 > 0x3F)
    {
      goto LABEL_152;
    }

    if (!*v78)
    {
      break;
    }

    v78 += v79 + 1;
    if (&v78[-v77] > 255)
    {
      goto LABEL_152;
    }
  }

  if ((v78 - v77 + 1) >= 0x101u)
  {
LABEL_152:
    v15 = 4294901747;
    v14 = mDNSLogCategory_State;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v15;
    }

    v82 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v82);
    *__n_6 = 141558275;
    *&__n_6[4] = 1752392040;
    *&__n_6[12] = 2085;
    *&__n_6[14] = v82;
    v17 = "Attempt to register record with invalid name: %{sensitive, mask.hash}s";
    goto LABEL_18;
  }

  v80 = *(a2 + 48);
  if (!ValidateRData(*(a2 + 12), *(a2 + 20), v80))
  {
    v15 = 4294901747;
    v14 = mDNSLogCategory_State;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v15;
    }

    v83 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (v80 + 4), v83);
    *__n_6 = 141558275;
    *&__n_6[4] = 1752392040;
    *&__n_6[12] = 2085;
    *&__n_6[14] = v83;
    v17 = "Attempt to register record with invalid rdata: %{sensitive, mask.hash}s";
    goto LABEL_18;
  }

  *(a2 + 24) = DomainNameHashValue(v77);
  if (v10)
  {
    v81 = DomainNameHashValue(v10);
  }

  else
  {
    v81 = RDataHashValue(a2 + 8);
  }

  *(a2 + 28) = v81;
  if ((*(a2 + 172) & 0xFFFFFFFE) == 4 && (*(a2 + 8) & 0x32) != 0 && CheckAuthRecordConflict(a1 + 6264, a2))
  {
    v84 = mDNSLogCategory_State;
    v15 = 4294901748;
    if (!os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      return v15;
    }

    v85 = (a1 + 47032);
    GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v85);
    v86 = *(a2 + 32);
    *__n_6 = 141558787;
    *&__n_6[4] = 1752392040;
    *&__n_6[12] = 2085;
    *&__n_6[14] = v85;
    *&__n_6[22] = 2048;
    *&__n_6[24] = a2;
    *&__n_6[32] = 2048;
    *&__n_6[34] = v86;
    v17 = "mDNS_Register_internal: Name conflict %{sensitive, mask.hash}s (%p), InterfaceID %p";
    v20 = v84;
    v21 = 42;
    goto LABEL_19;
  }

  if (!*(a2 + 32) && !*(a2 + 122) && !IsLocalDomain(*(a2 + 40)))
  {
    if (!*(a1 + 12632))
    {
      *(a1 + 12632) = a2;
    }

    do
    {
      v125 = v27;
      v27 = *v27;
    }

    while (v27);
    *v125 = a2;
    if (*(a2 + 8) == 2)
    {
      *(a2 + 8) = 16;
    }

    v15 = 0;
    *(a2 + 189) = 0;
    *(a2 + 191) = 0;
    if (*(a2 + 344) == 8)
    {
      return v15;
    }

    ActivateUnicastRegistration(a1, a2);
    return 0;
  }

  if ((*(a2 + 172) & 0xFFFFFFFE) == 4)
  {
    *(a2 + 189) = 0;
    *(a2 + 191) = 0;
    v87 = CheckAuthIdenticalRecord(a1 + 6264, a2);
    v88 = *(a2 + 40);
    v92 = mDNS_DomainNameFNV1aHash(v88);
    if (v87)
    {
      goto LABEL_168;
    }

LABEL_188:
    result = *(a2 + 20);
    if (result >= 0x201)
    {
      result = malloc_type_malloc(result, 0xD6683CF4uLL);
      if (!result)
      {
        goto LABEL_306;
      }

      v101 = result;
      LODWORD(result) = *(a2 + 20);
      v103 = result;
      v102 = v101;
    }

    else
    {
      v101 = 0;
      v102 = &word_1001787D0;
      v103 = 512;
    }

    if (!result)
    {
      v111 = mDNSLogCategory_State;
      if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
      {
        if (v88)
        {
          v112 = v88;
          while (1)
          {
            if (!v112 || (v113 = *v112, v113 > 0x3F))
            {
LABEL_207:
              v114 = 257;
              goto LABEL_254;
            }

            if (!*v112)
            {
              break;
            }

            v112 += v113 + 1;
            if (v112 - v88 >= 256)
            {
              goto LABEL_207;
            }
          }

          v114 = (v112 - v88 + 1);
        }

        else
        {
          v114 = 0;
        }

LABEL_254:
        v130 = *(a2 + 12);
        *__n_6 = 141559043;
        *&__n_6[4] = 1752392040;
        *&__n_6[12] = 1040;
        *&__n_6[14] = v114;
        *&__n_6[18] = 2101;
        *&__n_6[20] = v88;
        *&__n_6[28] = 1024;
        *&__n_6[30] = v92;
        *&__n_6[34] = 1024;
        *&__n_6[36] = v130;
        _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "mDNS_Register_internal: adding to active record list -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>", __n_6, 0x28u);
      }

      goto LABEL_264;
    }

    __n_2 = 0;
    __n = 0;
    RDataBytesPointer = ResourceRecordGetRDataBytesPointer(a2 + 8, v102, v103, &__n, &__n_2, v89, v90, v91);
    if (__n_2)
    {
LABEL_264:
      if (v101)
      {
        free(v101);
      }

      if ((*(a2 + 172) & 0xFFFFFFFE) != 4)
      {
        if (!*(a1 + 12632))
        {
          *(a1 + 12632) = a2;
        }

        *v27 = a2;
        goto LABEL_292;
      }

      inserted = InsertAuthRecord(a1 + 6264, a2);
      if (inserted && !inserted[5])
      {
        *(a1 + 12648) = 1;
        inserted[5] = a2;
      }

      if (*(a2 + 8) == 2)
      {
        *(a2 + 8) = 16;
      }

      AcknowledgeRecord(a1, a2);
      return 0;
    }

    __src = RDataBytesPointer;
    v148 = v92;
    if (__n < 0x1FFuLL)
    {
      v106 = 0;
      v107 = 512;
      v108 = word_1001789D0;
LABEL_224:
      v121 = mDNSLogCategory_State;
      if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
      {
        v145 = v106;
        if (v88)
        {
          v122 = v88;
          while (1)
          {
            if (!v122 || (v123 = *v122, v123 > 0x3F))
            {
LABEL_231:
              v124 = 257;
              goto LABEL_257;
            }

            if (!*v122)
            {
              break;
            }

            v122 += v123 + 1;
            if (v122 - v88 >= 256)
            {
              goto LABEL_231;
            }
          }

          v124 = (v122 - v88 + 1);
LABEL_257:
          v143 = v124;
        }

        else
        {
          v143 = 0;
        }

        v131 = *(a2 + 12);
        v132 = __n;
        v133 = __n + 2;
        if (v133 <= v107)
        {
          *v108 = __rev16(v131);
          memcpy(v108 + 1, __src, v132);
        }

        else
        {
          v108 = 0;
        }

        *__n_6 = 141559811;
        *&__n_6[4] = 1752392040;
        *&__n_6[12] = 1040;
        *&__n_6[14] = v143;
        *&__n_6[18] = 2101;
        *&__n_6[20] = v88;
        *&__n_6[28] = 1024;
        *&__n_6[30] = v148;
        *&__n_6[34] = 1024;
        *&__n_6[36] = v131;
        *&__n_6[40] = 2160;
        *&__n_6[42] = 1752392040;
        v153 = 1040;
        v154 = v133;
        v155 = 2101;
        v156 = v108;
        _os_log_impl(&_mh_execute_header, v121, OS_LOG_TYPE_DEFAULT, "mDNS_Register_internal: adding to active record list -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", __n_6, 0x42u);
        v106 = v145;
      }

      if (v106)
      {
        free(v106);
      }

      goto LABEL_264;
    }

    v107 = __n + 2;
    result = malloc_type_malloc(__n + 2, 0xD6683CF4uLL);
    if (result)
    {
      v108 = result;
      v106 = result;
      goto LABEL_224;
    }

LABEL_306:
    __break(1u);
    return result;
  }

  v87 = *v23;
  if (!*v23)
  {
LABEL_187:
    v88 = *(a2 + 40);
    v92 = mDNS_DomainNameFNV1aHash(v88);
    goto LABEL_188;
  }

  while (1)
  {
    if (*(v87 + 32) != *(a2 + 32))
    {
      goto LABEL_186;
    }

    v96 = *(v87 + 8);
    v97 = *(a2 + 8);
    v98 = v97 == 1 || v96 == 1;
    v99 = v98 || v96 == v97;
    v100 = v99 || (v97 | v96) == 18;
    if (!v100 || !IdenticalResourceRecord(v87 + 8, a2 + 8))
    {
      goto LABEL_186;
    }

    if (*(v87 + 8) != 1)
    {
      break;
    }

    *(v87 + 191) = 0;
LABEL_186:
    v87 = *v87;
    if (!v87)
    {
      goto LABEL_187;
    }
  }

  v88 = *(a2 + 40);
  v92 = mDNS_DomainNameFNV1aHash(v88);
LABEL_168:
  result = *(a2 + 20);
  if (result < 0x201)
  {
    v93 = 0;
    v94 = &word_1001787D0;
    v95 = 512;
    goto LABEL_210;
  }

  result = malloc_type_malloc(result, 0xA2C11154uLL);
  if (!result)
  {
    goto LABEL_306;
  }

  v93 = result;
  LODWORD(result) = *(a2 + 20);
  v95 = result;
  v94 = v93;
LABEL_210:
  if (!result)
  {
    v117 = mDNSLogCategory_State;
    if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
    {
      if (v88)
      {
        v118 = v88;
        while (1)
        {
          if (!v118 || (v119 = *v118, v119 > 0x3F))
          {
LABEL_221:
            v120 = 257;
            goto LABEL_278;
          }

          if (!*v118)
          {
            break;
          }

          v118 += v119 + 1;
          if (v118 - v88 >= 256)
          {
            goto LABEL_221;
          }
        }

        v120 = (v118 - v88 + 1);
      }

      else
      {
        v120 = 0;
      }

LABEL_278:
      v135 = *(a2 + 12);
      *__n_6 = 141559043;
      *&__n_6[4] = 1752392040;
      *&__n_6[12] = 1040;
      *&__n_6[14] = v120;
      *&__n_6[18] = 2101;
      *&__n_6[20] = v88;
      *&__n_6[28] = 1024;
      *&__n_6[30] = v92;
      *&__n_6[34] = 1024;
      *&__n_6[36] = v135;
      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "mDNS_Register_internal: adding to duplicate list -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: <none>", __n_6, 0x28u);
    }

    goto LABEL_287;
  }

  __n_2 = 0;
  __n = 0;
  v115 = ResourceRecordGetRDataBytesPointer(a2 + 8, v94, v95, &__n, &__n_2, v89, v90, v91);
  if (__n_2)
  {
    goto LABEL_287;
  }

  v116 = v115;
  v149 = v92;
  if (__n < 0x1FFuLL)
  {
    v144 = word_1001789D0;
    __srca = 0;
    v142 = 512;
    goto LABEL_242;
  }

  v142 = __n + 2;
  result = malloc_type_malloc(__n + 2, 0xA2C11154uLL);
  __srca = result;
  if (!result)
  {
    goto LABEL_306;
  }

  v144 = result;
LABEL_242:
  v126 = mDNSLogCategory_State;
  if (os_log_type_enabled(mDNSLogCategory_State, OS_LOG_TYPE_DEFAULT))
  {
    if (v88)
    {
      v127 = v88;
      while (1)
      {
        if (!v127 || (v128 = *v127, v128 > 0x3F))
        {
LABEL_249:
          v129 = 257;
          goto LABEL_280;
        }

        if (!*v127)
        {
          break;
        }

        v127 += v128 + 1;
        if (v127 - v88 >= 256)
        {
          goto LABEL_249;
        }
      }

      v129 = (v127 - v88 + 1);
LABEL_280:
      v141 = v129;
    }

    else
    {
      v141 = 0;
    }

    v136 = *(a2 + 12);
    v137 = __n;
    v138 = __n + 2;
    if (v138 <= v142)
    {
      *v144 = __rev16(v136);
      memcpy(v144 + 1, v116, v137);
    }

    else
    {
      v144 = 0;
    }

    *__n_6 = 141559811;
    *&__n_6[4] = 1752392040;
    *&__n_6[12] = 1040;
    *&__n_6[14] = v141;
    *&__n_6[18] = 2101;
    *&__n_6[20] = v88;
    *&__n_6[28] = 1024;
    *&__n_6[30] = v149;
    *&__n_6[34] = 1024;
    *&__n_6[36] = v136;
    *&__n_6[40] = 2160;
    *&__n_6[42] = 1752392040;
    v153 = 1040;
    v154 = v138;
    v155 = 2101;
    v156 = v144;
    _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "mDNS_Register_internal: adding to duplicate list -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x), type: %{mdns:rrtype}d, rdata: %{sensitive, mask.hash, mdns:rdata}.*P", __n_6, 0x42u);
  }

  if (__srca)
  {
    free(__srca);
  }

LABEL_287:
  if (v93)
  {
    free(v93);
  }

  *v41 = a2;
  if (*(a2 + 8) == 2 && *(v87 + 8) == 16)
  {
    *(a2 + 190) = 0;
  }

LABEL_292:
  if (*(a2 + 32) || *(a2 + 122) || IsLocalDomain(*(a2 + 40)))
  {
    IncrementAutoTargetServices(a1, a2);
    if (*(a2 + 8) - 1 >= 2)
    {
      AcknowledgeRecord(a1, a2);
    }

    mDNS_UpdateAllowSleep(a1);
  }

  if (!*(a2 + 126) && *(a2 + 12) == 10)
  {
    v139 = *(a2 + 40);
    if (*v139)
    {
      v140 = *v139 + 1;
    }

    else
    {
      v140 = 0;
    }

    if (SameDomainLabelPointer(&v139[v140], "\n_keepalive"))
    {
      memset(__n_6, 0, 20);
      *(a2 + 8) = 32;
      *(a2 + 191) = 0;
      getKeepaliveRaddr(a1, a2, __n_6);
      mDNSPlatformGetRemoteMacAddr(__n_6);
    }
  }

  v15 = 0;
  *(a2 + 648) = *(a1 + 64);
  return v15;
}

void InitializeLastAPTime(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  if (v4)
  {
    v5 = 1000;
  }

  else
  {
    if ((*(a2 + 8) & 0x30) != 0)
    {
      v6 = 500;
    }

    else
    {
      v6 = 0;
    }

    if ((*(a2 + 8) & 2) != 0)
    {
      v7 = 250;
    }

    else
    {
      v7 = v6;
    }

    if ((*(a2 + 8) & 0xC) != 0)
    {
      v5 = 500;
    }

    else
    {
      v5 = v7;
    }
  }

  *(a2 + 280) = v5;
  if (!*(a2 + 190))
  {
    v16 = *(a2 + 8);
    if (v16 == 8 || v16 == 32 || (v17 = a1[3168]) == 0 || (v9 = a1[16], (v17 - v9) < 0))
    {
      v9 = a1[16];
      v18 = v9 - v5;
    }

    else
    {
      v18 = v17 - v5 + (v5 >> 1) + 750;
    }

    *(a2 + 284) = v18;
    if (v4)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  *(a2 + 180) = 0;
  v8 = a1[3168];
  v9 = a1[16];
  if (!v8 || ((v8 - v9) & 0x80000000) != 0)
  {
    do
    {
      v10 = arc4random() & 0x7F;
    }

    while (v10 > 0x7D);
    v8 = v9 + v10 + 125;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    a1[3168] = v8;
    v11 = a1[24];
    if ((v8 - v11) >= 0)
    {
      if (v11 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = a1[24];
      }

      a1[3168] = v8;
    }

    v9 = a1[16];
    if ((v8 - v9) < 0)
    {
      a1[3168] = v9;
      v8 = v9;
    }

    v12 = a1[23];
    if ((v8 - v12) >= 0)
    {
      if (v12 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = a1[23];
      }

      a1[3168] = v8;
    }

    if ((v8 - v9) < 0)
    {
      a1[3168] = v9;
      v8 = v9;
    }

    v13 = a1[20];
    if (v13 && ((v8 - v13) & 0x80000000) != 0)
    {
      a1[3168] = v13;
      v8 = v13;
    }

    v14 = v8 - v9;
    if ((v8 - v9) >= 8001)
    {
      v15 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }
      }

      else
      {
        v15 = mDNSLogCategory_Default_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }
      }

      v21[0] = 67110144;
      v21[1] = v14;
      v22 = 1024;
      v23 = v11 - v9;
      v24 = 1024;
      v25 = v12 - v9;
      v26 = 1024;
      v27 = v13;
      v28 = 1024;
      v29 = v13 - v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "InitializeLastAPTime ERROR m->SuppressProbes %d m->NextScheduledProbe %d m->NextScheduledQuery %d m->SuppressQueries %d %d", v21, 0x20u);
LABEL_50:
      v19 = a1[16];
      do
      {
        v20 = arc4random() & 0x7F;
      }

      while (v20 > 0x7D);
      v8 = v19 + v20 + 125;
      if (v8 <= 1)
      {
        v8 = 1;
      }

      a1[3168] = v8;
      v9 = a1[16];
    }
  }

  *(a2 + 284) = v8 - *(a2 + 280);
  if (*(a2 + 144))
  {
LABEL_56:
    *(a2 + 284) = v9;
  }

LABEL_57:
  *(a2 + 288) = v9;
  *(a2 + 296) = -1;
  SetNextAnnounceProbeTime(a1, a2);
}

void SetNextAnnounceProbeTime(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v5 = *(a2 + 8);
  if (v5 == 2)
  {
    v6 = *(a2 + 280) + *(a2 + 284) - *(a1 + 64);
    if (v6 < 10001)
    {
      goto LABEL_25;
    }

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
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_18:
        v13 = *(a2 + 190);
        GetRRDisplayString_rdb(v4, (*(a2 + 48) + 4), (a1 + 47032));
        v20 = 67109891;
        v21 = v13;
        v22 = 1024;
        v23 = v6;
        v24 = 2160;
        v25 = 1752392040;
        v26 = 2085;
        v27 = a1 + 47032;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SetNextAnnounceProbeTime: ProbeCount %d Next in %d %{sensitive, mask.hash}s", &v20, 0x22u);
      }
    }

    else
    {
      v7 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }
    }

    v14 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_24:
        v15 = *(a1 + 12672);
        v16 = *(a1 + 64);
        v20 = 67109632;
        v21 = v15;
        v22 = 1024;
        v23 = v16;
        v24 = 1024;
        LODWORD(v25) = v15 - v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SetNextAnnounceProbeTime: m->SuppressProbes %d m->timenow %d diff %d", &v20, 0x14u);
      }
    }

    else
    {
      v14 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }
    }

LABEL_25:
    v17 = *(a1 + 96);
    v18 = *(a2 + 280) + *(a2 + 284);
    if (v17 - v18 >= 0)
    {
      *(a1 + 96) = v18;
      v17 = v18;
    }

    v19 = *(a1 + 64);
    if (v17 - v19 < 0)
    {
      *(a1 + 96) = v19;
    }

    return;
  }

  if (*(a2 + 191))
  {
    IsValidAnswer = ResourceRecordIsValidAnswer(a2);
    if (v5 == 1 || IsValidAnswer)
    {
      v11 = *(a2 + 280) + *(a2 + 284);
      if (*(a1 + 100) - v11 >= 0)
      {
        *(a1 + 100) = v11;
      }
    }
  }
}

uint64_t GetRDLength(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
  }

  if (*(a1 + 6) == 255)
  {
    return *(a1 + 12);
  }

  else
  {
    v11 = *(a1 + 4);
    v12 = 4;
    v13 = *(a1 + 40);
    v14 = v13 + 4;
    switch(v11)
    {
      case 1:
        return v12;
      case 2:
      case 5:
      case 12:
      case 39:

        return CompressedDomainNameLength(v14, v10);
      case 3:
      case 4:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 16:
      case 19:
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
      case 27:
      case 29:
      case 30:
      case 31:
      case 32:
      case 34:
      case 35:
      case 37:
      case 38:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 48:
      case 49:
        return *(a1 + 12);
      case 6:
        v22 = CompressedDomainNameLength(v14, v10);
        return (v22 + CompressedDomainNameLength(v13 + 260, v10) + 20);
      case 13:
        LOWORD(v20) = *v14 + v14[*v14 + 1];
        return (v20 + 2);
      case 14:
      case 17:
        v16 = CompressedDomainNameLength(v14, v10);
        return (CompressedDomainNameLength(v13 + 260, v10) + v16);
      case 15:
      case 18:
      case 21:
      case 36:
        return (CompressedDomainNameLength(v13 + 6, v10) + 2);
      case 26:
        v21 = CompressedDomainNameLength(v13 + 6, v10);
        v20 = v21 + CompressedDomainNameLength(v13 + 262, v10);
        return (v20 + 2);
      case 28:
        return 16;
      case 33:
        return (CompressedDomainNameLength(v13 + 10, v10) + 6);
      case 47:
        v17 = v13 + 4;
        break;
      default:
        if (v11 == 65323)
        {
          return v12;
        }

        return *(a1 + 12);
    }

    while (1)
    {
      if (!v17 || (v18 = *v17, v18 > 0x3F))
      {
LABEL_22:
        v19 = -255;
        goto LABEL_28;
      }

      if (!*v17)
      {
        break;
      }

      v17 += v18 + 1;
      if (v17 - v14 >= 256)
      {
        goto LABEL_22;
      }
    }

    v19 = v14 - v17 + 1;
LABEL_28:
    v23 = RRAssertsExistence(a1, 0x2Fu, a3, a4, a5, a6, a7, a8);
    v12 = *(a1 + 12);
    if (a2)
    {
      v24 = v19;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24 + v12;
    if (!v23)
    {
      return v25;
    }
  }

  return v12;
}

BOOL ValidateRData(int a1, int a2, _BYTE *a3)
{
  result = 1;
  if (a1 <= 11)
  {
    if ((a1 - 2) >= 4 && (a1 - 7) >= 3)
    {
      return a1 != 1 || a2 == 4;
    }

    goto LABEL_12;
  }

  if (a1 <= 15)
  {
    if ((a1 - 13) >= 2)
    {
      if (a1 == 12)
      {
LABEL_12:
        v9 = DomainNameBytesLength(a3 + 4, &a3[a2 + 4]);
        return v9 < 0x101 && v9 == a2;
      }

      if (a1 != 15)
      {
        return result;
      }

      v6 = DomainNameBytesLength(a3 + 6, &a3[a2 + 4]);
      v7 = v6 >= 0x101u;
      v8 = v6 + 2;
      return !v7 && v8 == a2;
    }

LABEL_26:
    if (!a2)
    {
      return 0;
    }

    v12 = a3 + 4;
    v13 = &a3[a2 + 4];
    while (v12 < v13)
    {
      v12 += *v12 + 1;
    }

    return v12 == v13;
  }

  if (a1 == 16)
  {
    goto LABEL_26;
  }

  if (a1 != 28)
  {
    if (a1 != 33)
    {
      return result;
    }

    v11 = DomainNameBytesLength(a3 + 10, &a3[a2 + 4]);
    v7 = v11 >= 0x101u;
    v8 = v11 + 6;
    return !v7 && v8 == a2;
  }

  return a2 == 16;
}

unint64_t DomainNameHashValue(unint64_t result)
{
  v1 = *result;
  if (!*result)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  for (i = (v2 + 2); ; i += 2)
  {
    v4 = *(i - 1);
    if ((v1 - 65) < 0x1A)
    {
      v1 += 32;
    }

    v5 = v1 << 8;
    if (!*(i - 1))
    {
      break;
    }

    if ((v4 - 65) < 0x1A)
    {
      v4 += 32;
    }

    HIDWORD(v6) = v5 + result + v4;
    LODWORD(v6) = HIDWORD(v6);
    result = (v6 >> 29);
    v7 = *i;
    v1 = v7;
    if (!v7)
    {
      return result;
    }
  }

  return (v5 + result);
}

unint64_t RDataHashValue(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 12);
  v4 = *(a1 + 40);
  v5 = v4 + 4;
  switch(*(a1 + 4))
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
    case 8:
    case 9:
    case 0xC:
    case 0x17:
    case 0x27:
      v6 = v4 + 4;
      goto LABEL_6;
    case 6:
      v18 = *(v4 + 516);
      v12 = *(v4 + 532);
      v13 = DomainNameHashValue(v4 + 4);
      return vaddvq_s32(v18) + v12 + DomainNameHashValue(v4 + 260) + v13;
    case 0xE:
    case 0x11:
      v7 = DomainNameHashValue(v4 + 4);
      v8 = v4 + 260;
      return DomainNameHashValue(v8) + v7;
    case 0xF:
    case 0x12:
    case 0x15:
    case 0x24:
      v6 = v4 + 6;
      goto LABEL_6;
    case 0x1A:
      v7 = DomainNameHashValue(v4 + 6);
      v8 = v4 + 262;
      return DomainNameHashValue(v8) + v7;
    case 0x21:
      v6 = v4 + 10;
LABEL_6:

      return DomainNameHashValue(v6);
    case 0x29:
      return result;
    case 0x2F:
      v9 = (v4 + 4);
      break;
    default:
      goto LABEL_20;
  }

  while (1)
  {
    if (!v9 || (v10 = *v9, v10 > 0x3F))
    {
LABEL_14:
      v11 = 257;
      goto LABEL_19;
    }

    if (!*v9)
    {
      break;
    }

    v9 += v10 + 1;
    if (&v9[-v5] >= 256)
    {
      goto LABEL_14;
    }
  }

  v11 = v9 - v5 + 1;
LABEL_19:
  result = DomainNameHashValue(v5);
  v5 += v11;
  v3 -= v11;
LABEL_20:
  if (v3 < 2)
  {
    v17 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      HIDWORD(v15) = result + (bswap32(*(v5 + v14)) >> 16);
      LODWORD(v15) = HIDWORD(v15);
      result = (v15 >> 29);
      v16 = v14 + 3;
      v14 += 2;
    }

    while (v16 < v3);
    v17 = v3 & 0x7FFFFFFE;
  }

  if (v17 < v3)
  {
    return result + (*(v5 + v17) << 8);
  }

  return result;
}

void SetTargetToHostName(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a2 + 12);
  if (v5 <= 0x27)
  {
    if (((1 << v5) & 0x1000248000) != 0)
    {
      v6 = 6;
    }

    else if (((1 << v5) & 0x8000001024) != 0)
    {
      v6 = 4;
    }

    else
    {
      if (v5 != 33)
      {
        goto LABEL_9;
      }

      v6 = 10;
    }

    v4 = (*(a2 + 48) + v6);
  }

LABEL_9:
  v7 = *(a2 + 32);
  if (v7 == -2)
  {
    v9 = "\tlocalhost";
    if (v4)
    {
      goto LABEL_30;
    }
  }

  else if ((*(a2 + 172) & 0xFFFFFFFE) == 2 || (AWDLInterfaceID ? (v8 = AWDLInterfaceID == v7) : (v8 = 0), v8 || WiFiAwareInterfaceID && WiFiAwareInterfaceID == v7))
  {
    v9 = (a1 + 10664);
    if (v4)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v9 = (a1 + 10408);
    if (v4)
    {
      goto LABEL_30;
    }
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
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_28:
      v36 = 136446210;
      v37 = DNSTypeName(v5);
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SetTargetToHostName: Don't know how to set the target of rrtype %{public}s", &v36, 0xCu);
    }
  }

  else
  {
    v10 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }
  }

LABEL_30:
  if (!*(a2 + 122) && (*(a2 + 172) & 0xFFFFFFFE) != 4 && !IsLocalDomain((a2 + 652)))
  {
    if (*(a2 + 120))
    {
      *(a2 + 120) = 2;
    }

    ServiceTarget = GetServiceTarget(a1, a2);
    if (ServiceTarget)
    {
      v9 = ServiceTarget;
      if (*ServiceTarget)
      {
        v21 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          v34 = v9;
          while (1)
          {
            if (!v34 || (v35 = *v34, v35 > 0x3F))
            {
LABEL_77:
              v24 = 257;
              goto LABEL_80;
            }

            if (!*v34)
            {
              break;
            }

            v34 += v35 + 1;
            if (v34 - v9 >= 256)
            {
              goto LABEL_77;
            }
          }

          v24 = (v34 - v9 + 1);
        }

        else
        {
          v21 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_33;
          }

          v22 = v9;
          while (1)
          {
            if (!v22 || (v23 = *v22, v23 > 0x3F))
            {
LABEL_53:
              v24 = 257;
              goto LABEL_80;
            }

            if (!*v22)
            {
              break;
            }

            v22 += v23 + 1;
            if (v22 - v9 >= 256)
            {
              goto LABEL_53;
            }
          }

          v24 = (v22 - v9 + 1);
        }

LABEL_80:
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), (a1 + 47032));
        v36 = 141558787;
        v37 = 1752392040;
        v38 = 1040;
        *v39 = v24;
        *&v39[4] = 2101;
        *&v39[6] = v9;
        v40 = 2082;
        v41 = a1 + 47032;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "SetUnicastTargetToHostName target %{sensitive, mask.hash, mdnsresponder:domain_name}.*P for resource record %{public}s", &v36, 0x26u);
        goto LABEL_33;
      }
    }

    v27 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
LABEL_67:
        v33 = (a1 + 47032);
        GetRRDisplayString_rdb((a2 + 8), (*(a2 + 48) + 4), v33);
        v36 = 141558275;
        v37 = 1752392040;
        v38 = 2085;
        *v39 = v33;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "SetUnicastTargetToHostName No target for %{sensitive, mask.hash}s", &v36, 0x16u);
      }
    }

    else
    {
      v27 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }
    }

    *(a2 + 344) = 8;
    if (v4)
    {
      *v4 = 0;
    }

    SetNewRData(a2 + 8, 0, 0, v28, v29, v30, v31, v32);
    return;
  }

LABEL_33:
  if (v4)
  {
    SameDomainNameBytes(v4, v9);
    if (!SameDomainNameBytes(v4, v9))
    {
      v18 = v9;
      do
      {
        if (!v18)
        {
          break;
        }

        v19 = *v18;
        if (v19 > 0x3F)
        {
          break;
        }

        if (!*v18)
        {
          v25 = v18 - v9 + 1;
          if (v25 <= 0x100u)
          {
            memcpy(v4, v9, v25);
            goto LABEL_57;
          }

          break;
        }

        v18 += v19 + 1;
      }

      while (v18 - v9 <= 255);
      *v4 = 0;
LABEL_57:
      SetNewRData(a2 + 8, 0, 0, v13, v14, v15, v16, v17);
      if (*(a2 + 8) == 2)
      {
        v26 = 3;
      }

      else
      {
        v26 = 0;
      }

      *(a2 + 190) = v26;
      *(a2 + 191) = 4;
      *(a2 + 189) = 0;
      InitializeLastAPTime(a1, a2);
    }
  }
}

unint64_t SetNewRData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    *(a1 + 40) = a2;
    *(a1 + 12) = a3;
  }

  *(a1 + 12) = GetRDLength(a1, 0, a3, a4, a5, a6, a7, a8);
  *(a1 + 14) = GetRDLength(a1, 1, v9, v10, v11, v12, v13, v14);
  result = RDataHashValue(a1);
  *(a1 + 20) = result;
  return result;
}

uint64_t CompressedDomainNameLength(unsigned __int8 *a1, _BYTE *a2)
{
  if (a2)
  {
    if (*a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = a1;
  while (1)
  {
    v5 = *v4;
    if (!*v4)
    {
      return (v4 - a1 + 1);
    }

    if (v5 > 0x3F)
    {
      return 257;
    }

    if (v3)
    {
      break;
    }

LABEL_12:
    v4 += v5 + 1;
    if (v4 - a1 > 255)
    {
      return 257;
    }
  }

  if (!SameDomainNameBytes(v4, v3))
  {
    v5 = *v4;
    goto LABEL_12;
  }

  return (v4 - a1 + 2);
}

void AcknowledgeRecord(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 104))
  {
    *(a2 + 188) = 1;
    v4 = *(a1 + 48);
    v5 = *(a1 + 52) + 1;
    *(a1 + 52) = v5;
    mDNS_VerifyLockState("Drop Lock", 0, v4, v5, "AcknowledgeRecord", 1372);
    (*(a2 + 104))(a1, a2, 0);
    mDNS_VerifyLockState("Reclaim Lock", 0, *(a1 + 48), *(a1 + 52), "AcknowledgeRecord", 1374);
    --*(a1 + 52);
  }
}

uint64_t mDNS_StartBrowse_internal(uint64_t a1, unsigned __int8 *a2, _BYTE *a3, uint64_t a4, int a5, char a6, char a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 136) = a4;
  *(a1 + 324) = a5;
  *(a1 + 342) = 65548;
  *(a1 + 632) = 1;
  *(a1 + 634) = a6;
  *(a1 + 635) = (a5 & 0x1000) != 0;
  *(a1 + 636) = 0;
  *(a1 + 641) = 0;
  *(a1 + 639) = 0;
  *(a1 + 640) = a7;
  *(a1 + 653) = 0;
  *(a1 + 152) = a8;
  v10 = (a1 + 376);
  *(a1 + 176) = a9;
  if (!ConstructServiceName((a1 + 376), 0, a2, a3))
  {
    return 4294901756;
  }

  v11 = *(a1 + 252);
  if (v11)
  {
    v12 = mDNSLogCategory_mDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_mDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_mDNS, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v10;
        while (1)
        {
          if (!v17 || (v18 = *v17, v18 > 0x3F))
          {
LABEL_19:
            v15 = 257;
            goto LABEL_22;
          }

          if (!*v17)
          {
            break;
          }

          v17 += v18 + 1;
          if (v17 - v10 >= 256)
          {
            goto LABEL_19;
          }
        }

        v15 = (v17 - v10 + 1);
        goto LABEL_22;
      }
    }

    else
    {
      v12 = mDNSLogCategory_mDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_mDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v10;
        while (1)
        {
          if (!v13 || (v14 = *v13, v14 > 0x3F))
          {
LABEL_11:
            v15 = 257;
            goto LABEL_22;
          }

          if (!*v13)
          {
            break;
          }

          v13 += v14 + 1;
          if (v13 - v10 >= 256)
          {
            goto LABEL_11;
          }
        }

        v15 = (v13 - v10 + 1);
LABEL_22:
        v19[0] = 67110147;
        v19[1] = v11;
        v20 = 2160;
        v21 = 1752392040;
        v22 = 1040;
        v23 = v15;
        v24 = 2101;
        v25 = v10;
        v26 = 1024;
        v27 = mDNS_DomainNameFNV1aHash(v10);
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[R%u] DNSServiceBrowse -> SubBrowser START -- qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%x)", v19, 0x28u);
      }
    }
  }

  return mDNS_StartQuery_internal(mDNSStorage, a1);
}

_BYTE *ConstructServiceName(_BYTE *a1, const char *a2, unsigned __int8 *a3, _BYTE *a4)
{
  v5 = a3;
  v7 = &unk_100162000;
  v8 = &unk_100178000;
  v9 = &unk_100178000;
  if (a2)
  {
    v10 = a2;
    v11 = *a2;
    if (*a2)
    {
      if (v11 > 0x3F)
      {
        v12 = "Service instance name too long";
LABEL_112:
        v57 = *(v8 + 434);
        if (!v7[256] || v57 == v9[435])
        {
          if (os_log_type_enabled(*(v8 + 434), OS_LOG_TYPE_DEFAULT))
          {
            v58 = *v10 + 1;
            if (v5)
            {
              v62 = v5;
              while (1)
              {
                if (!v62 || (v63 = *v62, v63 > 0x3F))
                {
LABEL_130:
                  v61 = 257;
                  if (a4)
                  {
                    goto LABEL_133;
                  }

                  goto LABEL_147;
                }

                if (!*v62)
                {
                  break;
                }

                v62 += v63 + 1;
                if (v62 - v5 >= 256)
                {
                  goto LABEL_130;
                }
              }

              v61 = (v62 - v5 + 1);
              if (a4)
              {
                goto LABEL_133;
              }
            }

            else
            {
              v61 = 0;
              if (a4)
              {
LABEL_133:
                v64 = a4;
                while (1)
                {
                  if (!v64 || (v65 = *v64, v65 > 0x3F))
                  {
LABEL_138:
                    v66 = 257;
                    goto LABEL_152;
                  }

                  if (!*v64)
                  {
                    break;
                  }

                  v64 += v65 + 1;
                  if (v64 - a4 >= 256)
                  {
                    goto LABEL_138;
                  }
                }

                v66 = (v64 - a4 + 1);
                goto LABEL_152;
              }
            }

LABEL_147:
            v66 = 0;
            goto LABEL_152;
          }
        }

        else
        {
          v57 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            v58 = *v10 + 1;
            if (v5)
            {
              v59 = v5;
              while (1)
              {
                if (!v59 || (v60 = *v59, v60 > 0x3F))
                {
LABEL_121:
                  v61 = 257;
                  if (a4)
                  {
                    goto LABEL_140;
                  }

                  goto LABEL_150;
                }

                if (!*v59)
                {
                  break;
                }

                v59 += v60 + 1;
                if (v59 - v5 >= 256)
                {
                  goto LABEL_121;
                }
              }

              v61 = (v59 - v5 + 1);
              if (a4)
              {
                goto LABEL_140;
              }
            }

            else
            {
              v61 = 0;
              if (a4)
              {
LABEL_140:
                v67 = a4;
                while (1)
                {
                  if (!v67 || (v68 = *v67, v68 > 0x3F))
                  {
LABEL_145:
                    v66 = 257;
                    goto LABEL_152;
                  }

                  if (!*v67)
                  {
                    break;
                  }

                  v67 += v68 + 1;
                  if (v67 - a4 >= 256)
                  {
                    goto LABEL_145;
                  }
                }

                v66 = (v67 - a4 + 1);
                goto LABEL_152;
              }
            }

LABEL_150:
            v66 = 0;
LABEL_152:
            *buf = 136448515;
            v71 = v12;
            v72 = 2160;
            *v73 = 1752392040;
            *&v73[8] = 1040;
            *&v73[10] = v58;
            v74 = 2101;
            v75 = v10;
            v76 = 2160;
            *v77 = 1752392040;
            *&v77[8] = 1040;
            *&v77[10] = v61;
            v78 = 2101;
            v79 = v5;
            v80 = 2160;
            *v81 = 1752392040;
            *&v81[8] = 1040;
            *&v81[10] = v66;
            v82 = 2101;
            v83 = a4;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "ConstructServiceName: %{public}s: %{sensitive, mask.hash, mdnsresponder:domain_label}.*P.%{sensitive, mask.hash, mdnsresponder:domain_name}.*P%{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x5Au);
          }
        }

        return 0;
      }

      v20 = v11 + 1;
      v19 = a1;
      v21 = a2;
      do
      {
        v22 = *v21++;
        *v19++ = v22;
        --v20;
      }

      while (v20);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v13 = *a3;
  if ((v13 - 1) <= 0x3E)
  {
    v14 = a3[v13 + 1];
    if ((v14 - 1) <= 0x3E)
    {
      v15 = &a3[v13 + 1 + v14];
      v18 = v15[1];
      v16 = v15 + 1;
      v17 = v18;
      if (v18 - 1 <= 0x3E && !v16[v17 + 1])
      {
        v35 = v13 + 1;
        v36 = a1;
        v37 = a3;
        do
        {
          v38 = *v37++;
          *v36++ = v38;
          --v35;
        }

        while (v35);
        v36[4] = 98;
        *v36 = 1970495236;
        v39 = SameDomainNameBytes(a3, "\t_services\a_dns-sd\x04_udp");
        v40 = -5;
        if (!v39)
        {
          v40 = 0;
        }

        v19 = &a1[v13 + 6 + v40];
        v10 = "";
        v5 += v13 + 1;
        goto LABEL_12;
      }
    }

LABEL_9:
    v10 = "";
    v19 = a1;
LABEL_12:
    LODWORD(v13) = *v5;
    goto LABEL_14;
  }

  v10 = "";
  v19 = a1;
LABEL_14:
  if ((v13 - 17) <= 0xFFFFFFF0)
  {
    v23 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *v10 + 1;
        v31 = v5;
        do
        {
          if (!v31)
          {
            break;
          }

          v32 = *v31;
          if (v32 > 0x3F)
          {
            break;
          }

          if (!*v31)
          {
            v27 = (v31 - v5 + 1);
            if (!a4)
            {
              goto LABEL_44;
            }

            goto LABEL_37;
          }

          v31 += v32 + 1;
        }

        while (v31 - v5 < 256);
        v27 = 257;
        if (!a4)
        {
LABEL_44:
          v30 = 0;
          goto LABEL_54;
        }

LABEL_37:
        v33 = a4;
        while (1)
        {
          if (!v33 || (v34 = *v33, v34 > 0x3F))
          {
LABEL_42:
            v30 = 257;
            goto LABEL_54;
          }

          if (!*v33)
          {
            break;
          }

          v33 += v34 + 1;
          if (v33 - a4 >= 256)
          {
            goto LABEL_42;
          }
        }

        v30 = (v33 - a4 + 1);
        goto LABEL_54;
      }
    }

    else
    {
      v23 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *v10 + 1;
        v25 = v5;
        do
        {
          if (!v25)
          {
            break;
          }

          v26 = *v25;
          if (v26 > 0x3F)
          {
            break;
          }

          if (!*v25)
          {
            v27 = (v25 - v5 + 1);
            if (!a4)
            {
              goto LABEL_46;
            }

            goto LABEL_24;
          }

          v25 += v26 + 1;
        }

        while (v25 - v5 < 256);
        v27 = 257;
        if (!a4)
        {
LABEL_46:
          v30 = 0;
          goto LABEL_54;
        }

LABEL_24:
        v28 = a4;
        while (1)
        {
          if (!v28 || (v29 = *v28, v29 > 0x3F))
          {
LABEL_29:
            v30 = 257;
            goto LABEL_54;
          }

          if (!*v28)
          {
            break;
          }

          v28 += v29 + 1;
          if (v28 - a4 >= 256)
          {
            goto LABEL_29;
          }
        }

        v30 = (v28 - a4 + 1);
LABEL_54:
        *buf = 141560067;
        v71 = 1752392040;
        v72 = 1040;
        *v73 = v24;
        *&v73[4] = 2101;
        *&v73[6] = v10;
        v74 = 2160;
        v75 = 1752392040;
        v76 = 1040;
        *v77 = v27;
        *&v77[4] = 2101;
        *&v77[6] = v5;
        v78 = 2160;
        v79 = 1752392040;
        v80 = 1040;
        *v81 = v30;
        *&v81[4] = 2101;
        *&v81[6] = a4;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Bad service type in %{sensitive, mask.hash, mdnsresponder:domain_label}.*P.%{sensitive, mask.hash, mdnsresponder:domain_name}.*P%{sensitive, mask.hash, mdnsresponder:domain_name}.*P Application protocol name must be underscore plus 1-15 characters. See <http://www.dns-sd.org/ServiceTypes.html>", buf, 0x50u);
      }
    }

    if ((v13 - 64) < 0xFFFFFFC2 || v13 >= 0x11 && !SameDomainNameBytes(a4, "\x05local"))
    {
      return 0;
    }
  }

  if (v5[1] != 95)
  {
    v12 = "Application protocol name must begin with underscore";
    goto LABEL_112;
  }

  v41 = 0;
  v42 = v13;
  v43 = (v13 + 1);
  v44 = 2;
  v12 = "Application protocol name must contain only letters, digits, and hyphens";
  do
  {
    v45 = v5[v44];
    if ((v45 - 48) < 0xA || (v45 & 0xFFFFFFDF) - 65 < 0x1A)
    {
      goto LABEL_93;
    }

    if (v45 != 45)
    {
      if (v44 >= v42 || v44 < 3 || v45 != 95)
      {
LABEL_103:
        v9 = &unk_100178000;
        v7 = &unk_100162000;
        v8 = &unk_100178000;
        goto LABEL_112;
      }

      if (v41)
      {
        goto LABEL_92;
      }

      v47 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
        {
          v51 = v5;
          while (1)
          {
            if (!v51 || (v52 = *v51, v52 > 0x3F))
            {
LABEL_88:
              v50 = 257;
              goto LABEL_91;
            }

            if (!*v51)
            {
              break;
            }

            v51 += v52 + 1;
            if (v51 - v5 >= 256)
            {
              goto LABEL_88;
            }
          }

          v50 = (v51 - v5 + 1);
          goto LABEL_91;
        }
      }

      else
      {
        v47 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
        {
          v48 = v5;
          while (1)
          {
            if (!v48 || (v49 = *v48, v49 > 0x3F))
            {
LABEL_81:
              v50 = 257;
              goto LABEL_91;
            }

            if (!*v48)
            {
              break;
            }

            v48 += v49 + 1;
            if (v48 - v5 >= 256)
            {
              goto LABEL_81;
            }
          }

          v50 = (v48 - v5 + 1);
LABEL_91:
          *buf = 141558531;
          v71 = 1752392040;
          v72 = 1040;
          *v73 = v50;
          *&v73[4] = 2101;
          *&v73[6] = v5;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "ConstructServiceName: Service type with non-leading underscore %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x1Cu);
        }
      }

LABEL_92:
      v41 = 1;
      goto LABEL_93;
    }

    if (v44 < 3 || v44 >= v42)
    {
      goto LABEL_103;
    }

LABEL_93:
    ++v44;
  }

  while (v44 != v43);
  v53 = 0;
  do
  {
    v19[v53] = v5[v53];
    ++v53;
  }

  while (v43 != v53);
  v8 = &unk_100178000;
  if (v5[v53] != 4)
  {
    v12 = "Transport protocol name must be _udp or _tcp";
    v9 = &unk_100178000;
    v7 = &unk_100162000;
    goto LABEL_112;
  }

  v54 = &v5[v53];
  v9 = &unk_100178000;
  v7 = &unk_100162000;
  if (v5[v53 + 1] != 95)
  {
    goto LABEL_111;
  }

  v55 = v54[2] & 0xDF;
  if (v55 == 84)
  {
    if ((v54[3] & 0xDF) != 0x43)
    {
      goto LABEL_111;
    }
  }

  else if (v55 != 85 || (v54[3] & 0xDF) != 0x44)
  {
LABEL_111:
    v12 = "Transport protocol name must be _udp or _tcp";
    goto LABEL_112;
  }

  if ((v54[4] & 0xDF) != 0x50)
  {
    goto LABEL_111;
  }

  v56 = 0;
  do
  {
    v19[v56 + v53] = v5[v56 + v53];
    ++v56;
  }

  while (v56 != 5);
  if (v5[v53 + v56])
  {
    v12 = "Service type must have only two labels";
    goto LABEL_112;
  }

  v19[v53 + v56] = 0;
  if (!*a4)
  {
    v12 = "Service domain must be non-empty";
    goto LABEL_112;
  }

  if (SameDomainNameBytes(a4, "\x05local\x04arpa"))
  {
    v12 = "Illegal domain local.arpa. Use local. (or empty string)";
    goto LABEL_112;
  }

  result = AppendDomainName(a1, a4);
  if (!result)
  {
    v12 = "Service domain too long";
    goto LABEL_112;
  }

  return result;
}