void sub_100062358(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [NSPPrivacyProxyConfiguration alloc];
    v6 = [*(a1 + 32) proxyConfigurationData];
    v7 = [v5 initWithData:v6];
    [*(a1 + 32) setProxyConfiguration:v7];

    [WeakRetained[6] merge:*(a1 + 32)];
    v8 = [*(a1 + 40) configServerPath];
    v9 = WeakRetained[6];
    v10 = [v9 configServerPath];
    if ([v8 isEqualToString:v10])
    {
      if (*(a1 + 56) == 1)
      {
        v11 = [*(a1 + 40) configServerHost];
        v12 = [WeakRetained[6] configServerHost];
        v13 = [v11 isEqualToString:v12];
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 0;
    }

    if (a2)
    {
      v14 = [*(a1 + 32) proxyConfiguration];
      v15 = (v14 != 0) & v13;

      if (v15 == 1)
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v21) = 0;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Starting with configuration settings from disk", &v21, 2u);
        }

LABEL_18:
        sub_100062634(WeakRetained);
        goto LABEL_19;
      }
    }

    else
    {
      v17 = nplog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = WeakRetained[6];
        v20 = [v19 etag];
        v21 = 138412290;
        v22 = v20;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unable to verify configuration signature on disk (etag was %@)", &v21, 0xCu);
      }
    }

    v18 = nplog_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v21) = 0;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Starting and not using configuration settings on disk", &v21, 2u);
    }

    [WeakRetained[6] setEtag:0];
    [WeakRetained[6] setEpoch:0];
    [WeakRetained[6] setProxyConfiguration:0];
    [WeakRetained[6] setConfigurationFetchDate:0];
    goto LABEL_18;
  }

LABEL_19:
}

void sub_100062634(uint64_t a1)
{
  kdebug_trace();
  v2 = [NSPConfigurationManager alloc];
  v3 = *(a1 + 48);
  v4 = [(NSPConfigurationManager *)v2 initWithDelegate:a1 configuration:v3];
  v5 = *(a1 + 64);
  *(a1 + 64) = v4;

  if (*(a1 + 64))
  {
    v6 = +[NEFileHandleMaintainer sharedMaintainer];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000628E8;
    v13[3] = &unk_100109478;
    v13[4] = a1;
    [v6 setFileHandleActivityCallback:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100062C14;
    v12[3] = &unk_100109478;
    v12[4] = a1;
    [v6 startOwnerModeWithEventName:@"com.apple.networkserviceproxy.file-descriptor-maintainer" handlesReceivedCallback:v12];
    v7 = NPGetInternalQueue();
    xpc_set_event_stream_handler("com.apple.networkserviceproxy", v7, &stru_10010A030);

    v8 = NPGetInternalQueue();
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100064430;
    handler[3] = &unk_100109EC8;
    handler[4] = a1;
    xpc_set_event_stream_handler("com.apple.notifyd.matching", v8, handler);

    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v9, "Ready", 1);
    v10 = getpid();
    xpc_dictionary_set_int64(v9, "PID", v10);
    xpc_set_event();
  }

  else
  {
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v15 = "[NSPServer start]";
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null self.configurationManager", buf, 0xCu);
    }
  }
}

void sub_1000628E8(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Received file handle activity callback", buf, 2u);
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    v4 = 0;
LABEL_20:
    sub_100062B8C(v4, 0);
    goto LABEL_21;
  }

  ++*(v3 + 40);
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_20;
  }

  if (*(v4 + 40) >= 0xCu && *(v4 + 448))
  {
    v5 = +[NSDate now];
    v6 = v5;
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 448);
    }

    else
    {
      v8 = 0;
    }

    [v5 timeIntervalSinceDate:v8];
    v10 = v9;

    if (v10 >= 10.0)
    {
      v16 = nplog_obj();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        v17 = *(a1 + 32);
        if (v17)
        {
          LODWORD(v17) = *(v17 + 40);
        }

        *buf = 67109376;
        v20 = 10;
        v21 = 1024;
        v22 = v17;
        _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Received %u file handle activity callbacks without progress in %u seconds, exiting", buf, 0xEu);
      }

      exit(1);
    }

    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_20;
    }
  }

  if (*(v4 + 40) < 4u)
  {
    goto LABEL_20;
  }

  v11 = nplog_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      LODWORD(v12) = *(v12 + 40);
    }

    *buf = 67109120;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received %u file handle activity callbacks without progress", buf, 8u);
  }

  v13 = *(a1 + 32);
  if (!v13 || !*(v13 + 448))
  {
    v14 = +[NSDate now];
    sub_100062B8C(*(a1 + 32), v14);
  }

LABEL_21:
  v15 = sub_100054464(*(a1 + 32));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062B9C;
  block[3] = &unk_100109478;
  block[4] = *(a1 + 32);
  dispatch_async(v15, block);
}

void sub_100062B8C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 448), a2);
  }
}

void sub_100062B9C(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Scheduled block on internal queue, file handle activity acknowledged", v4, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(v3 + 40) = 0;
  }
}

void sub_100062C14(uint64_t a1)
{
  kdebug_trace();
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Handling received file handles and auxiliary data", buf, 2u);
  }

  v3 = sub_100054464(*(a1 + 32));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062D04;
  block[3] = &unk_100109478;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);
}

void sub_100062D04(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Restoring server state", &buf, 2u);
    }

    v4 = +[NEFileHandleMaintainer sharedMaintainer];
    v5 = [v4 copyAuxiliaryDataForKey:@"NSPServerAuxilaryData"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_77:

      v96 = *(a1 + 32);
      if (!v96)
      {
        goto LABEL_93;
      }

      v97 = v96[50];
      v98 = v97 == 0;
      if (!v97)
      {
        v99 = +[NSUUID UUID];
        v100 = v96[50];
        v96[50] = v99;
      }

      if (!v96[51])
      {
        v101 = +[NSUUID UUID];
        v102 = v96[51];
        v96[51] = v101;

        v98 = 1;
      }

      if (!v96[52])
      {
        v103 = +[NSUUID UUID];
        v104 = v96[52];
        v96[52] = v103;

        v98 = 1;
      }

      if (!v96[53])
      {
        v105 = +[NSUUID UUID];
        v106 = v96[53];
        v96[53] = v105;

        v98 = 1;
      }

      if (v96[54])
      {
        if (v96[55])
        {
          if (!v98)
          {
            goto LABEL_93;
          }

LABEL_92:
          sub_1000654C0(v96);
          goto LABEL_93;
        }
      }

      else
      {
        v107 = +[NSUUID UUID];
        v108 = v96[54];
        v96[54] = v107;

        if (v96[55])
        {
          goto LABEL_92;
        }
      }

      v109 = +[NSUUID UUID];
      v110 = v96[55];
      v96[55] = v109;

      goto LABEL_92;
    }

    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v6, v7, v8, v9, objc_opt_class(), 0];
    *v157 = 0;
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v10 fromData:v5 error:v157];
    v12 = *v157;

    if (!v11 || v12)
    {
      v95 = nplog_obj();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_INFO, "unarchive failed with error %@", &buf, 0xCu);
      }
    }

    else
    {
      v13 = [v11 objectForKeyedSubscript:@"NSPServerConfigOutage"];
      if (v13)
      {
        v14 = [v11 objectForKeyedSubscript:@"NSPServerConfigOutage"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v16 = [v11 objectForKeyedSubscript:@"NSPServerConfigOutage"];
          *(v2 + 13) = [v16 BOOLValue];
        }
      }

      v17 = [v11 objectForKeyedSubscript:@"NSPServerTokenOutage"];
      if (v17)
      {
        v18 = [v11 objectForKeyedSubscript:@"NSPServerTokenOutage"];
        objc_opt_class();
        v19 = objc_opt_isKindOfClass();

        if (v19)
        {
          v20 = [v11 objectForKeyedSubscript:@"NSPServerTokenOutage"];
          *(v2 + 14) = [v20 BOOLValue];
        }
      }

      v21 = [v11 objectForKeyedSubscript:@"NSPServerProxyOutage"];
      if (v21)
      {
        v22 = [v11 objectForKeyedSubscript:@"NSPServerProxyOutage"];
        objc_opt_class();
        v23 = objc_opt_isKindOfClass();

        if (v23)
        {
          v24 = [v11 objectForKeyedSubscript:@"NSPServerProxyOutage"];
          *(v2 + 15) = [v24 BOOLValue];
        }
      }

      v25 = [v11 objectForKeyedSubscript:@"NSPServerProxyNetworkOutage"];
      if (v25)
      {
        v26 = [v11 objectForKeyedSubscript:@"NSPServerProxyNetworkOutage"];
        objc_opt_class();
        v27 = objc_opt_isKindOfClass();

        if (v27)
        {
          v28 = [v11 objectForKeyedSubscript:@"NSPServerProxyNetworkOutage"];
          *(v2 + 16) = [v28 BOOLValue];
        }
      }

      v29 = [v11 objectForKeyedSubscript:@"NSPServerProxyOutageRestoreDate"];
      if (v29)
      {
        v30 = [v11 objectForKeyedSubscript:@"NSPServerProxyOutageRestoreDate"];
        objc_opt_class();
        v31 = objc_opt_isKindOfClass();

        if (v31)
        {
          v32 = [v11 objectForKeyedSubscript:@"NSPServerProxyOutageRestoreDate"];
          [v32 timeIntervalSinceNow];
          if (v33 > 10.0)
          {
            objc_storeStrong((v2 + 216), v32);
          }
        }
      }

      v34 = [v11 objectForKeyedSubscript:@"NSPServerODoHOutageRestoreDate"];
      if (v34)
      {
        v35 = [v11 objectForKeyedSubscript:@"NSPServerODoHOutageRestoreDate"];
        objc_opt_class();
        v36 = objc_opt_isKindOfClass();

        if (v36)
        {
          v37 = [v11 objectForKeyedSubscript:@"NSPServerODoHOutageRestoreDate"];
          [v37 timeIntervalSinceNow];
          if (v38 > 10.0)
          {
            objc_storeStrong((v2 + 224), v37);
          }
        }
      }

      v39 = [v11 objectForKeyedSubscript:@"NSPServerODoHAuthOutageRestoreDate"];
      if (v39)
      {
        v40 = [v11 objectForKeyedSubscript:@"NSPServerODoHAuthOutageRestoreDate"];
        objc_opt_class();
        v41 = objc_opt_isKindOfClass();

        if (v41)
        {
          v42 = [v11 objectForKeyedSubscript:@"NSPServerODoHAuthOutageRestoreDate"];
          [v42 timeIntervalSinceNow];
          if (v43 > 10.0)
          {
            objc_storeStrong((v2 + 248), v42);
          }
        }
      }

      v44 = [v11 objectForKeyedSubscript:@"NSPServerCaptiveOutage"];
      if (v44)
      {
        v45 = [v11 objectForKeyedSubscript:@"NSPServerCaptiveOutage"];
        objc_opt_class();
        v46 = objc_opt_isKindOfClass();

        if (v46)
        {
          v47 = [v11 objectForKeyedSubscript:@"NSPServerCaptiveOutage"];
          *(v2 + 19) = [v47 BOOLValue];
        }
      }

      v48 = [v11 objectForKeyedSubscript:@"NSPServerCaptiveOutageWaitingForUserActivity"];
      if (v48)
      {
        v49 = [v11 objectForKeyedSubscript:@"NSPServerCaptiveOutageWaitingForUserActivity"];
        objc_opt_class();
        v50 = objc_opt_isKindOfClass();

        if (v50)
        {
          v51 = [v11 objectForKeyedSubscript:@"NSPServerCaptiveOutageWaitingForUserActivity"];
          *(v2 + 20) = [v51 BOOLValue];
        }
      }

      v52 = [v11 objectForKeyedSubscript:@"MPTCPProxyStatus"];
      if (v52)
      {
        v53 = [v11 objectForKeyedSubscript:@"MPTCPProxyStatus"];
        objc_opt_class();
        v54 = objc_opt_isKindOfClass();

        if (v54)
        {
          v55 = [v11 objectForKeyedSubscript:@"MPTCPProxyStatus"];
          *(v2 + 23) = [v55 BOOLValue];
        }
      }

      v56 = [v11 objectForKeyedSubscript:@"NSPServerFraudAlert"];
      if (v56)
      {
        v57 = [v11 objectForKeyedSubscript:@"NSPServerFraudAlert"];
        objc_opt_class();
        v58 = objc_opt_isKindOfClass();

        if (v58)
        {
          v59 = [v11 objectForKeyedSubscript:@"NSPServerFraudAlert"];
          *(v2 + 22) = [v59 BOOLValue];
        }
      }

      v60 = [v11 objectForKeyedSubscript:@"NSPServerLastGeohash"];
      if (v60)
      {
        v61 = [v11 objectForKeyedSubscript:@"NSPServerLastGeohash"];
        objc_opt_class();
        v62 = objc_opt_isKindOfClass();

        if (v62)
        {
          v63 = [v11 objectForKeyedSubscript:@"NSPServerLastGeohash"];
          objc_storeStrong((v2 + 360), v63);
        }
      }

      v64 = [v11 objectForKeyedSubscript:@"NSPServerLastCountryPlusTimezone"];
      if (v64)
      {
        v65 = [v11 objectForKeyedSubscript:@"NSPServerLastCountryPlusTimezone"];
        objc_opt_class();
        v66 = objc_opt_isKindOfClass();

        if (v66)
        {
          v67 = [v11 objectForKeyedSubscript:@"NSPServerLastCountryPlusTimezone"];
          objc_storeStrong((v2 + 368), v67);
        }
      }

      v68 = [v11 objectForKeyedSubscript:@"NSPServerPrivateCloudComputeEnvironment"];
      if (v68)
      {
        v69 = [v11 objectForKeyedSubscript:@"NSPServerPrivateCloudComputeEnvironment"];
        objc_opt_class();
        v70 = objc_opt_isKindOfClass();

        if (v70)
        {
          v71 = [v11 objectForKeyedSubscript:@"NSPServerPrivateCloudComputeEnvironment"];
          objc_storeStrong((v2 + 376), v71);
        }
      }

      v72 = [v11 objectForKeyedSubscript:@"NSPServerMultiHopProxyAgentUUID"];
      if (v72)
      {
        v73 = [v11 objectForKeyedSubscript:@"NSPServerMultiHopProxyAgentUUID"];
        objc_opt_class();
        v74 = objc_opt_isKindOfClass();

        if (v74)
        {
          v75 = [v11 objectForKeyedSubscript:@"NSPServerMultiHopProxyAgentUUID"];
          objc_storeStrong((v2 + 400), v75);
        }
      }

      v76 = [v11 objectForKeyedSubscript:@"NSPServerSingleHopProxyAgentUUID"];
      if (v76)
      {
        v77 = [v11 objectForKeyedSubscript:@"NSPServerSingleHopProxyAgentUUID"];
        objc_opt_class();
        v78 = objc_opt_isKindOfClass();

        if (v78)
        {
          v79 = [v11 objectForKeyedSubscript:@"NSPServerSingleHopProxyAgentUUID"];
          objc_storeStrong((v2 + 408), v79);
        }
      }

      v80 = [v11 objectForKeyedSubscript:@"NSPServerMultiHopFallbackProxyAgentUUID"];
      if (v80)
      {
        v81 = [v11 objectForKeyedSubscript:@"NSPServerMultiHopFallbackProxyAgentUUID"];
        objc_opt_class();
        v82 = objc_opt_isKindOfClass();

        if (v82)
        {
          v83 = [v11 objectForKeyedSubscript:@"NSPServerMultiHopFallbackProxyAgentUUID"];
          objc_storeStrong((v2 + 416), v83);
        }
      }

      v84 = [v11 objectForKeyedSubscript:@"NSPServerSingleHopFallbackProxyAgentUUID"];
      if (v84)
      {
        v85 = [v11 objectForKeyedSubscript:@"NSPServerSingleHopFallbackProxyAgentUUID"];
        objc_opt_class();
        v86 = objc_opt_isKindOfClass();

        if (v86)
        {
          v87 = [v11 objectForKeyedSubscript:@"NSPServerSingleHopFallbackProxyAgentUUID"];
          objc_storeStrong((v2 + 424), v87);
        }
      }

      v88 = [v11 objectForKeyedSubscript:@"NSPServerDNSAgentUUID"];
      if (v88)
      {
        v89 = [v11 objectForKeyedSubscript:@"NSPServerDNSAgentUUID"];
        objc_opt_class();
        v90 = objc_opt_isKindOfClass();

        if (v90)
        {
          v91 = [v11 objectForKeyedSubscript:@"NSPServerDNSAgentUUID"];
          objc_storeStrong((v2 + 432), v91);
        }
      }

      v92 = [v11 objectForKeyedSubscript:@"NSPServerBootstrapDNSAgentUUID"];
      if (!v92)
      {
        goto LABEL_76;
      }

      v93 = [v11 objectForKeyedSubscript:@"NSPServerBootstrapDNSAgentUUID"];
      objc_opt_class();
      v94 = objc_opt_isKindOfClass();

      if ((v94 & 1) == 0)
      {
        goto LABEL_76;
      }

      v95 = [v11 objectForKeyedSubscript:@"NSPServerBootstrapDNSAgentUUID"];
      objc_storeStrong((v2 + 440), v95);
    }

LABEL_76:
    goto LABEL_77;
  }

LABEL_93:
  v147 = objc_alloc_init(NWParameters);
  [v147 avoidNetworkAgentWithDomain:@"NetworkExtension" type:@"VPN"];
  [v147 avoidNetworkAgentWithDomain:@"NetworkExtension" type:@"AppVPN"];
  v111 = [[NWPathEvaluator alloc] initWithEndpoint:0 parameters:v147];
  v112 = *(a1 + 32);
  if (v112)
  {
    objc_storeStrong((v112 + 112), v111);
  }

  v113 = *(a1 + 32);
  if (v113)
  {
    v114 = *(v113 + 112);
  }

  else
  {
    v114 = 0;
  }

  [v114 addObserver:v113 forKeyPath:@"path" options:5 context:*(a1 + 32)];
  v115 = *(a1 + 32);
  if (v115 && (*(v115 + 11) = 1, (v116 = *(a1 + 32)) != 0))
  {
    v117 = objc_alloc_init(CWFInterface);
    v118 = v116[16];
    v116[16] = v117;

    [v116[16] activate];
    objc_initWeak(&location, v116);
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v154 = sub_100072C7C;
    v155 = &unk_10010A3C0;
    objc_copyWeak(v156, &location);
    v119 = v116[16];
    [v119 setEventHandler:&buf];

    v120 = v116[16];
    v151 = 0;
    [v120 startMonitoringEventType:2 error:&v151];
    v121 = v151;

    if (v121)
    {
      v122 = nplog_obj();
      if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
      {
        *v157 = 138412290;
        *&v157[4] = v121;
        _os_log_error_impl(&_mh_execute_header, v122, OS_LOG_TYPE_ERROR, "Failed to register for SSID changes: %@", v157, 0xCu);
      }
    }

    v123 = v116[16];
    v150 = 0;
    [v123 startMonitoringEventType:19 error:&v150];
    v124 = v150;

    if (v124)
    {
      v125 = nplog_obj();
      if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
      {
        *v157 = 138412290;
        *&v157[4] = v124;
        _os_log_error_impl(&_mh_execute_header, v125, OS_LOG_TYPE_ERROR, "Failed to register for IPv4 changes: %@", v157, 0xCu);
      }
    }

    v126 = v116[16];
    v149 = 0;
    [v126 startMonitoringEventType:20 error:&v149];
    v127 = v149;

    if (v127)
    {
      v128 = nplog_obj();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        *v157 = 138412290;
        *&v157[4] = v127;
        _os_log_error_impl(&_mh_execute_header, v128, OS_LOG_TYPE_ERROR, "Failed to register for IPv6 changes: %@", v157, 0xCu);
      }
    }

    v129 = v116[16];
    v148 = 0;
    [v129 startMonitoringEventType:30 error:&v148];
    v130 = v148;

    if (v130)
    {
      v131 = nplog_obj();
      if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        *v157 = 138412290;
        *&v157[4] = v130;
        _os_log_error_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "Failed to register for known network profile changes: %@", v157, 0xCu);
      }
    }

    sub_10006801C(v116);

    objc_destroyWeak(v156);
    objc_destroyWeak(&location);
    v132 = *(a1 + 32);
  }

  else
  {
    v132 = 0;
  }

  sub_1000640C0(v132);
  v133 = *(a1 + 32);
  if (v133)
  {
    if (*(v133 + 144))
    {
LABEL_118:
      sub_10006815C(v133);
      goto LABEL_119;
    }

    v136 = SCDynamicStoreCreate(kCFAllocatorDefault, @"networkserviceproxy event agent", sub_100073C14, 0);
    *(v133 + 144) = v136;
    if (v136)
    {
      v137 = v136;
      v138 = NPGetInternalQueue();
      LODWORD(v137) = SCDynamicStoreSetDispatchQueue(v137, v138);

      if (v137)
      {
        v139 = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetPvD);
        v140 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, 0);
        v141 = *(v133 + 144);
        *&buf = v140;
        *(&buf + 1) = v139;
        if (!SCDynamicStoreSetNotificationKeys(v141, 0, [NSArray arrayWithObjects:&buf count:2]))
        {
          v142 = nplog_obj();
          if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
          {
            Error = SCCopyLastError();
            *v157 = 138412290;
            *&v157[4] = Error;
            _os_log_error_impl(&_mh_execute_header, v142, OS_LOG_TYPE_ERROR, "Failed to update the dynamic store notification keys: %@", v157, 0xCu);
          }
        }

        goto LABEL_118;
      }

      v143 = nplog_obj();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
      {
        v145 = SCCopyLastError();
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v145;
        _os_log_error_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, "Failed to set dynamic store dispatch queue: %@", &buf, 0xCu);
      }
    }

    else
    {
      v143 = nplog_obj();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
      {
        v144 = SCCopyLastError();
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v144;
        _os_log_error_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, "Failed to create dynamic store: %@", &buf, 0xCu);
      }
    }
  }

LABEL_119:
  sub_10006418C(*(a1 + 32));
  sub_100064320(*(a1 + 32));
  v134 = *(a1 + 32);
  if (v134)
  {
    v135 = *(v134 + 64);
  }

  else
  {
    v135 = 0;
  }

  [v135 setup];
  sub_100061B54(*(a1 + 32));
}

void sub_100064088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_1000640C0(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[17];
    if (!v2)
    {
      v3 = [CoreTelephonyClient alloc];
      v4 = NPGetInternalQueue();
      v5 = [v3 initWithQueue:v4];
      v6 = v1[17];
      v1[17] = v5;

      v2 = v1[17];
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000732C0;
    v7[3] = &unk_10010A410;
    v7[4] = v1;
    return [v2 getCurrentDataSubscriptionContext:v7];
  }

  return result;
}

void sub_10006418C(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 112);
  v3 = [v2 path];
  if ([v3 hasKernelExtensionFilter])
  {

    if (*(a1 + 12))
    {
      return;
    }

    *(a1 + 12) = 1;
    if ((*(a1 + 9) & 1) == 0)
    {
      return;
    }

LABEL_9:
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "system is incompatible", v9, 2u);
    }

    [*(a1 + 80) reportSystemIncompatibility];
    [a1 policiesUpdated:*(a1 + 64) policy:0 resolverInfoChanged:0];
    return;
  }

  v4 = [*(a1 + 112) path];
  v5 = [v4 hasCustomPFRules];

  if (v5 == *(a1 + 12))
  {
    return;
  }

  *(a1 + 12) = v5;
  if ((*(a1 + 9) & 1) == 0)
  {
    return;
  }

  if (v5)
  {
    goto LABEL_9;
  }

  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "system is compatible", buf, 2u);
  }

  v8 = [*(a1 + 64) mergeProxyTrafficStateWithCurrentPolicy];
  [a1 policiesUpdated:*(a1 + 64) policy:v8 resolverInfoChanged:1];
}

void sub_100064320(uint64_t a1)
{
  if (a1)
  {
    v4[0] = 0;
    v4[1] = v4;
    v4[2] = 0x3032000000;
    v4[3] = sub_100001F54;
    v4[4] = sub_100054494;
    v5 = os_transaction_create();
    v2 = NPGetInternalQueue();
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100064FE0;
    v3[3] = &unk_100109450;
    v3[4] = a1;
    v3[5] = v4;
    dispatch_async(v2, v3);

    _Block_object_dispose(v4, 8);
  }
}

void sub_100064414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100064430(uint64_t a1, void *a2)
{
  v3 = a2;
  string = xpc_dictionary_get_string(v3, _xpc_event_key_name);
  if (!strcmp(string, "com.apple.networkextension.app-paths-changed"))
  {
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "UUID cache changed", &v8, 2u);
    }

    v7 = *(a1 + 32);
    if (v7 && *(v7 + 9) == 1)
    {
      [*(v7 + 48) setup];
      sub_100065228(v7);
    }
  }

  else if (!strcmp(string, "com.apple.networkserviceproxy.reset"))
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "com.apple.networkserviceproxy.reset";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received a %s notification, resetting", &v8, 0xCu);
    }

    sub_10006459C(*(a1 + 32));
    exit(0);
  }
}

void sub_10006459C(uint64_t a1)
{
  if (a1)
  {
    [*(a1 + 64) resetConfigurationManager];
    [*(a1 + 48) setup];

    sub_100065228(a1);
  }
}

void sub_100064808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100064820(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 112);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 path];
  if ([v4 status] == 1)
  {
    v5 = [v4 interface];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 interfaceName];
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a1 + 32);
    if (!v8)
    {
      v11 = 0;
      goto LABEL_15;
    }

    if (*(v8 + 8) == 1)
    {
      v9 = nplog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v40) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Retry subscription check", &v40, 2u);
      }

      sub_1000674F4(v8);
      v10 = os_transaction_create();
      sub_100066A0C(v8);
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v11 = v11[12];
  }

LABEL_15:
  v12 = v11;
  v13 = v12;
  if (!v6 || v12)
  {
    v22 = *(a1 + 32);
    if (!v22 || (v23 = *(v22 + 96)) == 0 || !v7)
    {

      goto LABEL_30;
    }

    v24 = v23;
    v25 = [v24 interfaceName];
    v26 = [v25 isEqualToString:v7];

    if (v26)
    {
      goto LABEL_30;
    }
  }

  v14 = nplog_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      v15 = v15[12];
    }

    v16 = v15;
    v17 = [v16 interfaceName];
    v18 = [v6 interfaceName];
    v40 = 138412546;
    v41 = v17;
    v42 = 2112;
    v43 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Primary interface changed from %@ to %@", &v40, 0x16u);
  }

  v19 = *(a1 + 32);
  if (!v19 || (objc_storeStrong((v19 + 96), v6), (v21 = *(a1 + 32)) == 0))
  {
    v27 = 0;
    goto LABEL_44;
  }

  *(v21 + 36) = 0;
LABEL_30:
  v27 = *(a1 + 32);
  if (v27)
  {
    if (!*(v27 + 96))
    {
      goto LABEL_62;
    }

    Property = objc_getProperty(v27, v20, 280, 1);
    v29 = *(a1 + 32);
    if (v29)
    {
      v30 = *(v29 + 96);
    }

    else
    {
      v30 = 0;
    }

    v31 = Property;
    [v30 interfaceIndex];
    if (v31 && v31[3])
    {
      NEFlowDirectorSetDelegateInterface();
    }

    v27 = *(a1 + 32);
    if (v27)
    {
LABEL_62:
      if (!*(v27 + 64) || ([*(v27 + 64) handlePathChange:v4], (v27 = *(a1 + 32)) != 0))
      {
        if (!*(v27 + 72) || ([*(v27 + 72) handlePathChange:v4], (v27 = *(a1 + 32)) != 0))
        {
          if (*(v27 + 208))
          {
            sub_10004C6AC(*(v27 + 208), v4);
            v27 = *(a1 + 32);
          }
        }
      }
    }
  }

LABEL_44:
  if (sub_100064C7C(v27))
  {
    v32 = *(a1 + 32);
    if (v32)
    {
      if (*(v32 + 19) == 1)
      {
        v33 = nplog_obj();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(a1 + 32);
          v40 = 138412290;
          v41 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%@ Primary interface changed to non Wi-Fi, reporting service active ...", &v40, 0xCu);
        }

        sub_100064D28(*(a1 + 32), 0);
      }

      else if (*(v32 + 20) == 1)
      {
        v35 = nplog_obj();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = *(a1 + 32);
          v40 = 138412290;
          v41 = v36;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%@ Primary interface changed to non Wi-Fi, removing pending outage notification", &v40, 0xCu);
        }

        v37 = *(a1 + 32);
        if (v37)
        {
          *(v37 + 20) = 0;
          sub_1000654C0(v37);
          sub_100071A04(v37);
        }
      }
    }
  }

  sub_10006418C(*(a1 + 32));
  sub_100064E08(*(a1 + 32));
  v38 = *(*(a1 + 40) + 8);
  v39 = *(v38 + 40);
  *(v38 + 40) = 0;
}

uint64_t sub_100064C7C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 112);
    v3 = [v2 path];
    if ([v3 status] == 1)
    {
      v4 = [*(v1 + 112) path];
      v5 = [v4 interface];
      v6 = [v5 type];

      if (v6 != 1)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_100064D28(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      *(a1 + 19) = 1;
      v3 = nplog_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "reporting captive network outage", v5, 2u);
      }

      [a1 policiesUpdated:*(a1 + 64) policy:0 resolverInfoChanged:0];
      sub_1000654C0(a1);
      *(a1 + 20) = 0;
    }

    else
    {
      *(a1 + 19) = 0;
      v4 = [*(a1 + 64) mergeProxyTrafficStateWithCurrentPolicy];
      [a1 policiesUpdated:*(a1 + 64) policy:v4 resolverInfoChanged:0];
      sub_1000654C0(a1);
    }

    sub_100071A04(a1);
  }
}

void sub_100064E08(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 96);
    v3 = [v2 interfaceName];

    if (*(a1 + 32) >= 1 && v3 != 0)
    {
      *__str = 0u;
      v15 = 0u;
      snprintf(__str, 0x10uLL, "%s", [v3 UTF8String]);
      LODWORD(v15) = -1;
      if (ioctl(*(a1 + 32), 0xC020698AuLL, __str) < 0)
      {
        v7 = nplog_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = __error();
          v9 = strerror(*v8);
          *buf = 136315138;
          v11 = v9;
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "failed to get link quality metrics %s", buf, 0xCu);
        }
      }

      else if (v15 != *(a1 + 36))
      {
        v5 = nplog_obj();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [NPUtilities stringFromLinkQualityValue:v15];
          *buf = 138412546;
          v11 = v3;
          v12 = 2112;
          v13 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Interface %@, link quality changed to %@", buf, 0x16u);
        }

        *(a1 + 36) = v15;
        [*(a1 + 72) handleLinkQualityChange:?];
      }
    }
  }
}

void sub_100064FE0(uint64_t a1)
{
  xdict = xpc_dictionary_create(0, 0, 0);
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 resurrectionDate];

  if (v4)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 48);
    }

    else
    {
      v6 = 0;
    }

    v7 = [v6 resurrectionDate];
    [v7 timeIntervalSinceReferenceDate];
    v9 = v8;

    xpc_dictionary_set_int64(xdict, "ResurrectionDate", v9);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 72);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 tokenIssuanceRestrictedUntilDate];

  if (v12)
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = *(v13 + 72);
    }

    else
    {
      v14 = 0;
    }

    v15 = [v14 tokenIssuanceRestrictedUntilDate];
    [v15 timeIntervalSinceReferenceDate];
    v17 = v16;
  }

  else
  {
    v17 = -1;
  }

  xpc_dictionary_set_int64(xdict, "TokenIssuanceRestrictedUntilDate", v17);
  v18 = *(a1 + 32);
  if (v18 && (v19 = *(v18 + 176)) != 0)
  {
    [v19 timeIntervalSinceReferenceDate];
    v21 = v20;
  }

  else
  {
    v21 = -1;
  }

  xpc_dictionary_set_int64(xdict, "SubscriptionCheckDate", v21);
  v22 = *(a1 + 32);
  if (v22 && (*(v22 + 8) & 1) != 0)
  {
    v23 = 1;
  }

  else
  {
    v23 = -1;
  }

  xpc_dictionary_set_int64(xdict, "SubscriptionCheckOnNetworkChange", v23);
  v24 = *(a1 + 32);
  if (v24 && (v25 = *(v24 + 216)) != 0)
  {
    [v25 timeIntervalSinceReferenceDate];
    v27 = v26;
  }

  else
  {
    v27 = -1;
  }

  xpc_dictionary_set_int64(xdict, "ProxyRestoreDate", v27);
  v28 = *(a1 + 32);
  if (v28 && (v29 = *(v28 + 224)) != 0)
  {
    [v29 timeIntervalSinceReferenceDate];
    v31 = v30;
  }

  else
  {
    v31 = -1;
  }

  xpc_dictionary_set_int64(xdict, "ODoHRestoreDate", v31);
  v32 = *(a1 + 32);
  if (v32 && (v33 = *(v32 + 248)) != 0)
  {
    [v33 timeIntervalSinceReferenceDate];
    v35 = v34;
  }

  else
  {
    v35 = -1;
  }

  xpc_dictionary_set_int64(xdict, "odohAuthRestoreDate", v35);
  xpc_set_event();
  v36 = *(*(a1 + 40) + 8);
  v37 = *(v36 + 40);
  *(v36 + 40) = 0;
}

void sub_100065228(uint64_t a1)
{
  v2 = [*(a1 + 48) enabled];
  if ([v2 BOOLValue])
  {
    v3 = *(a1 + 9);

    if ((v3 & 1) == 0)
    {
      v4 = nplog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting the provider", buf, 2u);
      }

      *(a1 + 9) = 1;
      Property = objc_getProperty(a1, v5, 280, 1);
      sub_1000A09AC(Property);
      return;
    }
  }

  else
  {
  }

  v7 = [*(a1 + 48) enabled];
  if ([v7 BOOLValue])
  {

LABEL_14:

    sub_100061B54(a1);
    return;
  }

  v8 = *(a1 + 9);

  if (v8 != 1)
  {
    goto LABEL_14;
  }

  v9 = nplog_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Stopping the provider", v12, 2u);
  }

  *(a1 + 9) = 0;
  v11 = objc_getProperty(a1, v10, 280, 1);
  sub_1000A0904(v11, 1);
  sub_100061B54(a1);
}

uint64_t sub_1000653A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 conditionsCount])
    {
      v5 = 0;
      while (1)
      {
        v6 = [v4 conditionsAtIndex:v5] - 2;
        if (v6 < 0x14 && ((0xC0041u >> v6) & 1) != 0)
        {
          break;
        }

        if (++v5 >= [v4 conditionsCount])
        {
          goto LABEL_7;
        }
      }

      a1 = 1;
    }

    else
    {
LABEL_7:
      a1 = 0;
    }
  }

  return a1;
}

void sub_1000654C0(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Saving server state", buf, 2u);
    }

    v4 = *(a1 + 13);
    if (v4 == 1)
    {
      v5 = [NSNumber numberWithBool:1];
      [v2 setObject:v5 forKeyedSubscript:@"NSPServerConfigOutage"];
    }

    if (*(a1 + 14) == 1)
    {
      v6 = [NSNumber numberWithBool:1];
      [v2 setObject:v6 forKeyedSubscript:@"NSPServerTokenOutage"];

      v7 = 0;
    }

    else
    {
      v7 = v4 ^ 1;
    }

    if (*(a1 + 15) == 1)
    {
      v8 = [NSNumber numberWithBool:1];
      [v2 setObject:v8 forKeyedSubscript:@"NSPServerProxyOutage"];

      v7 = 0;
    }

    if (*(a1 + 16) == 1)
    {
      v9 = [NSNumber numberWithBool:1];
      [v2 setObject:v9 forKeyedSubscript:@"NSPServerProxyNetworkOutage"];

      v7 = 0;
    }

    v10 = *(a1 + 216);
    if (v10)
    {
      [v2 setObject:v10 forKeyedSubscript:@"NSPServerProxyOutageRestoreDate"];
      v7 = 0;
    }

    if (*(a1 + 17) == 1)
    {
      v11 = *(a1 + 224);
      if (v11)
      {
        [v2 setObject:v11 forKeyedSubscript:@"NSPServerODoHOutageRestoreDate"];
        v7 = 0;
      }
    }

    if (*(a1 + 18) == 1)
    {
      v12 = *(a1 + 248);
      if (v12)
      {
        [v2 setObject:v12 forKeyedSubscript:@"NSPServerODoHAuthOutageRestoreDate"];
        v7 = 0;
      }
    }

    if (*(a1 + 19) == 1)
    {
      v13 = [NSNumber numberWithBool:1];
      [v2 setObject:v13 forKeyedSubscript:@"NSPServerCaptiveOutage"];

      v7 = 0;
    }

    if (*(a1 + 20) == 1)
    {
      v14 = [NSNumber numberWithBool:1];
      [v2 setObject:v14 forKeyedSubscript:@"NSPServerCaptiveOutageWaitingForUserActivity"];

      v7 = 0;
    }

    if (*(a1 + 23) == 1)
    {
      v15 = [NSNumber numberWithBool:1];
      [v2 setObject:v15 forKeyedSubscript:@"MPTCPProxyStatus"];

      v7 = 0;
    }

    if (*(a1 + 22) == 1)
    {
      v16 = [NSNumber numberWithBool:1];
      [v2 setObject:v16 forKeyedSubscript:@"NSPServerFraudAlert"];

      v7 = 0;
    }

    v17 = *(a1 + 360);
    if (v17)
    {
      [v2 setObject:v17 forKeyedSubscript:@"NSPServerLastGeohash"];
      v7 = 0;
    }

    v18 = *(a1 + 368);
    if (v18)
    {
      [v2 setObject:v18 forKeyedSubscript:@"NSPServerLastCountryPlusTimezone"];
      v7 = 0;
    }

    v19 = *(a1 + 376);
    if (v19)
    {
      [v2 setObject:v19 forKeyedSubscript:@"NSPServerPrivateCloudComputeEnvironment"];
      v7 = 0;
    }

    v20 = *(a1 + 400);
    if (v20)
    {
      [v2 setObject:v20 forKeyedSubscript:@"NSPServerMultiHopProxyAgentUUID"];
      v7 = 0;
    }

    v21 = *(a1 + 408);
    if (v21)
    {
      [v2 setObject:v21 forKeyedSubscript:@"NSPServerSingleHopProxyAgentUUID"];
      v7 = 0;
    }

    v22 = *(a1 + 416);
    if (v22)
    {
      [v2 setObject:v22 forKeyedSubscript:@"NSPServerMultiHopFallbackProxyAgentUUID"];
      v7 = 0;
    }

    v23 = *(a1 + 424);
    if (v23)
    {
      [v2 setObject:v23 forKeyedSubscript:@"NSPServerSingleHopFallbackProxyAgentUUID"];
      v7 = 0;
    }

    v24 = *(a1 + 432);
    if (v24)
    {
      [v2 setObject:v24 forKeyedSubscript:@"NSPServerDNSAgentUUID"];
      v25 = *(a1 + 440);
      if (!v25)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v25 = *(a1 + 440);
      if (!v25)
      {
        if (v7)
        {
          v31 = +[NEFileHandleMaintainer sharedMaintainer];
          [v31 setAuxiliaryData:@"NIL" forKey:@"NSPServerAuxilaryData"];

          v27 = +[NEFileHandleMaintainer sharedMaintainer];
          [v27 commit];
LABEL_56:

          return;
        }

LABEL_48:
        v32 = 0;
        v26 = [NSKeyedArchiver archivedDataWithRootObject:v2 requiringSecureCoding:1 error:&v32];
        v27 = v32;
        v28 = nplog_obj();
        v29 = v28;
        if (!v26 || v27)
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = v27;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "archivedDataWithRootObject for server data failed with error: %@", buf, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Saving server data in UEA", buf, 2u);
          }

          v30 = +[NEFileHandleMaintainer sharedMaintainer];
          [v30 setAuxiliaryData:v26 forKey:@"NSPServerAuxilaryData"];

          v29 = +[NEFileHandleMaintainer sharedMaintainer];
          [v29 commit];
        }

        goto LABEL_56;
      }
    }

    [v2 setObject:v25 forKeyedSubscript:@"NSPServerBootstrapDNSAgentUUID"];
    goto LABEL_48;
  }
}

void sub_100066978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100066A0C(id *a1)
{
  if (a1)
  {
    v2 = a1[6];
    v3 = [v2 cloudSubscriptionCheckEnabled];
    if (v3)
    {
      v4 = v3;
      v5 = [a1[6] cloudSubscriptionCheckEnabled];
      v6 = [v5 BOOLValue];

      if (!v6)
      {
        return;
      }
    }

    else
    {
    }

    objc_initWeak(&location, a1);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100070828;
    v7[3] = &unk_10010A2B0;
    objc_copyWeak(&v8, &location);
    [CSFFeatureManager requestFeatureWithId:@"networking.privacy.subscriber" completion:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void sub_100066B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100066B38(uint64_t *val)
{
  if (val && !val[19])
  {
    objc_initWeak(&location, val);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100070E70;
    v6[3] = &unk_100109538;
    objc_copyWeak(&v7, &location);
    v2 = [CSFFeatureManager registerForFeatureChangeNotificationsUsingBlock:v6];
    v4 = val[19];
    v3 = val + 19;
    *v3 = v2;

    if (!*v3)
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v10 = "[NSPServer registerForPrivacyProxySubscriptionChanges]";
        _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s called with null self.featureChangeToken", buf, 0xCu);
      }
    }

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void sub_100066C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100066CC0(id *a1)
{
  if (a1)
  {
    v2 = nplog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "checking trial config version", &v13, 2u);
    }

    v3 = a1[29];
    if (v3 || ([TRIClient clientWithIdentifier:265], v4 = objc_claimAutoreleasedReturnValue(), v5 = a1[29], a1[29] = v4, v5, (v3 = a1[29]) != 0))
    {
      [v3 refresh];
      v6 = a1[29];
      v7 = [v6 levelForFactor:@"configVersionPull" withNamespaceName:@"NETWORK_SERVICE_PROXY_CONFIG_UPDATE"];

      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Trilevel for config pull version %@", &v13, 0xCu);
      }

      if (v7 && [v7 longValue])
      {
        v9 = [v7 longValue];
        v10 = [a1[6] trialConfigVersion];
        v11 = [v10 longValue];

        if (v9 != v11)
        {
          v12 = a1[8];
          [v12 setConfigurationTrialVersion:{-[NSObject longValue](v7, "longValue")}];
        }
      }
    }

    else
    {
      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v13 = 136315138;
        v14 = "[NSPServer checkTrialConfigVersion]";
        _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s called with null self.trialClient", &v13, 0xCu);
      }
    }
  }
}

void sub_100066EDC(id *a1)
{
  if (a1)
  {
    if (sub_10006D9A0(a1))
    {
      v2 = [a1[6] resetTomorrowDate];
      [v2 timeIntervalSinceNow];
      v4 = v3;

      v5 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REPEATING, 0);
      xpc_dictionary_set_int64(v5, XPC_ACTIVITY_DELAY, v4);
      xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 0);
      xpc_dictionary_set_BOOL(v5, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 0);
      xpc_dictionary_set_int64(v5, XPC_ACTIVITY_GRACE_PERIOD, 10800);
      xpc_dictionary_set_string(v5, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
      objc_initWeak(location, a1);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10006DCC0;
      handler[3] = &unk_100109F80;
      objc_copyWeak(&v15, location);
      xpc_activity_register("com.apple.networkserviceproxy.reset-tomorrow", v5, handler);
      objc_destroyWeak(&v15);
      objc_destroyWeak(location);

      return;
    }

    xpc_activity_unregister("com.apple.networkserviceproxy.reset-tomorrow");
    if (sub_10006DB2C(a1))
    {
      v6 = [a1[10] hasPausedApps];
      if (v6)
      {
        v7 = nplog_obj();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(location[0]) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resetting all paused apps, date is no longer tomorrow", location, 2u);
        }

        [a1[10] clearAllPausedApps];
      }

      v8 = a1[6];
      v9 = [v8 userTier];
      if ([v9 unsignedIntegerValue] == 1)
      {
        v10 = [a1[6] willResetSubscriberTierTomorrow];
        v11 = [v10 BOOLValue];

        if (v11)
        {
          v12 = nplog_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(location[0]) = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resetting user tier to subscriber, date is no longer tomorrow", location, 2u);
          }

          if (([a1[8] setUserTier:2 resetDate:0 clearResetDate:1 changeSource:2] & 1) == 0)
          {
            v13 = nplog_obj();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              LOWORD(location[0]) = 0;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to set user tier to subscriber", location, 2u);
            }
          }

          goto LABEL_19;
        }
      }

      else
      {
      }

      [a1[8] clearResetDate];
LABEL_19:
      if (v6)
      {
        sub_10006E014(a1);
      }
    }
  }
}

void sub_1000671F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100067468(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 17) = 0;
    v2 = *(a1 + 224);
    *(a1 + 224) = 0;

    v3 = *(a1 + 192);
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = *(a1 + 192);
      *(a1 + 192) = 0;
    }

    *(a1 + 18) = 0;
    v5 = *(a1 + 248);
    *(a1 + 248) = 0;

    v6 = *(a1 + 200);
    if (v6)
    {
      dispatch_source_cancel(v6);
      v7 = *(a1 + 200);
      *(a1 + 200) = 0;
    }
  }
}

void sub_1000674F4(uint64_t a1)
{
  if (a1)
  {
    v2 = nplog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "reset subscription check timer", v6, 2u);
    }

    v3 = *(a1 + 160);
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = *(a1 + 160);
      *(a1 + 160) = 0;
    }

    v5 = *(a1 + 176);
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 8) = 0;

    sub_100064320(a1);
  }
}

void sub_100067598(uint64_t a1)
{
  if (a1 && *(a1 + 152))
  {
    [CSFFeatureManager unregisterForFeatureChangeNotificationsUsingObserver:?];
    v2 = *(a1 + 152);
    *(a1 + 152) = 0;
  }
}

void sub_1000675F4(uint64_t a1)
{
  if (a1)
  {
    v2 = NPGetInternalQueue();
    xpc_set_event_stream_handler("com.apple.distnoted.matching", v2, &stru_10010A320);

    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = 138412290;
      v5 = a1;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@ un-registered for apps installation/uninstallation event", &v4, 0xCu);
    }
  }
}

void sub_1000676C8(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 328);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(a1 + 328);
      *(a1 + 328) = 0;
    }

    *(a1 + 36) = 0;
  }
}

void sub_10006770C()
{
  objc_opt_self();
  v0 = nplog_obj();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "remove server userevent agent data", v3, 2u);
  }

  v1 = +[NEFileHandleMaintainer sharedMaintainer];
  [v1 setAuxiliaryData:@"NIL" forKey:@"NSPServerAuxilaryData"];

  v2 = +[NEFileHandleMaintainer sharedMaintainer];
  [v2 commit];
}

void sub_1000677BC(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 240);
    if (v2)
    {
      v3 = *(a1 + 232);
      [v3 removeUpdateHandlerForToken:v2];

      v4 = *(a1 + 240);
      *(a1 + 240) = 0;
    }

    v5 = *(a1 + 232);
    *(a1 + 232) = 0;
  }
}

void sub_100067F54(_BYTE *a1, const char *a2)
{
  if (objc_getProperty(a1, a2, 280, 1))
  {
    v3 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
    [v3 removePoliciesForMPTCPConverterProxy:1];

    a1[23] = 0;

    sub_1000654C0(a1);
  }

  else
  {
    v4 = nplog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "flow divert provider is unavailable", v5, 2u);
    }
  }
}

void sub_10006801C(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 128) currentKnownNetworkProfile];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 networkName];
      if (!v4)
      {
        v5 = [*(a1 + 128) currentScanResult];
        v4 = [v5 networkName];
      }

      v6 = [v3 isPrivacyProxyEnabled];
      v7 = *(a1 + 80);
      if (v6)
      {
        [v7 reportActiveOnWiFiName:v4];
      }

      else
      {
        [v7 reportDisabledOnWiFiName:v4];
      }

      v10 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
      [v10 wifiDisabled:v6 ^ 1];
    }

    else
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "No current Wi-Fi network, clearing state", v11, 2u);
      }

      [*(a1 + 80) clearNetworkStatusForType:1];
      v9 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
      [v9 wifiDisabled:0];
    }
  }
}

void sub_10006815C(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = SCPreferencesCreateWithAuthorization(kCFAllocatorDefault, @"networkserviceproxy", 0, kSCPreferencesUseEntitlementAuthorization);
  if (v2)
  {
    v3 = v2;
    v4 = SCNetworkSetCopyCurrent(v2);
    if (v4)
    {
      v5 = v4;
      v6 = SCNetworkSetCopyServices(v4);
      if (v6)
      {
        v7 = v6;
        v8 = objc_alloc_init(NSMutableArray);
        Count = CFArrayGetCount(v7);
        if (Count >= 1)
        {
          v10 = Count;
          for (i = 0; i != v10; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
            if (SCNetworkServiceGetEnabled(ValueAtIndex))
            {
              Interface = SCNetworkServiceGetInterface(ValueAtIndex);
              if (Interface)
              {
                v14 = Interface;
                if (SCNetworkInterfaceGetDisablePrivateRelay())
                {
                  v15 = SCNetworkInterfaceGetBSDName(v14);
                  if (v15)
                  {
                    [v8 addObject:v15];
                  }
                }
              }
            }
          }
        }

        CFRelease(v5);
        CFRelease(v7);
        CFRelease(v3);
        goto LABEL_26;
      }

      v18 = nplog_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        Error = SCCopyLastError();
        *buf = 138412290;
        v38 = Error;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to copy services: %@", buf, 0xCu);
      }

      CFRelease(v5);
    }

    else
    {
      v17 = nplog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v29 = SCCopyLastError();
        *buf = 138412290;
        v38 = v29;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to get current set: %@", buf, 0xCu);
      }
    }

    CFRelease(v3);
  }

  else
  {
    v16 = nplog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v28 = SCCopyLastError();
      *buf = 138412290;
      v38 = v28;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to create SCPreferences: %@", buf, 0xCu);
    }
  }

  v8 = 0;
LABEL_26:
  if ([v8 count])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = v8;
    v19 = v8;
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v33;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v32 + 1) + 8 * j);
          v25 = nplog_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v38 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Interface disabled: %{public}@", buf, 0xCu);
          }

          v26 = sub_100073BA0(v24);
          [*(a1 + 80) reportDisabledOnInterfaceName:v24 displayName:v26 type:3];
        }

        v21 = [v19 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v21);
    }

    v8 = v31;
  }

  else
  {
    [*(a1 + 80) clearNetworkStatusForType:3];
  }

  v27 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v27 replaceDisabledInterfaces:v8];
}

void sub_100068898(uint64_t a1)
{
  if (!a1 || [*(a1 + 64) effectiveUserTier] == 1)
  {
    return;
  }

  v2 = *(a1 + 128);
  if (!v2)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    *buf = 138412290;
    *&buf[4] = a1;
    v11 = "%@ no Wi-Fi interface";
LABEL_27:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v11, buf, 0xCu);
    goto LABEL_28;
  }

  v3 = [v2 currentKnownNetworkProfile];

  if (!v3)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    *buf = 138412290;
    *&buf[4] = a1;
    v11 = "%@ there is no current Wi-Fi network profile";
    goto LABEL_27;
  }

  v4 = [*(a1 + 128) currentKnownNetworkProfile];
  v5 = [v4 networkName];

  if (!v5)
  {
    v10 = nplog_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    *buf = 138412290;
    *&buf[4] = a1;
    v11 = "%@ no network name in the current Wi-Fi network profile";
    goto LABEL_27;
  }

  v6 = [*(a1 + 128) interfaceName];
  v7 = [*(a1 + 128) globalIPv4InterfaceName];
  v8 = [*(a1 + 128) globalIPv4InterfaceName];
  v9 = v6 && (([v6 isEqual:v7] & 1) != 0 || (objc_msgSend(v6, "isEqual:", v8) & 1) != 0);

  v10 = nplog_obj();
  v12 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v12)
    {
      *buf = 138412290;
      *&buf[4] = a1;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ Wi-Fi interface is primary", buf, 0xCu);
    }

    if (sub_10007252C(a1))
    {
      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 104);
        *buf = 138412546;
        *&buf[4] = a1;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%@ Wi-Fi network [%@] is already evaluated", buf, 0x16u);
      }
    }

    else
    {
      sub_100072420(a1);
      v15 = *(a1 + 128);
      v16 = [v15 currentKnownNetworkProfile];
      v17 = [v16 networkName];
      v18 = *(a1 + 104);
      *(a1 + 104) = v17;

      v19 = nplog_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 128);
        v21 = [v20 currentKnownNetworkProfile];
        v22 = [v21 networkName];
        *buf = 138412547;
        *&buf[4] = a1;
        *&buf[12] = 2113;
        *&buf[14] = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@ performing captive evaluation of Wi-Fi network [%{private}@]", buf, 0x16u);
      }

      *(a1 + 20) = 0;
      sub_1000654C0(a1);
      sub_100071A04(a1);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v32 = sub_100001F54;
      v33 = sub_100054494;
      v34 = os_transaction_create();
      objc_initWeak(&location, a1);
      v23 = +[NSPCaptiveWiFiHandler sharedHandler];
      v24 = *(a1 + 128);
      v25 = [v24 interfaceName];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000725D4;
      v28[3] = &unk_10010A348;
      objc_copyWeak(&v29, &location);
      v28[4] = buf;
      v26 = [v23 evaluate:v25 completionHandler:v28];

      if ((v26 & 1) == 0)
      {
        v27 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = 0;
      }

      objc_destroyWeak(&v29);

      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);
    }

    return;
  }

  if (v12)
  {
    *buf = 138412290;
    *&buf[4] = a1;
    v11 = "%@ Wi-Fi interface is not primary";
    goto LABEL_27;
  }

LABEL_28:

  sub_1000724D8(a1);
}

void sub_100068DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10006A1DC(_BOOL8 a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 conditionsCount])
    {
      v5 = 0;
      do
      {
        v6 = [v4 conditionsAtIndex:v5];
        a1 = v6 == 18;
        if (v6 == 18)
        {
          break;
        }

        ++v5;
      }

      while (v5 < [v4 conditionsCount]);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void sub_10006A9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006AA08(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"failure";
    if (a2)
    {
      v5 = @"success";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Configuration refresh activity finished with result %@", &v8, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_10006B6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v23 + 88));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_10006B724(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = nplog_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = @"failure";
    if (a2)
    {
      v7 = @"success";
    }

    *buf = 138412290;
    v33 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Configuration refresh activity finished with result %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v9 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_33;
  }

  if (*(a1 + 32))
  {
    if (![WeakRetained[11] containsObject:?])
    {
      if (a2)
      {
        v14 = nplog_obj();
        if (!os_log_type_enabled(&v14->super.super, OS_LOG_TYPE_INFO))
        {
          goto LABEL_26;
        }

        *buf = 0;
        v15 = "Success reported while checking configuration, ignore reporting any errors";
LABEL_25:
        _os_log_impl(&_mh_execute_header, &v14->super.super, OS_LOG_TYPE_INFO, v15, buf, 2u);
        goto LABEL_26;
      }

LABEL_18:
      if (v5)
      {
        v14 = [v5 domain];
        if (([(NSPPrivateRelayIncompatibleNetworkStats *)v14 isEqualToString:NSURLErrorDomain]& 1) != 0)
        {
          if ([v5 code] == -1009)
          {
            goto LABEL_26;
          }

          v16 = [v5 code];

          if (v16 == -1005)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }
      }

      v17 = *(a1 + 48);
      if (v17 && (*(v17 + 13) = 1, (v18 = *(a1 + 48)) != 0))
      {
        objc_storeStrong((v18 + 312), *(a1 + 64));
        v19 = *(a1 + 48);
        if (v19)
        {
          v20 = v19[8];
LABEL_32:
          [v19 policiesUpdated:v20 policy:0 resolverInfoChanged:0];
          sub_1000654C0(*(a1 + 48));
          goto LABEL_33;
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = 0;
      goto LABEL_32;
    }

    [v9[11] removeObject:*(a1 + 32)];
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_18;
  }

  v10 = v9[6];
  v11 = [v10 etag];
  v12 = [v11 isEqualToString:*(a1 + 40)];

  if (!v12)
  {
    v14 = nplog_obj();
    if (!os_log_type_enabled(&v14->super.super, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v15 = "Proxy configuration changed, ignore reporting any errors";
    goto LABEL_25;
  }

  v13 = *(a1 + 96);
  if (v13 <= 3)
  {
    if (v13 != 1)
    {
      if (v13 == 2)
      {
        [v9 proxyConnectivityOutage];
      }

      goto LABEL_33;
    }

    v14 = objc_alloc_init(NSPPrivateRelayIncompatibleNetworkStats);
    v24 = *(a1 + 48);
    if (v24)
    {
      v25 = *(v24 + 48);
    }

    else
    {
      v25 = 0;
    }

    v26 = [v25 userTier];
    v27 = [v26 intValue];
    if (v27 >= 3)
    {
      v28 = [NSString stringWithFormat:@"(unknown: %i)", v27];
    }

    else
    {
      v28 = *(&off_10010A560 + v27);
    }

    [(NSPPrivateRelayIncompatibleNetworkStats *)v14 setTierType:v28];

    if ([*(a1 + 56) type] == 1)
    {
      v29 = v9[10];
      v30 = sub_10006BB34(v9);
      [v29 reportBlockedOnWiFiName:v30];

      v31 = @"WiFi";
    }

    else if ([*(a1 + 56) type] == 2)
    {
      sub_10006BBB4(v9);
      v31 = @"Cell";
    }

    else
    {
      sub_10006BC78(v9, *(a1 + 56));
      v31 = @"Wired";
    }

    [(NSPPrivateRelayIncompatibleNetworkStats *)v14 setInterfaceType:v31];
    [(NSPProxyAnalytics *)v14 sendAnalytics];
LABEL_26:

    goto LABEL_33;
  }

  if (v13 == 4)
  {
    sub_10006BD04(v9, 0);
  }

  else if (v13 == 5)
  {
    sub_10006BF64(v9, 0);
  }

LABEL_33:
  v21 = *(a1 + 72);
  if (v21)
  {
    (*(v21 + 16))(v21, a2);
  }

  v22 = *(*(a1 + 80) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = 0;
}

id sub_10006BB34(uint64_t a1)
{
  v2 = [*(a1 + 128) currentKnownNetworkProfile];
  v3 = [v2 networkName];

  if (!v3)
  {
    v4 = [*(a1 + 128) currentScanResult];
    v3 = [v4 networkName];
  }

  return v3;
}

id sub_10006BBB4(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (!v2)
  {
    v3 = [CoreTelephonyClient alloc];
    v4 = NPGetInternalQueue();
    v5 = [v3 initWithQueue:v4];
    v6 = *(a1 + 136);
    *(a1 + 136) = v5;

    v2 = *(a1 + 136);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000735F0;
  v8[3] = &unk_10010A410;
  v8[4] = a1;
  return [v2 getCurrentDataSubscriptionContext:v8];
}

void sub_10006BC78(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 type] == 3)
  {
    v3 = [v5 interfaceName];
    v4 = sub_100073BA0(v3);
    [*(a1 + 80) reportBlockedOnInterfaceName:v3 displayName:v4 type:3];
  }
}

void sub_10006BD04(uint64_t a1, int a2)
{
  if (*(a1 + 18) != 1 || a2 != 0)
  {
    v4 = nplog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "report odoh auth outage", v19, 2u);
    }

    v5 = *(a1 + 248);
    if (v5)
    {
      [v5 timeIntervalSinceNow];
      v7 = v6;
    }

    else if (*(a1 + 320))
    {
      v7 = *(a1 + 320);
    }

    else
    {
      v7 = 1800;
    }

    if (!*(a1 + 200))
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19[0]) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting odoh auth outage restore timer", v19, 2u);
      }

      v9 = NPGetInternalQueue();
      v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);
      v11 = *(a1 + 200);
      *(a1 + 200) = v10;

      v12 = *(a1 + 200);
      if (v12)
      {
        v13 = v12;
        v14 = dispatch_time(0x8000000000000000, 1000000000 * v7);
        dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);

        objc_initWeak(&location, a1);
        v15 = *(a1 + 200);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10006CF04;
        v19[3] = &unk_100109538;
        v16 = v15;
        objc_copyWeak(&v20, &location);
        dispatch_source_set_event_handler(v16, v19);

        dispatch_resume(*(a1 + 200));
        v17 = [NSDate dateWithTimeIntervalSinceNow:v7];
        v18 = *(a1 + 248);
        *(a1 + 248) = v17;

        sub_100064320(a1);
        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);
      }
    }

    *(a1 + 18) = 1;
    [a1 policiesUpdated:*(a1 + 64) policy:0 resolverInfoChanged:0];
    sub_1000654C0(a1);
  }
}

void sub_10006BF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006BF64(uint64_t a1, int a2)
{
  if (*(a1 + 17) != 1 || a2 != 0)
  {
    v4 = nplog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "report odoh outage", v19, 2u);
    }

    v5 = *(a1 + 224);
    if (v5)
    {
      [v5 timeIntervalSinceNow];
      v7 = v6;
    }

    else if (*(a1 + 320))
    {
      v7 = *(a1 + 320);
    }

    else
    {
      v7 = 1800;
    }

    if (!*(a1 + 192))
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19[0]) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting odoh outage restore timer", v19, 2u);
      }

      v9 = NPGetInternalQueue();
      v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);
      v11 = *(a1 + 192);
      *(a1 + 192) = v10;

      v12 = *(a1 + 192);
      if (v12)
      {
        v13 = v12;
        v14 = dispatch_time(0x8000000000000000, 1000000000 * v7);
        dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);

        objc_initWeak(&location, a1);
        v15 = *(a1 + 192);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10006CDBC;
        v19[3] = &unk_100109538;
        v16 = v15;
        objc_copyWeak(&v20, &location);
        dispatch_source_set_event_handler(v16, v19);

        dispatch_resume(*(a1 + 192));
        v17 = [NSDate dateWithTimeIntervalSinceNow:v7];
        v18 = *(a1 + 224);
        *(a1 + 224) = v17;

        sub_100064320(a1);
        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);
      }
    }

    *(a1 + 17) = 1;
    [a1 policiesUpdated:*(a1 + 64) policy:0 resolverInfoChanged:0];
    sub_1000654C0(a1);
  }
}

void sub_10006C1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006C8B4(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    v4 = v3;
  }

  else if (*(a1 + 320))
  {
    v4 = *(a1 + 320);
  }

  else
  {
    v4 = 3600;
  }

  if (!*(a1 + 184))
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting proxy outage restore timer", buf, 2u);
    }

    v6 = NPGetInternalQueue();
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);
    v8 = *(a1 + 184);
    *(a1 + 184) = v7;

    v9 = *(a1 + 184);
    if (v9)
    {
      v10 = v9;
      v11 = dispatch_time(0x8000000000000000, 1000000000 * v4);
      dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);

      objc_initWeak(buf, a1);
      v12 = *(a1 + 184);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10006CA9C;
      handler[3] = &unk_100109538;
      v13 = v12;
      objc_copyWeak(&v17, buf);
      dispatch_source_set_event_handler(v13, handler);

      dispatch_resume(*(a1 + 184));
      v14 = [NSDate dateWithTimeIntervalSinceNow:v4];
      v15 = *(a1 + 216);
      *(a1 + 216) = v14;

      sub_100064320(a1);
      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }
  }
}

void sub_10006CA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006CA9C(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Proxy outage restore timer fired", v8, 2u);
  }

  v3 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_source_cancel(*(WeakRetained + 23));
    v6 = v5[23];
    v5[23] = 0;

    v7 = v5[27];
    v5[27] = 0;

    [v5 proxyConnectivityActive];
  }
}

void sub_10006CB60(uint64_t a1, int a2)
{
  if (a1)
  {
    if (*(a1 + 15) != 1 || a2 != 0)
    {
      v4 = nplog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "report proxy outage", v5, 2u);
      }

      sub_10006C8B4(a1);
      *(a1 + 15) = 1;
      [a1 policiesUpdated:*(a1 + 64) policy:0 resolverInfoChanged:0];
      sub_1000654C0(a1);
    }
  }
}

void sub_10006CC18(uint64_t a1, int a2)
{
  if (a1)
  {
    if (*(a1 + 16) != 1 || a2 != 0)
    {
      v4 = nplog_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "report proxy network outage", v5, 2u);
      }

      sub_10006C8B4(a1);
      *(a1 + 16) = 1;
      [a1 policiesUpdated:*(a1 + 64) policy:0 resolverInfoChanged:0];
      sub_1000654C0(a1);
    }
  }
}

void sub_10006CDBC(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Proxy outage restore timer fired", v10, 2u);
  }

  v3 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_source_cancel(WeakRetained[24]);
    v6 = *(v5 + 192);
    *(v5 + 192) = 0;

    v7 = *(v5 + 224);
    *(v5 + 224) = 0;

    if (*(v5 + 17) == 1)
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "restore odoh connectivity", buf, 2u);
      }

      *(v5 + 17) = 0;
      v9 = [*(v5 + 64) mergeProxyTrafficStateWithCurrentPolicy];
      [v5 policiesUpdated:*(v5 + 64) policy:v9 resolverInfoChanged:1];
      sub_10004C944(*(v5 + 208));
      sub_1000654C0(v5);
    }
  }
}

void sub_10006CF04(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "odoh auth outage restore timer fired", v10, 2u);
  }

  v3 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_source_cancel(WeakRetained[25]);
    v6 = *(v5 + 200);
    *(v5 + 200) = 0;

    v7 = *(v5 + 248);
    *(v5 + 248) = 0;

    if (*(v5 + 18) == 1)
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "restore odoh auth connectivity", buf, 2u);
      }

      *(v5 + 18) = 0;
      v9 = [*(v5 + 64) mergeProxyTrafficStateWithCurrentPolicy];
      [v5 policiesUpdated:*(v5 + 64) policy:v9 resolverInfoChanged:1];
      sub_10004C944(*(v5 + 208));
      sub_1000654C0(v5);
    }
  }
}

void sub_10006D634(void *a1, const char *a2, void *a3)
{
  v12 = a3;
  v5 = a1;
  reply = xpc_dictionary_create_reply(v5);
  v7 = xpc_dictionary_get_remote_connection(v5);

  if (reply && v7)
  {
    if (v12)
    {
      v8 = reply;
      v9 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
      if (v9)
      {
        v10 = v8;
        v11 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v10, a2, v11);
      }
    }

    xpc_connection_send_message(v7, reply);
  }
}

void sub_10006D73C(void *a1, const char *a2, void *a3)
{
  v10 = a3;
  v5 = a1;
  reply = xpc_dictionary_create_reply(v5);
  v7 = xpc_dictionary_get_remote_connection(v5);

  if (reply && v7)
  {
    if (v10)
    {
      v8 = reply;
      v9 = v10;
      xpc_dictionary_set_string(v8, a2, [v9 UTF8String]);
    }

    xpc_connection_send_message(v7, reply);
  }
}

void sub_10006D80C(uint64_t a1, BOOL a2)
{
  v3 = *(a1 + 32);
  xdict = xpc_dictionary_create_reply(v3);
  v4 = xpc_dictionary_get_remote_connection(v3);

  if (xdict)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    xpc_dictionary_set_BOOL(xdict, "NSPServerCommandResult", a2);
    xpc_connection_send_message(v4, xdict);
  }
}

void sub_10006D8AC(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [[NSPPrivacyProxyConfiguration alloc] initWithData:*(a1 + 32)];
    v9 = v3;
    if (v3)
    {
      v4 = [v3 dictionaryRepresentation];

      v5 = *(a1 + 40);
      if (v4)
      {
        v6 = [v9 dictionaryRepresentation];
        sub_100002130(v5, "NSPServerPrivacyProxyConfigDictionary", v6);

LABEL_11:

        return;
      }

      v8 = v5;
    }

    else
    {
      v8 = *(a1 + 40);
    }

    sub_100054384(v8, 1005, @"invalid configuration data");
    goto LABEL_11;
  }

  v7 = *(a1 + 40);

  sub_100054384(v7, 1006, @"invalid configuration data signature");
}

uint64_t sub_10006D9A0(uint64_t a1)
{
  v4 = *(a1 + 48);
  v5 = [v4 userTier];
  v6 = [v5 unsignedIntegerValue];
  if (v6 == 1 && (v1 = *(a1 + 48), [v1 willResetSubscriberTierTomorrow], v2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v2, "BOOLValue") & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v8 = *(a1 + 80);
    if (![v8 hasPausedApps])
    {

      v19 = 0;
      if (v6 != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v21 = v8;
    v7 = 1;
  }

  v9 = *(a1 + 48);
  v10 = [v9 resetTomorrowDate];
  if (v10)
  {
    v11 = +[NSCalendar currentCalendar];
    [*(a1 + 48) resetTomorrowDate];
    v12 = v7;
    v13 = v6;
    v14 = v5;
    v15 = v4;
    v16 = v2;
    v18 = v17 = v1;
    v22 = [v11 isDateInTomorrow:v18];

    v1 = v17;
    v2 = v16;
    v4 = v15;
    v5 = v14;
    v6 = v13;
    v7 = v12;
  }

  else
  {
    v22 = 0;
  }

  if (v7)
  {
  }

  v19 = v22;
  if (v6 == 1)
  {
LABEL_14:
  }

LABEL_15:

  return v19;
}

uint64_t sub_10006DB2C(uint64_t a1)
{
  v3 = a1;
  if (a1)
  {
    v4 = *(a1 + 48);
    v5 = [v4 userTier];
    v6 = [v5 unsignedIntegerValue];
    if (v6 == 1 && (v1 = *(v3 + 48), [v1 willResetSubscriberTierTomorrow], v2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v2, "BOOLValue") & 1) != 0))
    {
      v7 = 0;
    }

    else
    {
      v8 = *(v3 + 80);
      if (![v8 hasPausedApps])
      {

        v3 = 0;
        if (v6 != 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      v20 = v8;
      v7 = 1;
    }

    v9 = *(v3 + 48);
    v10 = [v9 resetTomorrowDate];
    if (v10)
    {
      v11 = +[NSCalendar currentCalendar];
      [*(v3 + 48) resetTomorrowDate];
      v12 = v7;
      v13 = v6;
      v14 = v5;
      v15 = v4;
      v16 = v2;
      v18 = v17 = v1;
      v21 = [v11 isDateInTomorrow:v18] ^ 1;

      v1 = v17;
      v2 = v16;
      v4 = v15;
      v5 = v14;
      v6 = v13;
      v7 = v12;
    }

    else
    {
      v21 = 0;
    }

    if (v7)
    {
    }

    v3 = v21;
    if (v6 != 1)
    {
      goto LABEL_16;
    }

LABEL_15:

LABEL_16:
  }

  return v3;
}

void sub_10006DCC0(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v10 = state;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Tomorrow timer activity state %ld", buf, 0xCu);
  }

  if (state == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v6 = NPGetInternalQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10006DE08;
      block[3] = &unk_100109478;
      v8 = WeakRetained;
      dispatch_async(v6, block);
    }
  }
}

void sub_10006DE08(uint64_t a1)
{
  if (sub_10006DB2C(*(a1 + 32)))
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = *(v2 + 80);
    }

    else
    {
      v3 = 0;
    }

    v4 = [v3 hasPausedApps];
    if (v4)
    {
      v5 = nplog_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting all paused apps after activity timer", buf, 2u);
      }

      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = *(v6 + 80);
      }

      else
      {
        v7 = 0;
      }

      [v7 clearAllPausedApps];
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = v8[6];
    }

    v9 = v8;
    v10 = [v9 userTier];
    if ([v10 unsignedIntegerValue] == 1)
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = *(v11 + 48);
      }

      else
      {
        v12 = 0;
      }

      v13 = [v12 willResetSubscriberTierTomorrow];
      v14 = [v13 BOOLValue];

      if (v14)
      {
        v15 = nplog_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Resetting user tier to subscriber after activity timer", v22, 2u);
        }

        v16 = *(a1 + 32);
        if (v16)
        {
          v17 = *(v16 + 64);
        }

        else
        {
          v17 = 0;
        }

        if (([v17 setUserTier:2 resetDate:0 clearResetDate:1 changeSource:2] & 1) == 0)
        {
          v18 = nplog_obj();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *v21 = 0;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to set user tier to subscriber", v21, 2u);
          }
        }

        goto LABEL_28;
      }
    }

    else
    {
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      v20 = *(v19 + 64);
    }

    else
    {
      v20 = 0;
    }

    [v20 clearResetDate];
LABEL_28:
    if (v4)
    {
      sub_10006E014(*(a1 + 32));
    }
  }
}

void sub_10006E014(uint64_t a1)
{
  if (a1)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3032000000;
    v9[3] = sub_100001F54;
    v9[4] = sub_100054494;
    v10 = os_transaction_create();
    v2 = *(a1 + 64);
    v3 = [v2 mergeProxyTrafficStateWithCurrentPolicy];

    v4 = NPGetInternalQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100072644;
    block[3] = &unk_100109370;
    block[4] = a1;
    v7 = v3;
    v8 = v9;
    v5 = v3;
    dispatch_async(v4, block);

    _Block_object_dispose(v9, 8);
  }
}

void sub_10006E144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006E15C(void *a1, void *a2)
{
  v8 = a2;
  v3 = a1;
  reply = xpc_dictionary_create_reply(v3);
  v5 = xpc_dictionary_get_remote_connection(v3);

  if (reply && v5)
  {
    if (v8)
    {
      v6 = reply;
      v7 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v6, "NSPServerPrivacyProxyTokenEvents", v7);
    }

    xpc_connection_send_message(v5, reply);
  }
}

void sub_10006E220(void *a1, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  v7 = a1;
  v8 = v7;
  if (v7)
  {
    if ([v7 isApplication])
    {
      *a2 = 1;
    }

    v9 = [v8 currentState];
    v10 = [v9 isRunning];

    if (v10)
    {
      *a3 = 1;
    }

    v11 = [v8 currentState];
    v12 = [v11 endowmentNamespaces];
    v13 = [v12 containsObject:@"com.apple.frontboard.visibility"];

    if (v13)
    {
      *a4 = 1;
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v14 = [v8 currentState];
      v15 = [v14 assertions];

      v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v23;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [*(*(&v22 + 1) + 8 * i) domain];
            v21 = [v20 containsString:@"com.apple.webkit:Foreground"];

            if (v21)
            {
              *a4 = 1;
              goto LABEL_18;
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }
  }
}

uint64_t sub_10006E400(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    goto LABEL_2;
  }

  if ([v3 hasTokenType])
  {
    v6 = [v3 tokenType];
    v7 = v6 == [v4 tokenType];
  }

  else
  {
    if (!v4)
    {
LABEL_2:
      v5 = 0;
      goto LABEL_12;
    }

    if ([v4 tokenType] == 2)
    {
      v5 = 1;
      goto LABEL_12;
    }

    v7 = [v4 tokenType] == 3;
  }

  v5 = v7;
LABEL_12:

  return v5;
}

id sub_10006E4A4(id *a1, void *a2, NSObject **a3, _BYTE *a4)
{
  v6 = a2;
  if (!a1)
  {
    v61 = 0;
    goto LABEL_76;
  }

  v7 = [a1[6] proxyConfiguration];
  v8 = [v7 authInfo];
  v9 = [v8 nonDefaultAttesters];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v10 = v9;
  v65 = [v10 countByEnumeratingWithState:&v82 objects:v91 count:16];
  if (!v65)
  {
    v11 = 0;
    v58 = v10;
    goto LABEL_73;
  }

  v63 = a1;
  v74 = 0;
  v11 = 0;
  v12 = *v83;
  v69 = v6;
  v67 = v10;
  v72 = a4;
  v64 = *v83;
  do
  {
    v13 = 0;
    do
    {
      if (*v83 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v66 = v13;
      v14 = *(*(&v82 + 1) + 8 * v13);
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v68 = v14;
      obj = [v14 associatedIssuers];
      v77 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
      if (v77)
      {
        v15 = *v79;
        v71 = *v79;
LABEL_9:
        v16 = 0;
LABEL_10:
        if (*v79 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v78 + 1) + 8 * v16);
        v18 = [v17 issuerName];
        v19 = [v6 issuerName];
        v20 = [v18 isEqualToString:v19];
        if (os_variant_allows_internal_security_policies() && ([v6 issuerName], v21 = ;
        {
          v23 = [v6 issuerName];
          v24 = [v23 componentsSeparatedByString:@""];;
          v25 = [v24 firstObject];

          v26 = [v17 issuerName];
          LOBYTE(v24) = [v26 isEqualToString:v25];

          if ((v24 & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        else if (!v20)
        {
          goto LABEL_63;
        }

        if (!a3)
        {
LABEL_71:
          v61 = v68;

          v10 = v67;
          goto LABEL_75;
        }

        v27 = v17;
        v28 = v6;
        v29 = [v27 tokenKeys];
        v30 = [v29 count];

        if (!v30)
        {
          v45 = 0;
          v34 = 0;
          goto LABEL_56;
        }

        v73 = v11;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v31 = [v27 tokenKeys];
        v32 = [v31 countByEnumeratingWithState:&v86 objects:v96 count:16];
        if (!v32)
        {

          goto LABEL_48;
        }

        v33 = v32;
        v70 = v27;
        v34 = 0;
        v35 = *v87;
        while (2)
        {
          v36 = 0;
LABEL_22:
          if (*v87 != v35)
          {
            objc_enumerationMutation(v31);
          }

          v37 = *(*(&v86 + 1) + 8 * v36);
          if (sub_10006E400(v37, v28))
          {
            if (([v37 hasExpiration] & 1) == 0 && !objc_msgSend(v37, "hasRotation"))
            {
LABEL_46:
              v46 = v37;

              v45 = 3;
              v43 = v34;
              v34 = v46;
              v6 = v69;
              v27 = v70;
              goto LABEL_55;
            }

            if ([v37 hasRotation])
            {
              v38 = [v37 rotation];
            }

            else
            {
              v38 = [v37 expiration];
            }

            v39 = [NSDate dateWithTimeIntervalSince1970:v38];
            [v39 timeIntervalSinceNow];
            if (v40 >= 0.0)
            {
              v41 = v40;

              if (v41 < 30.0 && v34 != 0)
              {
                goto LABEL_39;
              }

              if (v41 >= 30.0)
              {
                goto LABEL_46;
              }

              v39 = v34;
              v34 = v37;
            }
          }

LABEL_39:
          if (v33 == ++v36)
          {
            v33 = [v31 countByEnumeratingWithState:&v86 objects:v96 count:16];
            if (v33)
            {
              continue;
            }

            v27 = v70;
            if (v34)
            {
              v43 = nplog_obj();
              v6 = v69;
              if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
              {
                v44 = [v70 issuerName];
                *buf = 138412290;
                v93 = v44;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Returning a key for %@ that is about to expire", buf, 0xCu);
              }

              v45 = 2;
              goto LABEL_55;
            }

LABEL_48:
            v47 = [v27 tokenKeys];
            v43 = [v47 lastObject];

            LOBYTE(v47) = sub_10006E400(v43, v28);
            v48 = nplog_obj();
            v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
            v6 = v69;
            if (v47)
            {
              if (v49)
              {
                v53 = [v27 issuerName];
                *buf = 138412290;
                v93 = v53;
                _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Failed to find a non-expired key for %@, choosing the last available key", buf, 0xCu);
              }

              v50 = [v27 tokenKeys];
              v34 = [v50 lastObject];

              v45 = 1;
            }

            else
            {
              if (v49)
              {
                v54 = [v27 issuerName];
                v55 = [v28 tokenType];
                *buf = 138412546;
                v93 = v54;
                v94 = 1024;
                v95 = v55;
                _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Failed to find a matching key for %@ (type %u)", buf, 0x12u);
              }

              v45 = 0;
              v34 = 0;
            }

LABEL_55:

            v11 = v73;
LABEL_56:

            v51 = v34;
            *a3 = v34;
            if (v72)
            {
              *v72 = [v27 supportsTokenUsageFeedback];
            }

            if (v45 == 3)
            {
              goto LABEL_71;
            }

            if (!v11 || v45 > v74)
            {
              v52 = v68;

              v74 = v45;
              v11 = v52;
            }

            v15 = v71;
LABEL_63:
            if (++v16 == v77)
            {
              v77 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
              if (!v77)
              {
                break;
              }

              goto LABEL_9;
            }

            goto LABEL_10;
          }

          goto LABEL_22;
        }
      }

      v13 = v66 + 1;
      v10 = v67;
      v12 = v64;
    }

    while ((v66 + 1) != v65);
    v65 = [v67 countByEnumeratingWithState:&v82 objects:v91 count:16];
  }

  while (v65);

  if (v74 == 1)
  {
    v56 = v63[6];
    v57 = [v56 configurationFetchDate];
    v58 = [NSDateFormatter localizedStringFromDate:v57 dateStyle:1 timeStyle:2];

    v59 = nplog_obj();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = [v6 issuerName];
      *v96 = 138412546;
      v97 = v58;
      v98 = 2112;
      v99 = v60;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Configuration with fetch date %@ has no non-expired keys for issuer %@", v96, 0x16u);
    }

    [v63 refreshProxyInfo:6];
    v10 = v67;
LABEL_73:
  }

  v11 = v11;
  v61 = v11;
LABEL_75:

LABEL_76:

  return v61;
}

__CFString *sub_10006EC8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a1)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v7 = *a2 - 1003;
  if (v7 >= 0xE || ((0x3FF5u >> (*a2 + 21)) & 1) == 0)
  {
    *a2 = 1004;
    v8 = @"Invalid parameter";
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = *(&off_10010A578 + v7);
  if (v5)
  {
LABEL_7:
    v8 = [(__CFString *)v8 stringByAppendingFormat:@": %@", v5];
  }

LABEL_8:

  return v8;
}

uint64_t sub_10006ED4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v6 = get_nsdata_from_xpc_object();
    v7 = get_nsdata_from_xpc_object();
    v8 = v7;
    if (!v6 || *(*(*(a1 + 40) + 8) + 40))
    {
      if (!v7 || *(*(*(a1 + 80) + 8) + 40))
      {
        goto LABEL_26;
      }

      v9 = [[NSPPrivateAccessTokenChallenge alloc] initWithData:v7];
      if (!v9)
      {
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      v26 = 0;
      if (*(a1 + 116) == 1)
      {
        v10 = *(a1 + 32);
        v24 = 0;
        v11 = sub_10006E4A4(v10, v9, &v24, &v26);
        v12 = v24;
        v13 = v24;
        if (v13)
        {
          objc_storeStrong((*(*(a1 + 88) + 8) + 40), v11);
          objc_storeStrong((*(*(a1 + 80) + 8) + 40), v9);
          objc_storeStrong((*(*(a1 + 96) + 8) + 40), v12);
          *(*(*(a1 + 104) + 8) + 24) = v26;
        }
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

LABEL_24:

      goto LABEL_25;
    }

    v9 = get_nsdata_from_xpc_object();
    if (v9)
    {
      v13 = objc_alloc_init(NSPPrivacyProxyTokenKey);
      [v13 setKey:v9];
      [v13 setMetadataSize:*(a1 + 112)];
    }

    else
    {
      v13 = 0;
    }

    v11 = get_nsdata_from_xpc_object();
    v14 = [[NSPPrivateAccessTokenChallenge alloc] initWithData:v6];
    if (!v14)
    {
LABEL_23:

      goto LABEL_24;
    }

    v26 = 0;
    if (*(a1 + 116) == 1)
    {
      v15 = *(a1 + 32);
      v25 = 0;
      obj = sub_10006E4A4(v15, v14, &v25, &v26);
      v16 = v25;
      v17 = v16;
      if (!v13)
      {
        v18 = v16;
        v17 = v18;
        if (!v18)
        {
          v20 = 0;
          v19 = obj;
          goto LABEL_22;
        }

        v13 = v18;
      }

      v19 = obj;
    }

    else
    {
      v19 = 0;
      v17 = 0;
      v20 = 0;
      if (!v13)
      {
LABEL_22:

        v13 = v20;
        goto LABEL_23;
      }
    }

    v21 = v19;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v19);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v13);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v11);
    v19 = v21;
    *(*(*(a1 + 72) + 8) + 24) = v26;
    v20 = v13;
    goto LABEL_22;
  }

LABEL_27:

  return 1;
}

uint64_t sub_10006F050(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v6 = get_nsdata_from_xpc_object();
    v7 = get_nsdata_from_xpc_object();
    v8 = v7;
    if (!v6 || *(*(*(a1 + 40) + 8) + 40))
    {
      if (!v7 || *(*(*(a1 + 80) + 8) + 40))
      {
        goto LABEL_33;
      }

      v9 = [[NSPPrivateAccessTokenChallenge alloc] initWithData:v7];
      if (!v9)
      {
LABEL_32:

LABEL_33:
        goto LABEL_34;
      }

      v10 = get_nsdata_from_xpc_object();
      if (v10)
      {
        v11 = objc_alloc_init(NSPPrivacyProxyTokenKey);
        [v11 setKey:v10];
        [v11 setMetadataSize:*(a1 + 104)];
      }

      else
      {
        v11 = 0;
      }

      string = xpc_dictionary_get_string(v5, "NSPServerAuxiliaryAuthenticationLabel");
      if (string)
      {
        string = [[NSString alloc] initWithUTF8String:string];
      }

      if (!v11 && (*(a1 + 108) & 1) != 0)
      {
        v27 = 0;
        v20 = *(a1 + 32);
        v25 = 0;
        v21 = sub_10006E4A4(v20, v9, &v25, &v27);
        v11 = v25;
      }

      if (!v11)
      {
LABEL_31:

        goto LABEL_32;
      }

      objc_storeStrong((*(*(a1 + 80) + 8) + 40), v9);
      objc_storeStrong((*(*(a1 + 88) + 8) + 40), v11);
      v22 = *(*(a1 + 96) + 8);
      string = string;
      v15 = *(v22 + 40);
      *(v22 + 40) = string;
LABEL_30:

      goto LABEL_31;
    }

    v9 = get_nsdata_from_xpc_object();
    if (v9)
    {
      v10 = objc_alloc_init(NSPPrivacyProxyTokenKey);
      [v10 setKey:v9];
      [v10 setMetadataSize:*(a1 + 104)];
    }

    else
    {
      v10 = 0;
    }

    v11 = get_nsdata_from_xpc_object();
    string = [[NSPPrivateAccessTokenChallenge alloc] initWithData:v6];
    if (!string)
    {
      goto LABEL_31;
    }

    v27 = 0;
    if (*(a1 + 108) == 1)
    {
      v13 = *(a1 + 32);
      v26 = 0;
      obj = sub_10006E4A4(v13, string, &v26, &v27);
      v14 = v26;
      v15 = v14;
      if (!v10)
      {
        v16 = v14;
        v15 = v16;
        if (!v16)
        {
          v18 = 0;
          v17 = obj;
          goto LABEL_21;
        }

        v10 = v16;
      }

      v17 = obj;
    }

    else
    {
      v15 = 0;
      v17 = 0;
      v18 = 0;
      if (!v10)
      {
LABEL_21:

        v10 = v18;
        goto LABEL_30;
      }
    }

    v19 = v17;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v17);
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), string);
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v10);
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v11);
    v17 = v19;
    *(*(*(a1 + 72) + 8) + 24) = v27;
    v18 = v10;
    goto LABEL_21;
  }

LABEL_34:

  return 1;
}

uint64_t sub_10006F3B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v6 = get_nsdata_from_xpc_object();
    v7 = get_nsdata_from_xpc_object();
    if (v7)
    {
      v8 = objc_alloc_init(NSPPrivacyProxyTokenKey);
      [v8 setKey:v7];
      [v8 setMetadataSize:*(a1 + 80)];
    }

    else
    {
      v8 = 0;
    }

    v9 = get_nsdata_from_xpc_object();
    if (v6)
    {
      v10 = [[NSPPrivateAccessTokenChallenge alloc] initWithData:v6];
      if (v10)
      {
        v11 = v10;
        v21 = 0;
        if (*(a1 + 84) == 1)
        {
          v12 = *(a1 + 32);
          v20 = 0;
          v13 = sub_10006E4A4(v12, v11, &v20, &v21);
          v14 = v20;
          v15 = v14;
          if (!v8)
          {
            v16 = v14;
            v15 = v16;
            if (!v16)
            {
              v19 = 0;
              goto LABEL_17;
            }

            v8 = v16;
          }
        }

        else
        {
          v13 = 0;
          v15 = 0;
          v19 = 0;
          if (!v8)
          {
LABEL_17:

            v17 = 0;
            goto LABEL_14;
          }
        }

        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v13);
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v11);
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v8);
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v9);
        *(*(*(a1 + 72) + 8) + 24) = v21;
        v19 = v8;
        goto LABEL_17;
      }
    }
  }

  v17 = 1;
LABEL_14:

  return v17;
}

void sub_10006F5C8(uint64_t a1, uint64_t a2, void *a3)
{
  v55 = a3;
  if (*(a1 + 188) == 1)
  {
    v4 = +[NSPPrivacyTokenManager sharedTokenManager];
    v49 = *(*(*(a1 + 104) + 8) + 40);
    v51 = *(*(*(a1 + 96) + 8) + 40);
    v5 = *(a1 + 32);
    if (v5)
    {
      v5 = v5[6];
    }

    v47 = v5;
    v45 = [v47 configurationFetchDate];
    v6 = *(a1 + 32);
    if (v6)
    {
      v6 = v6[6];
    }

    v7 = v6;
    v8 = [v7 etag];
    v41 = *(*(*(a1 + 120) + 8) + 40);
    v43 = *(*(*(a1 + 112) + 8) + 40);
    v39 = *(*(*(a1 + 128) + 8) + 40);
    v9 = *(*(*(a1 + 136) + 8) + 40);
    v10 = *(*(*(a1 + 144) + 8) + 40);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 189);
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_10006F978;
    v60[3] = &unk_10010A170;
    v54 = v61;
    v14 = *(a1 + 56);
    v15 = *(a1 + 64);
    v16 = *(a1 + 32);
    v61[0] = v15;
    v61[1] = v16;
    v17 = v55;
    LOWORD(v38) = v13;
    v37 = v14;
    v18 = v4;
    [v4 fetchPairedPrivateAccessTokensForChallenge:v51 overrideAttester:v49 configurationFetchDate:v45 configurationETag:v8 tokenKey:v43 originNameKey:v41 selectedOrigin:v11 pairedChallenge:v39 overridePairedAttester:v9 pairedTokenKey:v10 auditToken:v12 bundleID:v37 allowTools:v38 systemTokenClient:v55 accessToken:v60 completionHandler:?];
  }

  else
  {
    v19 = *(a1 + 191);
    v18 = +[NSPPrivacyTokenManager sharedTokenManager];
    v20 = *(*(*(a1 + 96) + 8) + 40);
    v53 = *(*(*(a1 + 104) + 8) + 40);
    v52 = *(*(*(a1 + 152) + 8) + 24);
    v48 = *(a1 + 80);
    v50 = *(a1 + 72);
    v44 = *(*(*(a1 + 120) + 8) + 40);
    v46 = *(*(*(a1 + 112) + 8) + 40);
    v21 = *(a1 + 40);
    if (v19 == 1)
    {
      v40 = *(*(*(a1 + 168) + 8) + 40);
      v42 = *(*(*(a1 + 160) + 8) + 40);
      v22 = *(*(*(a1 + 176) + 8) + 40);
      v23 = *(a1 + 88);
      v24 = *(a1 + 184);
      v26 = *(a1 + 48);
      v25 = *(a1 + 56);
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_10006FCCC;
      v58[3] = &unk_10010A198;
      v54 = v59;
      v27 = *(a1 + 64);
      v28 = *(a1 + 32);
      v59[0] = v27;
      v59[1] = v28;
      v17 = v55;
      LODWORD(v38) = v24;
      [v18 fetchPrivateAccessTokenForChallenge:v20 overrideAttester:v53 supportsTokenUsageFeedback:v52 customAttester:v50 customAttesterHeaders:v48 tokenKey:v46 originNameKey:v44 selectedOrigin:v21 auxiliaryAuthChallenge:v42 auxiliaryAuthKey:v40 auxiliaryAuthLabel:v22 auxiliaryAuthInfoCacheKey:v23 rateLimit:v38 auditToken:v26 bundleID:v25 accessToken:v55 completionHandler:v58];
    }

    else
    {
      v29 = *(a1 + 88);
      v30 = *(a1 + 184);
      v31 = *(a1 + 48);
      v32 = *(a1 + 56);
      v33 = *(a1 + 189);
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_10006FE34;
      v56[3] = &unk_10010A1C0;
      v54 = v57;
      v34 = *(a1 + 64);
      v35 = *(a1 + 32);
      v57[0] = v34;
      v57[1] = v35;
      v17 = v55;
      LOWORD(v38) = v33;
      LODWORD(v36) = v30;
      [v18 fetchPrivateAccessTokenForChallenge:v20 overrideAttester:v53 supportsTokenUsageFeedback:v52 customAttester:v50 customAttesterHeaders:v48 tokenKey:v46 originNameKey:v44 selectedOrigin:v21 auxiliaryAuthInfoCacheKey:v29 rateLimit:v36 auditToken:v31 bundleID:v32 allowTools:v38 systemTokenClient:v55 accessToken:v56 completionHandler:?];
    }
  }
}

void sub_10006F978(uint64_t a1, void *a2, void *a3, void *a4, int64_t a5, void *a6, void *a7)
{
  v25 = a2;
  v13 = a3;
  v14 = a4;
  v26 = a5;
  v15 = a6;
  v16 = a7;
  if (v25 && v13)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    v18 = xpc_dictionary_get_remote_connection(*(a1 + 32));
    if (v18)
    {
      v19 = reply;
      v20 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v19, "NSPServerPrivateAccessTokenPairLongLived", v20);

      v21 = v19;
      v22 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v21, "NSPServerPrivateAccessTokenPairOneTime", v22);

      if (v14)
      {
        v23 = v21;
        v24 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v23, "NSPServerPrivateAccessTokenPairOneTimeSalt", v24);
      }

      xpc_connection_send_message(v18, v21);
    }
  }

  else
  {
    if ((a5 - 1004) <= 0xA && ((1 << (a5 + 20)) & 0x683) != 0)
    {
      [*(a1 + 40) refreshProxyInfo:6];
    }

    reply = sub_10006EC8C(*(a1 + 40), &v26, v15);
    sub_10006FB58(*(a1 + 32), v26, reply, v15, v16);
  }
}

void sub_10006FB58(void *a1, int64_t a2, void *a3, void *a4, void *a5)
{
  v20 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  reply = xpc_dictionary_create_reply(v11);
  v13 = xpc_dictionary_get_remote_connection(v11);

  if (reply && v13)
  {
    if (a2)
    {
      xpc_dictionary_set_int64(reply, "NSPServerErrorCode", a2);
    }

    if (v20)
    {
      v14 = reply;
      v15 = v20;
      xpc_dictionary_set_string(v14, "NSPServerErrorString", [v15 UTF8String]);
    }

    if (v9)
    {
      v16 = reply;
      v17 = v9;
      xpc_dictionary_set_string(v16, "NSPServerErrorReason", [v17 UTF8String]);
    }

    if (v10)
    {
      v18 = reply;
      v19 = v10;
      xpc_dictionary_set_string(v18, "NSPServerErrorRequestUUID", [v19 UTF8String]);
    }

    xpc_connection_send_message(v13, reply);
  }
}

void sub_10006FCCC(uint64_t a1, void *a2, void *a3, int64_t a4, void *a5, void *a6)
{
  v20 = a2;
  v11 = a3;
  v21 = a4;
  v12 = a5;
  v13 = a6;
  if (v20 && v11)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    v15 = xpc_dictionary_get_remote_connection(*(a1 + 32));
    if (v15)
    {
      v16 = reply;
      v17 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v16, "NSPServerPrivateAccessToken", v17);

      v18 = v16;
      v19 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v18, "NSPServerAuxiliaryAuthenticationData", v19);

      xpc_connection_send_message(v15, v18);
    }
  }

  else
  {
    reply = sub_10006EC8C(*(a1 + 40), &v21, v12);
    sub_10006FB58(*(a1 + 32), v21, reply, v12, v13);
  }
}

void sub_10006FE34(uint64_t a1, void *a2, int64_t a3, void *a4, void *a5)
{
  v11 = a3;
  v10 = a4;
  v8 = a5;
  if (a2)
  {
    sub_100002130(*(a1 + 32), "NSPServerPrivateAccessToken", a2);
  }

  else
  {
    v9 = sub_10006EC8C(*(a1 + 40), &v11, v10);
    sub_10006FB58(*(a1 + 32), v11, v9, v10, v8);
  }
}

void sub_10006FEE4(void *a1, int a2, int a3, void *a4)
{
  v7 = a4;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v8 = @"networking.privacy.subscriber";
    if (a2)
    {
      v8 = @"networking.privacy.attestation";
    }

    if (a3)
    {
      v9 = @"cloud.llm";
    }

    else
    {
      v9 = v8;
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000710F4;
    v10[3] = &unk_10010A300;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    [CSFFeatureManager requestFeatureWithId:v9 completion:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void sub_10006FFE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100070004(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[NSPPrivacyTokenManager sharedTokenManager];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000700EC;
  v10[3] = &unk_10010A210;
  v11 = *(a1 + 64);
  [v5 checkCostQuotaForIssuerName:v6 quotaService:v7 auditToken:v8 bundleID:v9 accessToken:v4 completionHandler:v10];
}

void sub_1000700EC(uint64_t a1, uint64_t a2, int64_t a3, void *a4, void *a5, double a6, double a7)
{
  v23 = a4;
  v13 = a5;
  v14 = @"Unknown error";
  if (a3 > 1009)
  {
    v17 = @"Network connectivity error";
    v18 = @"Invalid server response";
    if (a3 != 1016)
    {
      v18 = @"Unknown error";
    }

    if (a3 != 1012)
    {
      v17 = v18;
    }

    if (a3 == 1011)
    {
      v14 = @"Invalid client request";
    }

    if (a3 == 1010)
    {
      v14 = @"Device authentication invalid";
    }

    if (a3 <= 1011)
    {
      reply = v14;
    }

    else
    {
      reply = v17;
    }

    goto LABEL_22;
  }

  if (a3 > 1006)
  {
    v16 = @"Quota service server error";
    if (a3 == 1009)
    {
      v14 = @"Rate limited";
    }

    v15 = a3 == 1007;
    goto LABEL_19;
  }

  if (a3)
  {
    v15 = a3 == 1004;
    v16 = @"Invalid parameter";
LABEL_19:
    if (v15)
    {
      reply = v16;
    }

    else
    {
      reply = v14;
    }

LABEL_22:
    v20 = v23;
    if (v23)
    {
      v21 = [reply stringByAppendingFormat:@": %@", v23];
      v20 = v23;
      reply = v21;
    }

    sub_10006FB58(*(a1 + 32), a3, reply, v20, v13);
    goto LABEL_25;
  }

  reply = xpc_dictionary_create_reply(*(a1 + 32));
  v22 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v22)
  {
    xpc_dictionary_set_double(reply, "NSPServerQuotaCostLimit", a6);
    xpc_dictionary_set_double(reply, "NSPServerQuotaCostRemaining", a7);
    xpc_dictionary_set_uint64(reply, "NSPServerQuotaExpiration", a2);
    xpc_connection_send_message(v22, reply);
  }

LABEL_25:
}

void sub_1000702B0(uint64_t a1, char a2)
{
  v4 = NPGetInternalQueue();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007035C;
  v5[3] = &unk_10010A260;
  v7 = a2;
  v6 = *(a1 + 32);
  dispatch_async(v4, v5);
}

void sub_10007035C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = nplog_obj();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "proxy setup for MPTCP converter proxy is successful", v8, 2u);
    }

    v5 = *(a1 + 32);
    reply = xpc_dictionary_create_reply(v5);
    v7 = xpc_dictionary_get_remote_connection(v5);

    if (reply)
    {
      if (v7)
      {
        xpc_connection_send_message(v7, reply);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "failed to setup proxying to MPTCP converter proxy", buf, 2u);
    }

    sub_100054384(*(a1 + 32), 1004, @"Setup Failure");
  }
}

void sub_100070568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100070580(uint64_t a1, int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"failure";
    if (a2)
    {
      v5 = @"success";
    }

    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Configuration refresh activity finished with result %@", &v8, 0xCu);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_10007080C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 360), a2);
  }
}

void sub_100070828(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_100001F54;
  v15[4] = sub_100054494;
  v16 = os_transaction_create();
  v7 = NPGetInternalQueue();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100070990;
  v10[3] = &unk_10010A288;
  objc_copyWeak(&v14, (a1 + 32));
  v11 = v6;
  v12 = v5;
  v13 = v15;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v14);
  _Block_object_dispose(v15, 8);
}

void sub_100070978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100070990(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v3 = nplog_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v33 = *(a1 + 32);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v33;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Received error %@ while looking up feature status", &buf, 0xCu);
      }

      v4 = [*(a1 + 32) domain];
      if ([v4 isEqualToString:@"CloudFeaturesLocalErrorDomain"])
      {
        v5 = [*(a1 + 32) code] == 3;

        if (v5)
        {
          [*(WeakRetained + 8) setProxyAccountType:1 unlimited:0];
          sub_1000674F4(WeakRetained);
          goto LABEL_35;
        }
      }

      else
      {
      }

      if ((deviceClassIsHomepod() & 1) == 0)
      {
        v10 = *(WeakRetained + 20);
        if (v10)
        {
          dispatch_source_cancel(v10);
          v11 = *(WeakRetained + 20);
          *(WeakRetained + 20) = 0;
        }

        v12 = *(WeakRetained + 21);
        if (v12 < 8)
        {
          v14 = dword_1000CF150[v12];
        }

        else
        {
          v13 = nplog_obj();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *&buf = 0x804000100;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed subscription check after %u attempts", &buf, 8u);
          }

          v14 = 10800;
        }

        v19 = arc4random_uniform(6u);
        ++*(WeakRetained + 21);
        v20 = nplog_obj();
        v21 = v19 + v14;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Retry: checking subscription after %lu seconds", &buf, 0xCu);
        }

        objc_initWeak(&location, WeakRetained);
        v22 = NPGetInternalQueue();
        v23 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v22);
        v24 = *(WeakRetained + 20);
        *(WeakRetained + 20) = v23;

        if (*(WeakRetained + 20))
        {
          v25 = *(WeakRetained + 20);
          v26 = dispatch_time(0x8000000000000000, 1000000000 * v21);
          dispatch_source_set_timer(v25, v26, 0xFFFFFFFFFFFFFFFFLL, 0);

          v27 = *(WeakRetained + 20);
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v36 = sub_100071034;
          v37 = &unk_100109538;
          v28 = v27;
          objc_copyWeak(&v38, &location);
          dispatch_source_set_event_handler(v28, &buf);

          dispatch_resume(*(WeakRetained + 20));
          objc_destroyWeak(&v38);
        }

        v29 = [NSDate dateWithTimeIntervalSinceNow:v21];
        v30 = *(WeakRetained + 22);
        *(WeakRetained + 22) = v29;

        sub_100064320(WeakRetained);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        if ([v6 canUse])
        {
          v7 = [*(a1 + 40) limit];

          v8 = nplog_obj();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = "";
            if (!v7)
            {
              v9 = " (unlimited)";
            }

            LODWORD(buf) = 136446210;
            *(&buf + 4) = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "privacy proxy feature available%{public}s", &buf, 0xCu);
          }

          [*(WeakRetained + 8) setProxyAccountType:2 unlimited:v7 == 0];
        }

        else
        {
          v15 = nplog_obj();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "privacy proxy feature unavailable", &buf, 2u);
          }

          v16 = [*(WeakRetained + 8) currentConfiguration];
          v17 = [v16 proxyAccountType];
          v18 = [v17 unsignedIntegerValue] == 2;

          if (v18)
          {
            [*(WeakRetained + 10) reportServiceDisabledShouldReport:1];
          }

          [*(WeakRetained + 8) setProxyAccountType:1 unlimited:0];
        }

        sub_1000674F4(WeakRetained);
      }
    }
  }

LABEL_35:
  v31 = *(*(a1 + 48) + 8);
  v32 = *(v31 + 40);
  *(v31 + 40) = 0;
}

void sub_100070E70(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = sub_100001F54;
  v5[4] = sub_100054494;
  v6 = os_transaction_create();
  v2 = NPGetInternalQueue();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100070F90;
  v3[3] = &unk_100109988;
  objc_copyWeak(&v4, (a1 + 32));
  v3[4] = v5;
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  _Block_object_dispose(v5, 8);
}

void sub_100070F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100070F90(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "feature change notification received", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    sub_100066A0C(WeakRetained);
    sub_100060FFC(v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_100071034(uint64_t a1)
{
  v2 = nplog_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Subscription check retry timer fired", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_source_cancel(*(WeakRetained + 20));
    v5 = v4[20];
    v4[20] = 0;

    v6 = os_transaction_create();
    sub_100066A0C(v4);
  }
}

void sub_1000710F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = NPGetInternalQueue();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000711F4;
  v10[3] = &unk_10010A2D8;
  objc_copyWeak(&v14, (a1 + 40));
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v14);
}

void sub_1000711F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      goto LABEL_3;
    }

    v4 = [*(a1 + 40) accessToken];

    if (!v4)
    {
      if (!*(a1 + 32))
      {
        v3 = nplog_obj();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v9 = [*(a1 + 40) canUse];
          v12 = 67109120;
          LODWORD(v13) = v9;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "No access token received, status %u", &v12, 8u);
        }

        goto LABEL_5;
      }

LABEL_3:
      v3 = nplog_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 32);
        v11 = [*(a1 + 40) canUse];
        v12 = 138412546;
        v13 = v10;
        v14 = 1024;
        v15 = v11;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Received error %@ while looking up access token, can use %u", &v12, 0x12u);
      }

LABEL_5:

      (*(*(a1 + 48) + 16))();
      goto LABEL_10;
    }

    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 40) canUse];
      v12 = 67109120;
      LODWORD(v13) = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Received access token, can use %u", &v12, 8u);
    }

    v7 = *(a1 + 48);
    v8 = [*(a1 + 40) accessToken];
    (*(v7 + 16))(v7, 1, v8);
  }

LABEL_10:
}

void sub_100071400(uint64_t a1)
{
  v2 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v2 handleAppInstallation:*(a1 + 32)];

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_100071460(uint64_t a1)
{
  v2 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v2 handleAppUninstallation:*(a1 + 32)];

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

void sub_1000714C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5 && v3 && (*(v5 + 9) & 1) != 0 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v4, _xpc_event_key_name);
    if (!strcmp(string, "ApplicationInstalled"))
    {
      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ received app installation event", buf, 0xCu);
      }
    }

    v9 = strcmp(string, "ApplicationUninstalled");
    if (!v9)
    {
      v10 = nplog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        *buf = 138412290;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ received app uninstallation event", buf, 0xCu);
      }
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = xpc_dictionary_get_value(v4, "UserInfo");
      v14 = v13;
      if (v13 && xpc_get_type(v13) == &_xpc_type_dictionary)
      {
        v16 = _CFXPCCreateCFObjectFromXPCObject();
        v17 = nplog_obj();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v12;
          *&buf[12] = 2112;
          *&buf[14] = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@ apps installation/uninstallation event was received with user info: %@", buf, 0x16u);
        }

        v18 = [v16 objectForKeyedSubscript:@"bundleIDs"];
        objc_opt_class();
        if (v18 && (isKindOfClass = objc_opt_isKindOfClass(), v18, (isKindOfClass & 1) != 0))
        {
          v15 = objc_alloc_init(NSMutableArray);
          if ([v18 containsObject:@"com.apple.SafariTechnologyPreview"])
          {
            [v15 addObject:@"com.apple.SafariTechnologyPreview"];
          }

          if ([v18 containsObject:@"com.apple.mobilesafari"])
          {
            [v15 addObject:@"com.apple.mobilesafari"];
          }

          if ([v18 containsObject:@"com.apple.mobilemail"])
          {
            [v15 addObject:@"com.apple.mobilemail"];
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    if ([v15 count])
    {
      v20 = nplog_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 32);
        v22 = "installed";
        *buf = 138412802;
        if (!v9)
        {
          v22 = "uninstalled";
        }

        *&buf[4] = v21;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        *&buf[22] = 2080;
        v34 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@ %@ apps were %s", buf, 0x20u);
      }

      v23 = *(a1 + 32);
      v24 = v15;
      if (v23)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v34 = sub_100001F54;
        v35 = sub_100054494;
        v36 = os_transaction_create();
        if (v9)
        {
          v25 = dispatch_time(0, 2000000000);
          v26 = NPGetInternalQueue();
          v27 = _NSConcreteStackBlock;
          v28 = 3221225472;
          v29 = sub_100071400;
          v30 = &unk_100109450;
          v31 = v24;
          v32 = buf;
          dispatch_after(v25, v26, &v27);
        }

        else
        {
          v26 = NPGetInternalQueue();
          v27 = _NSConcreteStackBlock;
          v28 = 3221225472;
          v29 = sub_100071460;
          v30 = &unk_100109450;
          v31 = v24;
          v32 = buf;
          dispatch_async(v26, &v27);
        }

        _Block_object_dispose(buf, 8);
      }
    }
  }
}

void sub_1000719E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100071A04(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = sub_100001F54;
  v4[4] = sub_100054494;
  v5 = os_transaction_create();
  v2 = NPGetInternalQueue();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100071B0C;
  v3[3] = &unk_100109450;
  v3[4] = a1;
  v3[5] = v4;
  dispatch_async(v2, v3);

  _Block_object_dispose(v4, 8);
}

void sub_100071AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100071B0C(uint64_t a1)
{
  xdict = xpc_dictionary_create(0, 0, 0);
  v2 = *(a1 + 32);
  if (v2)
  {
    if (*(v2 + 19))
    {
      v3 = 1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  xpc_dictionary_set_int64(xdict, "CaptiveOutage", v3);
  v4 = *(a1 + 32);
  if (v4)
  {
    if (*(v4 + 20))
    {
      v5 = 1;
    }

    else
    {
      v5 = -1;
    }
  }

  else
  {
    v5 = -1;
  }

  xpc_dictionary_set_int64(xdict, "CaptiveOutageWaitingForUserActivity", v5);
  xpc_set_event();
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_100071BE8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    sub_100071C58(WeakRetained, a2);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_100071C58(uint64_t a1, unsigned int a2)
{
  v4 = nplog_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 4)
    {
      v5 = @"unknown";
    }

    else
    {
      v5 = *(&off_10010A5E8 + a2);
    }

    *buf = 138412546;
    *&buf[4] = a1;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ received captive probe result [%@]", buf, 0x16u);
  }

  if (a2 != 2)
  {
    if (a2 != 1)
    {
      if (!a2)
      {
        sub_100072420(a1);
        if (*(a1 + 19) == 1)
        {
          v6 = nplog_obj();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = a1;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ captive probe was successful, reporting service active ...", buf, 0xCu);
          }

          sub_100064D28(a1, 0);
        }
      }

      return;
    }

    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a1;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ captive probe received HTTP redirect", buf, 0xCu);
    }

    os_unfair_lock_lock((a1 + 28));
    v8 = *(a1 + 21);
    os_unfair_lock_unlock((a1 + 28));
    if ((v8 & 1) == 0)
    {
      v9 = objc_alloc_init(NSPOutageReasonStats);
      v10 = [*(a1 + 48) tierToString];
      [(NSPOutageReasonStats *)v9 setTierType:v10];

      [(NSPOutageReasonStats *)v9 setOutageReasonType:@"Captive"];
      [(NSPOutageReasonStats *)v9 setOutageReasonSubType:@"CaptiveProbeRedirected"];
      objc_storeStrong((a1 + 304), v9);
      *buf = 0;
      if (IOPMGetUserActivityLevel() || (buf[0] & 1) == 0)
      {
        if ((*(a1 + 19) & 1) == 0)
        {
          v15 = nplog_obj();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "(inactive user) captive network outage cannot be reported now", buf, 2u);
          }

          *(a1 + 19) = 256;
          sub_1000654C0(a1);
          sub_100071A04(a1);
        }
      }

      else
      {
        v11 = nplog_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "(active user) captive network outage can be reported", buf, 2u);
        }

        sub_100064D28(a1, 1);
      }
    }

LABEL_33:
    os_unfair_lock_lock((a1 + 28));
    v16 = *(a1 + 21);
    os_unfair_lock_unlock((a1 + 28));
    sub_100072210(a1, (v16 & 1) == 0);
    return;
  }

  v12 = nplog_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = a1;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ captive probe timed out", buf, 0xCu);
  }

  if (*(a1 + 19))
  {
    goto LABEL_33;
  }

  os_unfair_lock_lock((a1 + 28));
  v13 = *(a1 + 296);
  os_unfair_lock_unlock((a1 + 28));
  if (v13 < 3)
  {
    goto LABEL_33;
  }

  v14 = nplog_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = a1;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ timeout evaluation reached max retry count", buf, 0xCu);
  }

  sub_100072420(a1);
}

void sub_10007204C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    os_unfair_lock_lock((v1 + 28));
    v2 = *(v1 + 21);
    os_unfair_lock_unlock((v1 + 28));
    if (v2 == 1)
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x3032000000;
      v14 = sub_100001F54;
      v15 = sub_100054494;
      v16 = os_transaction_create();
      v3 = +[NSPCaptiveWiFiHandler sharedHandler];
      objc_initWeak(&location, v1);
      v4 = *(v1 + 128);
      v5 = [v4 interfaceName];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100071BE8;
      v8[3] = &unk_10010A348;
      objc_copyWeak(&v9, &location);
      v8[4] = &v11;
      v6 = [v3 evaluate:v5 completionHandler:v8];

      if ((v6 & 1) == 0)
      {
        v7 = v12[5];
        v12[5] = 0;
      }

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);

      _Block_object_dispose(&v11, 8);
    }
  }
}

void sub_1000721D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_100072210(uint64_t a1, char a2)
{
  os_unfair_lock_lock((a1 + 28));
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a1 + 296) + 1;
    if (v4 > 6)
    {
      goto LABEL_5;
    }
  }

  *(a1 + 296) = v4;
LABEL_5:
  v5 = *(a1 + 288);
  if (v5)
  {
    dispatch_source_cancel(v5);
    v6 = *(a1 + 288);
    *(a1 + 288) = 0;
  }

  v7 = arc4random_uniform(6u);
  LODWORD(v8) = dword_1000CF170[*(a1 + 296) - 1];
  v9 = v7 + v8;
  v10 = nplog_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LODWORD(v18) = 134217984;
    *(&v18 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "wait time for the next captive evaluation is [%f] seconds", &v18, 0xCu);
  }

  v11 = NPGetInternalQueue();
  v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v11);
  v13 = *(a1 + 288);
  *(a1 + 288) = v12;

  v14 = *(a1 + 288);
  if (v14)
  {
    v15 = v14;
    v16 = dispatch_time(0, (v9 * 1000000000.0));
    dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0);

    v17 = *(a1 + 288);
    *&v18 = _NSConcreteStackBlock;
    *(&v18 + 1) = 3221225472;
    v19 = sub_10007204C;
    v20 = &unk_100109478;
    v21 = a1;
    dispatch_source_set_event_handler(v17, &v18);
    dispatch_resume(*(a1 + 288));
    *(a1 + 21) = 1;
  }

  os_unfair_lock_unlock((a1 + 28));
}

void sub_100072420(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 28));
  v2 = *(a1 + 21);
  os_unfair_lock_unlock((a1 + 28));
  if (v2 == 1)
  {
    os_unfair_lock_lock((a1 + 28));
    v3 = *(a1 + 288);
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = *(a1 + 288);
      *(a1 + 288) = 0;
    }

    *(a1 + 296) = 0;
    *(a1 + 21) = 0;
    os_unfair_lock_unlock((a1 + 28));
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "stopped captive evaluation retry", v6, 2u);
    }
  }
}

void sub_1000724D8(uint64_t a1)
{
  v2 = +[NSPCaptiveWiFiHandler sharedHandler];
  [v2 abort];

  v3 = *(a1 + 104);
  *(a1 + 104) = 0;
}

uint64_t sub_10007252C(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 128);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 128);
      v7 = [v6 currentKnownNetworkProfile];
      v8 = [v7 networkName];
      v9 = [v8 isEqualToString:*(a1 + 104)];

      if (v9)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_1000725D4(uint64_t a1, unsigned int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    sub_100071C58(WeakRetained, a2);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_100072644(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = v2[8];
  }

  else
  {
    v3 = 0;
  }

  [v2 policiesUpdated:v3 policy:a1[5] resolverInfoChanged:0];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_1000726A4(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    v3 = nplog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ CNPluginMonitor received kCNPluginMonitorEventTypePluginListChanged event", &v14, 0xCu);
    }

    v5 = CNPluginMonitorEventCopyDisplayIDs();
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v14 = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ CNPluginMonitor received plugins %@", &v14, 0x16u);
    }

    Property = *(a1 + 32);
    if (v5)
    {
      if (Property)
      {
        Property = objc_getProperty(Property, v8, 56, 1);
      }

      if ([Property isEqualToArray:v5])
      {
        goto LABEL_18;
      }
    }

    else if (!Property || !objc_getProperty(Property, v8, 56, 1))
    {
LABEL_18:

      return;
    }

    v10 = nplog_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ CNPluginMonitor received new captive plugins %@", &v14, 0x16u);
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      objc_setProperty_atomic(v13, v12, v5, 56);
      v13 = *(a1 + 32);
    }

    sub_10006E014(v13);
    goto LABEL_18;
  }
}

void sub_100072A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100072AB8(uint64_t a1)
{
  if (a1 && *(a1 + 120))
  {
    nw_resolver_cancel();
    v2 = *(a1 + 120);
    *(a1 + 120) = 0;
  }
}

void sub_100072B0C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2 == 2)
  {
    count = nw_array_get_count();
    v8 = nplog_obj();
    v9 = v8;
    if (count)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v14 = 138412290;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "DNS probe passed on %@", &v14, 0xCu);
      }

      if (WeakRetained)
      {
        v11 = WeakRetained[9];
      }

      else
      {
        v11 = 0;
      }

      v12 = 0;
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DNS probe blocked on %@", &v14, 0xCu);
      }

      if (WeakRetained)
      {
        v11 = WeakRetained[9];
      }

      else
      {
        v11 = 0;
      }

      v12 = 1;
    }

    [v11 updateDNSFilteringHint:v12];
    sub_100072AB8(WeakRetained);
  }
}

void sub_100072C7C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = NPGetInternalQueue();
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100072D4C;
    v6[3] = &unk_1001098C0;
    v7 = v3;
    v8 = WeakRetained;
    dispatch_async(v5, v6);
  }
}

void sub_100072D4C(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  if ((v2 - 19) < 2)
  {
    v14 = nplog_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 40);
      if (v15)
      {
        v15 = v15[16];
      }

      v16 = v15;
      v17 = [v16 networkName];
      *buf = 138477827;
      v30 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "IPv4/IPv6 changed for SSID [%{private}@]", buf, 0xCu);
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      v19 = *(v18 + 128);
      if (v19 && (v20 = v19, [v20 currentKnownNetworkProfile], v21 = objc_claimAutoreleasedReturnValue(), v21, v20, !v21))
      {
        v26 = nplog_obj();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Wi-Fi disassociated", buf, 2u);
        }

        sub_1000724D8(v18);
        sub_100072420(v18);
      }

      else
      {
        sub_100068898(v18);
      }
    }
  }

  else
  {
    if (v2 != 2)
    {
      if (v2 != 30)
      {
        return;
      }

      v3 = *(a1 + 40);
      if (!v3)
      {
        return;
      }

      v4 = [*(v3 + 128) currentKnownNetworkProfile];
      v28 = v4;
      if (!v4)
      {
        goto LABEL_32;
      }

      if (![v4 isCaptiveStateDetermined])
      {
        goto LABEL_32;
      }

      v5 = [v28 isCaptive];
      v6 = v28;
      if ((v5 & 1) == 0)
      {
        v7 = [v28 wasCaptive];
        v6 = v28;
        if (!v7)
        {
          goto LABEL_32;
        }
      }

      v8 = [v6 captiveProfile];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 objectForKeyedSubscript:@"user-portal-url"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [NSURL URLWithString:v9];
          v11 = [v10 scheme];
          v12 = [v11 isEqualToString:@"https"];

          if (v12)
          {
            v13 = [v10 host];
          }

          else
          {
            v13 = 0;
          }

          if (v13)
          {
            v27 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
            [v27 setCaptivePortalExceptionHostname:v13];

            goto LABEL_33;
          }

LABEL_32:
          v13 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
          [v13 setCaptivePortalExceptionHostname:0];
LABEL_33:

          return;
        }
      }

      goto LABEL_32;
    }

    v22 = nplog_obj();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 40);
      if (v23)
      {
        v23 = v23[16];
      }

      v24 = v23;
      v25 = [v24 networkName];
      *buf = 138477827;
      v30 = v25;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Wi-Fi SSID changed to [%{private}@]", buf, 0xCu);
    }

    sub_10006801C(*(a1 + 40));
  }
}

void sub_1000732C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to get current cellular context: %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = [CTServiceDescriptor descriptorWithSubscriptionContext:v5];
    v9 = *(a1 + 32);
    if (v9)
    {
      v9 = v9[17];
    }

    v18 = 0;
    v10 = v9;
    v11 = [v10 getPrivacyProxyState:v8 error:&v18];
    v12 = v18;

    if (v12)
    {
      v13 = nplog_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v12;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to get cellular proxy state: %@", buf, 0xCu);
      }
    }

    else
    {
      v14 = *(a1 + 32);
      if (v14)
      {
        v15 = *(v14 + 136);
      }

      else
      {
        v15 = 0;
      }

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000734C0;
      v16[3] = &unk_10010A3E8;
      v17 = v11;
      v16[4] = v14;
      [v15 getSubscriptionUserFacingName:v5 completion:v16];
    }
  }
}

void sub_1000734C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get cellular operator name: %@", &v13, 0xCu);
    }
  }

  v8 = *(a1 + 41);
  v9 = *(a1 + 32);
  if (v8)
  {
    if (v9)
    {
      v10 = *(v9 + 80);
    }

    else
    {
      v10 = 0;
    }

    [v10 reportActiveOnCellularName:v5];
  }

  else
  {
    if (v9)
    {
      v11 = *(v9 + 80);
    }

    else
    {
      v11 = 0;
    }

    [v11 reportDisabledOnCellularName:v5];
  }

  v12 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
  [v12 cellularDisabled:v8 ^ 1u];
}

void sub_1000735F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v9 = nplog_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to get current cellular context: %@", buf, 0xCu);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 80);
    }

    else
    {
      v11 = 0;
    }

    [v11 reportBlockedOnCellularName:0];
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 136);
    }

    else
    {
      v8 = 0;
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100073740;
    v12[3] = &unk_10010A438;
    v12[4] = v7;
    [v8 getSubscriptionUserFacingName:a2 completion:v12];
  }
}

void sub_100073740(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get cellular operator name: %@", &v10, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(v8 + 80);
  }

  else
  {
    v9 = 0;
  }

  [v9 reportBlockedOnCellularName:v5];
}

void sub_1000739B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || v5)
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get current cellular context: %@", &v16, 0xCu);
    }
  }

  else
  {
    v7 = [CTServiceDescriptor descriptorWithSubscriptionContext:a2];
    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = v8[17];
    }

    v9 = v8;
    v10 = [v9 setPrivacyProxyState:v7 enabled:0];

    v11 = nplog_obj();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = v10;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to set cellular proxy state: %@", &v16, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 40);
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Saved preference to disable on cellular network: %@", &v16, 0xCu);
      }

      v14 = *(a1 + 32);
      if (v14)
      {
        v15 = *(v14 + 80);
      }

      else
      {
        v15 = 0;
      }

      [v15 reportDisabledOnCellularName:*(a1 + 40)];
      v12 = +[NSPPrivacyProxyPolicyHandler sharedHandler];
      [v12 cellularDisabled:1];
    }
  }
}

uint64_t sub_100073BA0(void *a1)
{
  v1 = a1;
  v2 = _SCNetworkInterfaceCreateWithBSDName();
  v3 = v1;
  if (v2)
  {
    v4 = v2;
    v3 = SCNetworkInterfaceGetLocalizedDisplayName(v2);

    CFRelease(v4);
  }

  return v3;
}

void sub_100073C14(const __SCDynamicStore *a1, void *a2)
{
  v4 = sub_100053E68();
  sub_10006815C(v4);

  v5 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v25;
    v10 = kSCEntNetPvD;
    *&v7 = 138412290;
    v23 = v7;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        if ([(__CFString *)v12 containsString:v10, v23])
        {
          v13 = SCDynamicStoreCopyValue(a1, v12);
          v14 = nplog_obj();
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
          if (v13)
          {
            if (v15)
            {
              *buf = v23;
              v29 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Discovered PvD dictionary: %@", buf, 0xCu);
            }

            v16 = sub_100053E68();
            v17 = v13;
            if (v16)
            {
              v18 = v16[9];
              if (v18)
              {
                [v18 didReceiveUpdatedPvDOptions:v17];
              }
            }
          }

          else
          {
            if (v15)
            {
              *buf = v23;
              v29 = 0;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "PvD key is not longer present: %@", buf, 0xCu);
            }

            v19 = sub_100053E68();
            v16 = v19;
            if (v19)
            {
              v20 = *(v19 + 72);
              if (v20)
              {
                if ([v20 networkDiscoveredProxyPresentInAgentManager])
                {
                  v21 = nplog_obj();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Clean up network discovered proxy", buf, 2u);
                  }

                  [v16[9] tearDownNetworkDiscoveredProxy];
                }
              }
            }
          }
        }

        v11 = v11 + 1;
      }

      while (v8 != v11);
      v22 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
      v8 = v22;
    }

    while (v22);
  }
}

_DWORD *sub_1000743B8(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (*(a2 + 16) == 3 && WeakRetained != 0)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = v7;
    v9 = v4[6];
    if (v9)
    {
      v10 = [v9 diagnostics];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      [v8 setObject:v10 forKeyedSubscript:v12];
    }

    v13 = v4[8];
    if (v13)
    {
      v14 = [v13 diagnostics];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      [v8 setObject:v14 forKeyedSubscript:v16];
    }

    v17 = objc_alloc_init(PrivacyProxyInfo);
    v18 = v4[8];
    if (v18)
    {
      [v18 copyProxyInfo:v17];
    }

    v19 = v4[9];
    if (v19)
    {
      [v19 copyProxyInfo:v17];
    }

    v20 = +[NSPPrivacyTokenManager sharedTokenManager];

    if (v20)
    {
      v21 = +[NSPPrivacyTokenManager sharedTokenManager];
      [v21 copyTokenInfo:v17];
    }

    v22 = [v17 diagnostics];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [v8 setObject:v22 forKeyedSubscript:v24];

    v25 = v4[10];
    if (v25)
    {
      v26 = [v25 diagnostics];
      if (v26)
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        [v8 setObject:v26 forKeyedSubscript:v28];
      }
    }

    v38 = 0;
    v29 = [NSPropertyListSerialization dataWithPropertyList:v8 format:200 options:0 error:&v38];
    v30 = v38;
    v31 = [v29 length];
    if (v30)
    {
      v32 = nplog_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = v30;
        v33 = "serializing state data failed with error: %@";
        v34 = v32;
        v35 = 12;
LABEL_28:
        _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
      }
    }

    else
    {
      v36 = v31;
      if (v31 <= 0x8000)
      {
        v6 = malloc_type_calloc(1uLL, v31 + 200, 0x1000040BEF03554uLL);
        *v6 = 1;
        v6[1] = v36;
        __strlcpy_chk();
        memcpy(v6 + 50, [v29 bytes], v36);
LABEL_30:

        goto LABEL_31;
      }

      v32 = nplog_obj();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v40) = v36;
        v33 = "serialized data length %u exceed max state dump size";
        v34 = v32;
        v35 = 8;
        goto LABEL_28;
      }
    }

    v6 = 0;
    goto LABEL_30;
  }

  v6 = 0;
LABEL_31:

  return v6;
}

void sub_100074734(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    close(WeakRetained[8]);
    WeakRetained = v2;
    v2[8] = -1;
  }
}

id sub_100074784(id a1, const char *a2)
{
  if (a1)
  {
    v2 = a1;
    if (!objc_getProperty(a1, a2, 392, 1))
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0;
      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = sub_100001F54;
      v27 = sub_100054494;
      v28 = 0;
      v4 = +[NEFileHandleMaintainer sharedMaintainer];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100074A48;
      v22[3] = &unk_10010A4B0;
      v22[4] = &v23;
      v22[5] = &v29;
      [v4 iterateFileHandlesWithBlock:v22];

      v5 = v24[5];
      if (v5)
      {
        v6 = [v5 handle];
        v7 = dup([v6 fileDescriptor]);

        v8 = [NWNetworkAgentSession alloc];
        v9 = NPGetInternalQueue();
        v10 = [v8 initWithFileDescriptor:v7 queue:v9];
        objc_setProperty_atomic(v2, v11, v10, 392);
      }

      else
      {
        v12 = [NWNetworkAgentSession alloc];
        v13 = NPGetInternalQueue();
        v14 = [v12 initWithQueue:v13];
        objc_setProperty_atomic(v2, v15, v14, 392);

        v16 = [NENetworkAgentSessionFileHandle alloc];
        v9 = objc_getProperty(v2, v17, 392, 1);
        v18 = [v16 initWithNetworkAgentSession:v9 name:@"NetworkServiceProxy Agents"];
        v10 = v24[5];
        v24[5] = v18;
      }

      if ((v30[3] & 1) == 0)
      {
        v19 = +[NEFileHandleMaintainer sharedMaintainer];
        [v19 setFileHandle:v24[5] matchingPredicate:&stru_10010A4D0];

        v20 = +[NEFileHandleMaintainer sharedMaintainer];
        [v20 commit];
      }

      _Block_object_dispose(&v23, 8);

      _Block_object_dispose(&v29, 8);
    }

    a1 = objc_getProperty(v2, v3, 392, 1);
  }

  return a1;
}

void sub_100074A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100074A48(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(*(a1 + 32) + 8);
    v7 = *(v5 + 40);
    v6 = (v5 + 40);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      objc_storeStrong(v6, a2);
      v8 = 1;
    }

    *(*(*(a1 + 40) + 8) + 24) = v8;
  }

  return 1;
}

BOOL sub_100074AD8(id a1, NEFileHandle *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_100074C08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    sub_100066CC0(WeakRetained);
    WeakRetained = v2;
  }
}

void sub_100074C4C(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = nplog_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = "active";
      if ((a2 & 1) == 0)
      {
        v5 = "not active";
      }

      *buf = 136315138;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "received user activity notification, user is %s", buf, 0xCu);
    }

    WeakRetained = v6;
    if ((a2 & 1) != 0 && *(v6 + 20) == 1)
    {
      sub_100064D28(v6, 1);
      WeakRetained = v6;
    }
  }
}

void sub_1000750B8(id a1)
{
  v1 = objc_alloc_init(NSPCoreData);
  v2 = qword_100129810;
  qword_100129810 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000755F8(id a1, NSPersistentStoreDescription *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to load CoreData persistent store %@ with error %@", &v7, 0x16u);
    }
  }
}

void sub_100076F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100076FBC(uint64_t a1)
{
  v2 = +[NSPTokenEvent fetchRequest];
  if (v2)
  {
    v3 = [NSExpression expressionForKeyPath:@"date"];
    v36 = v3;
    v4 = [NSArray arrayWithObjects:&v36 count:1];
    v5 = [NSExpression expressionForFunction:@"min:" arguments:v4];

    v6 = [NSExpression expressionForKeyPath:@"date"];
    v35 = v6;
    v7 = [NSArray arrayWithObjects:&v35 count:1];
    v8 = [NSExpression expressionForFunction:@"max:" arguments:v7];

    v9 = objc_alloc_init(NSExpressionDescription);
    v10 = v9;
    if (v9)
    {
      [v9 setName:@"minDate"];
      [v10 setExpression:v5];
      [v10 setExpressionResultType:900];
      v11 = objc_alloc_init(NSExpressionDescription);
      v12 = v11;
      if (v11)
      {
        [v11 setName:@"maxDate"];
        [v12 setExpression:v8];
        [v12 setExpressionResultType:900];
        v34[0] = v10;
        v34[1] = v12;
        v13 = [NSArray arrayWithObjects:v34 count:2];
        [v2 setPropertiesToFetch:v13];

        [v2 setResultType:2];
        v14 = *(a1 + 32);
        v29 = 0;
        v15 = [v14 executeFetchRequest:v2 error:&v29];
        v16 = v29;
        if (v15 && [v15 count])
        {
          v17 = [v15 firstObject];
          v19 = *(a1 + 40);
          v18 = a1 + 40;
          v20 = *(v19 + 8);
          v21 = *(v20 + 40);
          *(v20 + 40) = v17;

          v22 = [*(*(*v18 + 8) + 40) objectForKey:@"minDate"];
          v23 = [*(*(*v18 + 8) + 40) objectForKey:@"maxDate"];
          v24 = v23;
          if (v22 && v23)
          {
            v25 = nplog_obj();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              v28 = [v22 description];
              v26 = [v24 description];
              *buf = 138412546;
              v31 = v28;
              v32 = 2112;
              v33 = v26;
              v27 = v26;
              _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Min date: %@, Max date: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v22 = nplog_obj();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v31 = v16;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Error fetching min and max dates: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v31 = "+[NSPCoreData getMinMaxDate]_block_invoke";
          _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "%s called with null maxDateExpressionDescription", buf, 0xCu);
        }
      }
    }

    else
    {
      v12 = nplog_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v31 = "+[NSPCoreData getMinMaxDate]_block_invoke";
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "%s called with null minDateExpressionDescription", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = nplog_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v31 = "+[NSPCoreData getMinMaxDate]_block_invoke";
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s called with null fetchRequest", buf, 0xCu);
    }
  }
}

void sub_100077DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose((v27 - 160), 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_100077E18(uint64_t a1)
{
  v2 = +[NSPTokenEvent fetchRequest];
  if (v2)
  {
    v3 = *(a1 + 32);
    v5 = v3;
    if ((*(*(*(a1 + 88) + 8) + 24) & 0x8000000000000000) != 0)
    {
      v20 = v3;
    }

    else
    {
      *&v4 = 138412290;
      v22 = v4;
      do
      {
        v6 = [*(a1 + 40) components:28 fromDate:v5];
        [v6 setHour:{objc_msgSend(*(a1 + 56), "hour")}];
        [v6 setMinute:{objc_msgSend(*(a1 + 56), "minute")}];
        [v6 setSecond:{objc_msgSend(*(a1 + 56), "second")}];
        v7 = [*(a1 + 40) dateFromComponents:v6];
        [*(a1 + 64) doubleValue];
        v9 = [v7 dateByAddingTimeInterval:v8 * 60.0];
        v10 = *(a1 + 72);
        v11 = [NSPredicate predicateWithFormat:@"(date >= %@) AND (date < %@) AND (vendor == %@) AND (eventType == %ld)", v7, v9, v10, *(a1 + 104), v22];
        [v2 setPredicate:v11];
        v12 = *(a1 + 80);
        v25 = 0;
        v13 = [v12 countForFetchRequest:v2 error:&v25];
        v14 = v25;
        if (v14)
        {
          v15 = v14;
          v16 = nplog_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = [v15 localizedDescription];
            *buf = 138412546;
            v27 = v5;
            v28 = 2112;
            v29 = v17;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error fetching objects for date %@: %@", buf, 0x16u);
          }
        }

        else
        {
          v18 = nplog_obj();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v23 = *(a1 + 72);
            v24 = [v7 description];
            v21 = [v9 description];
            *buf = 138413058;
            v27 = v23;
            v28 = 2112;
            v29 = v24;
            v30 = 2112;
            v31 = v21;
            v32 = 2048;
            v33 = v13;
            _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "vendor:%@ Objects with date attribute between %@ and %@: %lu", buf, 0x2Au);
          }

          v19 = *(*(*(a1 + 96) + 8) + 40);
          v15 = [NSNumber numberWithUnsignedLong:v13];
          [v19 addObject:v15];
        }

        v20 = [*(a1 + 40) dateByAddingComponents:*(a1 + 48) toDate:v5 options:0];

        --*(*(*(a1 + 88) + 8) + 24);
        v5 = v20;
      }

      while ((*(*(*(a1 + 88) + 8) + 24) & 0x8000000000000000) == 0);
    }
  }

  else
  {
    v20 = nplog_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v27 = "+[NSPCoreData getNSPEventStatsForSingleWindow:eventType:startDate:endDate:windowStartTime:windowDuration:]_block_invoke";
      _os_log_fault_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "%s called with null fetchRequest", buf, 0xCu);
    }
  }
}

void sub_100078A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 176), 8);
  _Block_object_dispose((v37 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_100078AA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(*(*(a1 + 96) + 8) + 24) & 0x8000000000000000) == 0)
  {
    *&v3 = 138412290;
    v22 = v3;
    while (1)
    {
      v4 = [*(a1 + 40) components:540 fromDate:v2];
      [v4 setHour:{objc_msgSend(*(a1 + 56), "hour")}];
      [v4 setMinute:{objc_msgSend(*(a1 + 56), "minute")}];
      [v4 setSecond:{objc_msgSend(*(a1 + 56), "second")}];
      v5 = [*(a1 + 40) dateFromComponents:v4];
      [*(a1 + 64) doubleValue];
      v7 = [v5 dateByAddingTimeInterval:v6 * 60.0];
      v8 = [NSPredicate predicateWithFormat:@"(date >= %@) AND (date < %@) AND (vendor == %@) AND (eventType != %ld)", v5, v7, *(a1 + 72), 4, v22];
      [*(a1 + 80) setPredicate:v8];
      v9 = *(a1 + 88);
      v10 = *(a1 + 80);
      v27 = 0;
      v11 = [v9 executeFetchRequest:v10 error:&v27];
      v26 = v27;
      if (v11)
      {
        v12 = [v11 valueForKey:@"tokenCount"];
        v13 = nplog_obj();
        v14 = v13;
        if (!v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315138;
            v29 = "+[NSPCoreData getNSPTokenStatsForSingleWindow:startDate:endDate:windowStartTime:windowDuration:statsCategory:]_block_invoke";
            _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "%s called with null tokenCount", buf, 0xCu);
          }

          break;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(a1 + 72);
          v25 = [v5 description];
          v18 = [v7 description];
          v23 = [v11 count];
          v19 = [v12 count];
          *buf = 138413314;
          v29 = v24;
          v30 = 2112;
          v31 = v25;
          v32 = 2112;
          v33 = v18;
          v34 = 2048;
          v35 = v23;
          v36 = 2048;
          v37 = v19;
          _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "vendor:%@ Objects with date attribute between %@ and %@: %lu %lu", buf, 0x34u);
        }

        v15 = +[NSCalendar currentCalendar];
        v16 = [v15 isDateInWeekend:v5];

        v17 = 112;
        if (v16)
        {
          v17 = 104;
        }

        [*(*(*(a1 + v17) + 8) + 40) addObjectsFromArray:v12];
        if ([v4 weekday] == *(a1 + 128))
        {
          [*(*(*(a1 + 120) + 8) + 40) addObjectsFromArray:v12];
        }
      }

      else
      {
        v11 = nplog_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v21 = [v26 localizedDescription];
          *buf = 138412546;
          v29 = v2;
          v30 = 2112;
          v31 = v21;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error fetching objects for date %@: %@", buf, 0x16u);
        }
      }

      v20 = [*(a1 + 40) dateByAddingComponents:*(a1 + 48) toDate:v2 options:0];

      --*(*(*(a1 + 96) + 8) + 24);
      v2 = v20;
      if ((*(*(*(a1 + 96) + 8) + 24) & 0x8000000000000000) != 0)
      {
        goto LABEL_20;
      }
    }
  }

  v20 = v2;
LABEL_20:
}

void sub_10007955C(uint64_t a1)
{
  v2 = [[NSPTokenEvent alloc] initWithContext:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    [(NSPTokenEvent *)v2 setDate:*(a1 + 40)];
    [(NSPTokenEvent *)v3 setEventType:*(a1 + 64)];
    [(NSPTokenEvent *)v3 setVendor:*(a1 + 48)];
    [(NSPTokenEvent *)v3 setTokenCount:*(a1 + 56)];
    v4 = *(a1 + 32);
    v8 = 0;
    v5 = [v4 save:&v8];
    v6 = v8;
    if (v5)
    {
      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v10 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Successfully saved NSP Event %@ ", buf, 0xCu);
      }
    }

    else
    {
      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v10 = v3;
        v11 = 2112;
        v12 = v6;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to save NSP Event %@ error %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v10 = "+[NSPCoreData saveTokenEvent:eventType:vendor:tokenCount:]_block_invoke";
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null event", buf, 0xCu);
    }
  }
}

void sub_1000798F0(uint64_t a1)
{
  v2 = +[NSPTokenEvent fetchRequest];
  if (v2)
  {
    v3 = [NSPredicate predicateWithFormat:@"date <= %@", *(a1 + 32)];
    [v2 setPredicate:v3];

    v4 = *(a1 + 40);
    v18 = 0;
    v5 = [v4 executeFetchRequest:v2 error:&v18];
    v6 = v18;
    if (v5)
    {
      v7 = nplog_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v5 count];
        v9 = *(a1 + 32);
        *buf = 134218242;
        v21 = v8;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found %lu events older than %@", buf, 0x16u);
      }

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v10 = v5;
      v11 = [v10 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v11)
      {
        v12 = *v15;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(v10);
            }

            [*(a1 + 40) deleteObject:*(*(&v14 + 1) + 8 * i)];
          }

          v11 = [v10 countByEnumeratingWithState:&v14 objects:v19 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v10 = nplog_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v6;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "executeFetchRequest failed %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v21 = "+[NSPCoreData purgeEventsOlderThanDate:]_block_invoke";
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null fetchRequest", buf, 0xCu);
    }
  }
}

void sub_100079E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100079E58(uint64_t a1)
{
  v2 = +[NSPTokenEvent fetchRequest];
  v3 = v2;
  if (v2)
  {
    [v2 setFetchBatchSize:6];
    [v3 setFetchLimit:50];
    v4 = *(a1 + 32);
    v13 = 0;
    v5 = [v4 executeFetchRequest:v3 error:&v13];
    v6 = v13;
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    v9 = *(*(*(a1 + 40) + 8) + 40) == 0;
    v10 = nplog_obj();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v6;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to fetch events %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [*(*(*(a1 + 40) + 8) + 40) count];
      *buf = 134217984;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Found %lu events ", buf, 0xCu);
    }
  }

  else
  {
    v6 = nplog_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v15 = "+[NSPCoreData fetchEvents]_block_invoke";
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "%s called with null fetchRequest", buf, 0xCu);
    }
  }
}

void sub_10007A4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007A4CC(uint64_t a1)
{
  v1 = nplog_obj();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v30 = *(a1 + 56);
    *buf = 134217984;
    v47 = v30;
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Fetching %lu events", buf, 0xCu);
  }

  v35 = +[NSPTokenEvent fetchRequest];
  if (!v35)
  {
    v29 = nplog_obj();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_32;
    }

    *buf = 136315138;
    v47 = "+[NSPCoreData fetchLatestEvents:vendors:]_block_invoke";
    v32 = "%s called with null fetchRequest";
    goto LABEL_39;
  }

  if (*(a1 + 32))
  {
    v2 = objc_alloc_init(NSMutableArray);
    if (v2)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v3 = *(a1 + 32);
      v4 = [v3 countByEnumeratingWithState:&v42 objects:v53 count:16];
      if (v4)
      {
        v5 = *v43;
        do
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v43 != v5)
            {
              objc_enumerationMutation(v3);
            }

            v7 = [NSPredicate predicateWithFormat:@"vendor == %@", *(*(&v42 + 1) + 8 * i)];
            [v2 addObject:v7];
          }

          v4 = [v3 countByEnumeratingWithState:&v42 objects:v53 count:16];
        }

        while (v4);
      }

      v8 = [NSCompoundPredicate orPredicateWithSubpredicates:v2];
      [v35 setPredicate:v8];

      goto LABEL_14;
    }

    v29 = nplog_obj();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_32;
    }

    *buf = 136315138;
    v47 = "+[NSPCoreData fetchLatestEvents:vendors:]_block_invoke";
    v32 = "%s called with null predicates";
LABEL_39:
    _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, v32, buf, 0xCu);
    goto LABEL_32;
  }

LABEL_14:
  v34 = [NSSortDescriptor sortDescriptorWithKey:@"date" ascending:0];
  if (v34)
  {
    v9 = [NSArray arrayWithObject:?];
    [v35 setSortDescriptors:v9];

    [v35 setFetchLimit:*(a1 + 56)];
    v10 = *(a1 + 40);
    v41 = 0;
    v11 = [v10 executeFetchRequest:v35 error:&v41];
    oslog = v41;
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = *(*(*(a1 + 48) + 8) + 40) == 0;
    v15 = nplog_obj();
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v47 = oslog;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to fetch events %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v31 = [*(*(*(a1 + 48) + 8) + 40) count];
        *buf = 134217984;
        v47 = v31;
        _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Found %lu events", buf, 0xCu);
      }

      v17 = [*(*(*(a1 + 48) + 8) + 40) reverseObjectEnumerator];
      v18 = [v17 allObjects];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v37 objects:v52 count:16];
      if (v20)
      {
        v21 = *v38;
        do
        {
          v22 = 0;
          do
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v37 + 1) + 8 * v22);
            v24 = nplog_obj();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v25 = [v23 date];
              v26 = [v23 eventType];
              v27 = [v23 vendor];
              *buf = 138412802;
              v47 = v25;
              v48 = 1024;
              v49 = v26;
              v50 = 2112;
              v51 = v27;
              _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Event Date:%@ type:%u vendor:%@", buf, 0x1Cu);
            }

            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [v19 countByEnumeratingWithState:&v37 objects:v52 count:16];
        }

        while (v20);
      }

      v28 = *(*(a1 + 48) + 8);
      v16 = *(v28 + 40);
      *(v28 + 40) = v19;
    }
  }

  else
  {
    oslog = nplog_obj();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v47 = "+[NSPCoreData fetchLatestEvents:vendors:]_block_invoke";
      _os_log_fault_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_FAULT, "%s called with null sortDescriptor", buf, 0xCu);
    }
  }

  v29 = v34;
LABEL_32:
}

void sub_10007AD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007AD24(uint64_t a1)
{
  v2 = +[NSPTokenEvent fetchRequest];
  if (!v2)
  {
    v8 = nplog_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315138;
    v21 = "+[NSPCoreData fetchEvents:mostRecent:limit:]_block_invoke";
    v18 = "%s called with null fetchRequest";
    goto LABEL_20;
  }

  if (*(a1 + 32))
  {
    v3 = [NSPredicate predicateWithFormat:@"vendor == %@", *(a1 + 32)];
    [v2 setPredicate:v3];
  }

  if (*(a1 + 64) == 1)
  {
    v4 = [NSSortDescriptor sortDescriptorWithKey:@"date" ascending:0];
    if (v4)
    {
      v5 = [NSArray arrayWithObject:v4];
      [v2 setSortDescriptors:v5];

      goto LABEL_7;
    }

    v8 = nplog_obj();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    *buf = 136315138;
    v21 = "+[NSPCoreData fetchEvents:mostRecent:limit:]_block_invoke";
    v18 = "%s called with null sortDescriptor";
LABEL_20:
    _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, v18, buf, 0xCu);
    goto LABEL_15;
  }

LABEL_7:
  [v2 setFetchLimit:*(a1 + 56)];
  v6 = *(a1 + 40);
  v19 = 0;
  v7 = [v6 executeFetchRequest:v2 error:&v19];
  v8 = v19;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  v11 = *(*(*(a1 + 48) + 8) + 40) == 0;
  v12 = nplog_obj();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to fetch events %@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v17 = [*(*(*(a1 + 48) + 8) + 40) count];
    *buf = 134217984;
    v21 = v17;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Fetched %lu events", buf, 0xCu);
  }

  if (*(a1 + 64) == 1)
  {
    v14 = [*(*(*(a1 + 48) + 8) + 40) reverseObjectEnumerator];
    v15 = [v14 allObjects];

    v16 = *(*(a1 + 48) + 8);
    v13 = *(v16 + 40);
    *(v16 + 40) = v15;
LABEL_14:
  }

LABEL_15:
}

id sub_10007F730(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [NPUtilities copyUUIDsForSigningIdentifier:v2 executablePath:0];

  return v3;
}

id sub_10007F790(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  v14 = a4;
  v15 = a7;
  v16 = a3;
  objc_opt_self();
  v17 = objc_alloc_init(NSMutableArray);
  if (v14)
  {
    v18 = [NEPolicyCondition effectiveApplication:v14];
    [v17 addObject:v18];
  }

  if (a5)
  {
    v19 = [NEPolicyCondition schemeUsingPort:a5];
    [v17 addObject:v19];
  }

  if (a6 == 17 || a6 == 6)
  {
    v20 = [NEPolicyCondition ipProtocol:a6];
    [v17 addObject:v20];
  }

  v21 = +[NEPolicyCondition allInterfaces];
  [v17 addObject:v21];

  if (a8)
  {
    v22 = [NEPolicyCondition uid:getuid()];
    [v17 addObject:v22];
  }

  if (v15)
  {
    [v17 addObjectsFromArray:v15];
  }

  v23 = [[NEPolicy alloc] initWithOrder:a2 result:v16 conditions:v17];

  return v23;
}

id sub_10007F944(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  objc_opt_self();
  v13 = objc_alloc_init(NSMutableArray);
  v37 = [NEPolicyResult skipWithOrder:500];
  v14 = objc_alloc_init(NSMutableArray);
  if (a6)
  {
    v15 = [NEPolicyCondition clientFlags:a6];
    [v14 addObject:v15];
  }

  if (v10)
  {
    v16 = sub_10007F730(NSPPrivacyProxyPolicySerialization, v10);
  }

  else
  {
    if (![v11 count])
    {
      v29 = [v14 copy];
      v17 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 450, v37, 0, 0, a5, v29, 1);

      [v13 addObject:v17];
      goto LABEL_20;
    }

    v16 = v11;
  }

  v17 = v16;
  if ([v16 count])
  {
    v32 = v11;
    v33 = v10;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v31 = v17;
    obj = v17;
    v38 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v38)
    {
      v36 = *v40;
      v35 = a5;
      do
      {
        for (i = 0; i != v38; i = i + 1)
        {
          if (*v40 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v39 + 1) + 8 * i);
          v20 = [v14 copy];
          v21 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 450, v37, v19, 0, a5, v20, 1);

          [v13 addObject:v21];
          if (v12)
          {
            v22 = [v14 mutableCopy];
            v23 = [NEPolicyCondition accountIdentifier:v12];
            [v22 addObject:v23];

            [NEPolicyResult skipWithOrder:600];
            v24 = v14;
            v25 = v12;
            v27 = v26 = v13;
            a5 = v35;
            v28 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 400, v27, v19, 0, v35, v22, 1);

            v13 = v26;
            v12 = v25;
            v14 = v24;
            [v13 addObject:v28];
          }
        }

        v38 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v38);
    }

    v11 = v32;
    v10 = v33;
    v17 = v31;
  }

  else
  {

    v13 = 0;
  }

LABEL_20:

  return v13;
}

id sub_10007FCC0(uint64_t a1, void *a2, char a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  objc_opt_self();
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [NEPolicyResult skipWithOrder:500];
  if (v6)
  {
    v10 = sub_10007F730(NSPPrivacyProxyPolicySerialization, v6);
  }

  else
  {
    if (![v7 count])
    {
      v21 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 450, v9, 0, 80, 6, 0, 1);
      [v8 addObject:v21];
      v22 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 450, v9, 0, 443, 0, 0, 1);

      [v8 addObject:v22];
      goto LABEL_18;
    }

    v10 = v7;
  }

  v11 = v10;
  if ([v10 count])
  {
    v23 = v7;
    v24 = v6;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          if ((a3 & 1) == 0)
          {
            v18 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 450, v9, *(*(&v25 + 1) + 8 * i), 80, 6, 0, 1);
            [v8 addObject:v18];
          }

          v19 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 450, v9, v17, 443, 0, 0, 1);
          [v8 addObject:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    v7 = v23;
    v6 = v24;
  }

  else
  {

    v8 = 0;
  }

LABEL_18:

  return v8;
}

id sub_10007FF78(uint64_t a1, void *a2, void *a3, int a4)
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [NEPolicyResult skipWithOrder:500];
  v10 = objc_alloc_init(NSMutableArray);
  if (a4)
  {
    v11 = [NEPolicyCondition clientFlags:0x1000000];
    [v10 addObject:v11];
  }

  if (v6)
  {
    v12 = sub_10007F730(NSPPrivacyProxyPolicySerialization, v6);
  }

  else
  {
    if (![v7 count])
    {
      v13 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 450, v9, 0, 80, 6, v10, 1);
      [v8 addObject:v13];
      goto LABEL_18;
    }

    v12 = v7;
  }

  v13 = v12;
  if ([v12 count])
  {
    v21 = v6;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 450, v9, *(*(&v22 + 1) + 8 * i), 80, 6, v10, 1);
          [v8 addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    v6 = v21;
  }

  else
  {

    v8 = 0;
  }

LABEL_18:

  return v8;
}

void sub_1000801E0(uint64_t a1, void *a2, void *a3, int a4)
{
  v5 = a3;
  v6 = a2;
  objc_opt_self();
  v7 = +[NSPPrivacyProxyDNSAgent dnsAgentUUID];
  v8 = [NEPolicyRouteRule routeRuleWithAction:5 forType:3];
  [v8 setNetworkAgentUUID:v7];
  v9 = [NEPolicyRouteRule routeRuleWithAction:5 forType:2];
  [v9 setNetworkAgentUUID:v7];
  v10 = [NEPolicyRouteRule routeRuleWithAction:5 forType:4];
  [v10 setNetworkAgentUUID:v7];
  v30 = v8;
  v32[0] = v8;
  v32[1] = v9;
  v32[2] = v10;
  v29 = [NSArray arrayWithObjects:v32 count:3];
  v11 = [NEPolicyResult routeRules:?];
  v12 = objc_alloc_init(NSMutableArray);
  v13 = [NEPolicyCondition uid:getuid()];
  [v12 addObject:v13];

  v14 = v5;
  v15 = objc_alloc_init(NSMutableArray);
  v16 = [NEPolicyCondition uid:getuid()];
  [v15 addObject:v16];

  v17 = +[NEPolicyCondition allInterfaces];
  [v15 addObject:v17];

  if (v14)
  {
    v18 = [NEPolicyCondition effectiveApplication:v14];
    [v12 addObject:v18];

    v19 = [NEPolicyCondition effectiveApplication:v14];
    [v15 addObject:v19];
  }

  v31 = v14;
  if (a4)
  {
    v20 = [NEPolicyCondition clientFlags:0x1000000];
    [v12 addObject:v20];

    [NEPolicyCondition clientFlags:16785408];
  }

  else
  {
    +[NEPolicyCondition fallbackTraffic];
  }
  v21 = ;
  [v15 addObject:v21];

  v22 = [NEPolicy alloc];
  v23 = [v12 copy];
  v24 = [v22 initWithOrder:450 result:v11 conditions:v23];

  [v6 addObject:v24];
  v25 = [NEPolicy alloc];
  v26 = [v15 copy];
  v27 = [v25 initWithOrder:450 result:v11 conditions:v26];

  [v6 addObject:v27];
}

id sub_100080538(uint64_t a1, void *a2, void *a3, int a4)
{
  v6 = a2;
  v7 = a3;
  objc_opt_self();
  v8 = objc_alloc_init(NSMutableArray);
  v27 = v6;
  if (v6)
  {
    v9 = sub_10007F730(NSPPrivacyProxyPolicySerialization, v6);
    if ([v9 count])
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v34;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v34 != v13)
            {
              objc_enumerationMutation(v10);
            }

            sub_1000801E0(NSPPrivacyProxyPolicySerialization, v8, *(*(&v33 + 1) + 8 * i), a4);
          }

          v12 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v12);
      }
    }

    else
    {

      v8 = 0;
    }
  }

  else
  {
    sub_1000801E0(NSPPrivacyProxyPolicySerialization, v8, 0, a4);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v15 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v29 + 1) + 8 * j);
        if ([v8 count])
        {
          v20 = [NEPolicy alloc];
          v21 = [NEPolicyResult skipWithOrder:600];
          v22 = [NEPolicyCondition domain:v19];
          v37[0] = v22;
          v23 = +[NEPolicyCondition allInterfaces];
          v37[1] = v23;
          v24 = [NSArray arrayWithObjects:v37 count:2];
          v25 = [v20 initWithOrder:421 result:v21 conditions:v24];

          [v8 addObject:v25];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v16);
  }

  return v8;
}

id sub_10008081C(uint64_t a1, void *a2, int a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  objc_opt_self();
  v41 = objc_alloc_init(NSMutableArray);
  [NEPolicyResult skipWithOrder:500];
  v40 = v39 = v6;
  v37 = v7;
  if (v6 || [v7 count])
  {
    if (a3)
    {
      v8 = 589824;
    }

    else
    {
      v8 = 0x10000;
    }

    v9 = [NEPolicyCondition clientFlags:v8];
    if (v6)
    {
      v10 = sub_10007F730(NSPPrivacyProxyPolicySerialization, v6);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v46 objects:v59 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v47;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v47 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v46 + 1) + 8 * i);
            if (([v10 containsObject:v17] & 1) == 0)
            {
              v18 = nplog_obj();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v56 = v39;
                v57 = 2112;
                v58 = v17;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Adding %@ UUID missing from cache %@", buf, 0x16u);
              }

              if (!v14)
              {
                v14 = objc_alloc_init(NSMutableArray);
              }

              [v14 addObject:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v46 objects:v59 count:16];
        }

        while (v13);
      }

      else
      {
        v14 = 0;
      }

      if ([v14 count])
      {
        v19 = [v10 arrayByAddingObjectsFromArray:v14];

        v10 = v19;
      }
    }

    else
    {
      v10 = v7;
    }

    if ([v10 count])
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v20 = v10;
      v21 = [v20 countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v43;
        do
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v43 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v42 + 1) + 8 * j);
            v53 = v9;
            v26 = [NSArray arrayWithObjects:&v53 count:1];
            v27 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 470, v40, v25, 0, 0, v26, 1);

            [v41 addObject:v27];
          }

          v22 = [v20 countByEnumeratingWithState:&v42 objects:v54 count:16];
        }

        while (v22);
      }

      v10 = v20;
    }

    else
    {
      v20 = v41;
      v41 = 0;
    }
  }

  else
  {
    v9 = [NEPolicyCondition clientFlags:0x200000];
    v10 = [NEPolicyResult skipWithOrder:480];
    v52 = v9;
    v28 = [NSArray arrayWithObjects:&v52 count:1];
    v29 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 460, v10, 0, 0, 0, v28, 1);

    [v41 addObject:v29];
    v30 = [NEPolicyCondition accountIdentifier:@"com.apple.WebKit.InAppBrowser"];
    [v30 setNegative:1];
    v38 = [NEPolicyCondition clientFlags:0x10000];
    v51[0] = v30;
    v51[1] = v38;
    v31 = [NSArray arrayWithObjects:v51 count:2];
    v32 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 470, v40, 0, 0, 0, v31, 1);

    [v41 addObject:v32];
    v33 = [NEPolicyCondition accountIdentifier:@"com.apple.WebKit.InAppBrowser"];
    v34 = [NEPolicyCondition clientFlags:589824];
    v50[0] = v33;
    v50[1] = v34;
    v35 = [NSArray arrayWithObjects:v50 count:2];
    v20 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 470, v40, 0, 0, 0, v35, 1);

    [v41 addObject:v20];
  }

  return v41;
}

id sub_100080DB0(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v8 = a2;
  v9 = a3;
  objc_opt_self();
  v10 = objc_alloc_init(NSMutableArray);
  v11 = objc_alloc_init(NSMutableArray);
  if (v9)
  {
    v12 = [NEPolicyCondition accountIdentifier:v9];
    [v11 addObject:v12];
  }

  if (a4 && (sub_100054100() & 1) == 0)
  {
    v13 = +[NEPolicyCondition platformBinary];
    [v11 addObject:v13];
  }

  v14 = [NEPolicyResult skipWithOrder:500];
  if (v8)
  {
    v15 = sub_10007F730(NSPPrivacyProxyPolicySerialization, v8);
    if ([v15 count])
    {
      v25 = v9;
      v26 = v8;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v24 = v15;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 450, v14, *(*(&v27 + 1) + 8 * i), 0, 0, v11, a5);
            [v10 addObject:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v18);
      }

      v9 = v25;
      v8 = v26;
      v15 = v24;
    }

    else
    {

      v10 = 0;
    }
  }

  else
  {
    v22 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 450, v14, 0, 0, 0, v11, a5);
    [v10 addObject:v22];
  }

  return v10;
}

void sub_100081040(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v11 = objc_opt_self();
  p_cache = &OBJC_METACLASS___NSPProxyAgentStats.cache;
  if (v8)
  {
    v13 = sub_10007F730(NSPPrivacyProxyPolicySerialization, v8);
    if (!v13)
    {
      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v40 = v11;
        v41 = 2112;
        v42 = v8;
LABEL_24:
        v15 = v14;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ failed to get UUIDs for %@", buf, 0x16u);
        goto LABEL_22;
      }

LABEL_21:
      v15 = v14;
      goto LABEL_22;
    }
  }

  else
  {
    if (!v9)
    {
      v29 = 0;
      v30 = 0;
      v13 = 0;
      goto LABEL_9;
    }

    v13 = [NEProcessInfo copyUUIDsForExecutable:v9];
    if (!v13)
    {
      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v40 = v11;
        v41 = 2112;
        v42 = v9;
        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  v29 = v9;
  v30 = v8;
LABEL_9:
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = v13;
  v32 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v32)
  {
    v16 = *v34;
    v17 = &AnalyticsSendEventLazy_ptr;
    v31 = a4;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        v20 = (p_cache + 168);
        v21 = [v17[510] skipWithOrder:{600, v29, v30}];
        if (a4)
        {
          +[NEPolicyCondition platformBinary];
          v22 = v15;
          v24 = v23 = v10;
          v37 = v24;
          [NSArray arrayWithObjects:&v37 count:1];
          v25 = v17;
          v27 = v26 = v16;
          v28 = sub_10007F790(v20, 400, v21, v19, 0, 0, v27, 0);

          v16 = v26;
          v17 = v25;

          v10 = v23;
          v15 = v22;
          a4 = v31;
          p_cache = (&OBJC_METACLASS___NSPProxyAgentStats + 16);
        }

        else
        {
          v28 = sub_10007F790((p_cache + 168), 400, v21, v19, 0, 0, 0, 0);
        }

        [v10 addObject:v28];
      }

      v32 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v32);
  }

  v9 = v29;
  v8 = v30;
LABEL_22:
}

id sub_100081370(uint64_t a1, unsigned int a2, void *a3, int a4, void *a5, void *a6, void *a7, void *a8)
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v229 = objc_opt_self();
  v17 = objc_alloc_init(NSMutableArray);
  v18 = objc_alloc_init(NSMutableArray);
  if (v13)
  {
    v19 = [NSURL URLWithString:v13];
    v20 = [v19 host];
    if (v20)
    {
      [v18 addObject:v20];
    }
  }

  if (v14)
  {
    v21 = [NSURL URLWithString:v14];
    v22 = [v21 host];
    if (v22)
    {
      [v18 addObject:v22];
    }
  }

  v23 = a2;
  if ((a2 & 0x80) != 0)
  {
    v24 = sub_100080538(NSPPrivacyProxyPolicySerialization, 0, v18, 0);
    if (!v24)
    {
      v25 = nplog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v229;
        v26 = "%@ failed to create ANY DNS policies";
        goto LABEL_176;
      }

LABEL_177:

      goto LABEL_178;
    }
  }

  else if ((a2 & 2) != 0)
  {
    v24 = sub_100080538(NSPPrivacyProxyPolicySerialization, @"com.apple.mobilesafari", v18, 0);
    if (!v24)
    {
      v25 = nplog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v229;
        v26 = "%@ failed to create Safari DNS policies";
        goto LABEL_176;
      }

      goto LABEL_177;
    }
  }

  else
  {
    if ((a2 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    v24 = sub_100080538(NSPPrivacyProxyPolicySerialization, @"com.apple.mobilesafari", v18, 1);
    if (!v24)
    {
      v25 = nplog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v229;
        v26 = "%@ failed to create Safari Private DNS policies";
LABEL_176:
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v26, buf, 0xCu);
        goto LABEL_177;
      }

      goto LABEL_177;
    }
  }

  v27 = v24;
  [v17 addObjectsFromArray:v24];

LABEL_20:
  if ((a2 & 0x100) != 0)
  {
    v28 = sub_10008081C(NSPPrivacyProxyPolicySerialization, 0, 0, 0);
    if (!v28)
    {
      v25 = nplog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v229;
        v26 = "%@ failed to create ANY KNOWN TRACKER policies";
        goto LABEL_176;
      }

      goto LABEL_177;
    }
  }

  else
  {
    if ((a2 & 4) == 0)
    {
      goto LABEL_27;
    }

    v28 = sub_10008081C(NSPPrivacyProxyPolicySerialization, @"com.apple.mobilesafari", 1, 0);
    if (!v28)
    {
      v25 = nplog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v229;
        v26 = "%@ failed to create Safari KNOWN TRACKER policies";
        goto LABEL_176;
      }

      goto LABEL_177;
    }
  }

  v29 = v28;
  [v17 addObjectsFromArray:v28];

LABEL_27:
  if ((a2 & 0x40) != 0)
  {
    v33 = sub_10007FF78(NSPPrivacyProxyPolicySerialization, 0, 0, 0);
    if (!v33)
    {
      v25 = nplog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v229;
        v26 = "%@ failed to create ANY UNENCRYPTED policies";
        goto LABEL_176;
      }

      goto LABEL_177;
    }

    v34 = v33;
    v30 = 1;
    LOBYTE(v222) = 1;
  }

  else if (a2)
  {
    v35 = sub_10007FF78(NSPPrivacyProxyPolicySerialization, @"com.apple.mobilesafari", 0, 0);
    if (!v35)
    {
      v25 = nplog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v229;
        v26 = "%@ failed to create Safari UNENCRYPTED policies";
        goto LABEL_176;
      }

      goto LABEL_177;
    }

    v34 = v35;
    v222 = (a2 >> 8) & 1;
    v30 = 1;
  }

  else
  {
    if ((a2 & 0x40000) == 0)
    {
      v222 = (a2 >> 8) & 1;
      v30 = 0;
      if ((a2 & 0x10) != 0)
      {
        goto LABEL_31;
      }

LABEL_48:
      if ((a2 & 0x20) != 0)
      {
        v37 = sub_10007FCC0(NSPPrivacyProxyPolicySerialization, @"com.apple.mobilesafari", v30, 0);
        if (!v37)
        {
          v25 = nplog_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v229;
            v26 = "%@ failed to create Safari HTTP policies";
            goto LABEL_176;
          }

          goto LABEL_177;
        }
      }

      else
      {
        if ((a2 & 0x100000) == 0)
        {
          if ((a2 & 0x200000) == 0)
          {
            goto LABEL_62;
          }

          v31 = sub_10007F944(NSPPrivacyProxyPolicySerialization, @"com.apple.mobilesafari", 0, @"com.apple.safari.peertopeer", 0, 50331648);
          if (!v31)
          {
            v25 = nplog_obj();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v229;
              v26 = "%@ failed to create Safari policies";
              goto LABEL_176;
            }

            goto LABEL_177;
          }

          goto LABEL_32;
        }

        v37 = sub_10007F944(NSPPrivacyProxyPolicySerialization, @"com.apple.mobilesafari", 0, @"com.apple.safari.peertopeer", 0, 0x1000000);
        if (!v37)
        {
          v25 = nplog_obj();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v229;
            v26 = "%@ failed to create Safari Private All policies";
            goto LABEL_176;
          }

          goto LABEL_177;
        }
      }

      v32 = v37;
      goto LABEL_61;
    }

    v36 = sub_10007FF78(NSPPrivacyProxyPolicySerialization, @"com.apple.mobilesafari", 0, 1);
    if (!v36)
    {
      v25 = nplog_obj();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v229;
        v26 = "%@ failed to create Safari PRIVATE UNENCRYPTED policies";
        goto LABEL_176;
      }

      goto LABEL_177;
    }

    v34 = v36;
    v222 = (a2 >> 8) & 1;
    v30 = 0;
  }

  [v17 addObjectsFromArray:v34];

  if ((a2 & 0x10) == 0)
  {
    goto LABEL_48;
  }

LABEL_31:
  v31 = sub_10007F944(NSPPrivacyProxyPolicySerialization, @"com.apple.mobilesafari", 0, @"com.apple.safari.peertopeer", 0, 0);
  if (!v31)
  {
    v25 = nplog_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v229;
      v26 = "%@ failed to create Safari All policies";
      goto LABEL_176;
    }

    goto LABEL_177;
  }

LABEL_32:
  v32 = v31;
  LOBYTE(v222) = 1;
LABEL_61:
  [v17 addObjectsFromArray:v32];

LABEL_62:
  if ((a2 & 0x20000) == 0)
  {
    if ((a2 & 0x400) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_79;
  }

  v38 = sub_10007F944(NSPPrivacyProxyPolicySerialization, 0, 0, 0, 6, 0);
  if (!v38)
  {
    v25 = nplog_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v229;
      v26 = "%@ failed to create App TCP policies";
      goto LABEL_176;
    }

    goto LABEL_177;
  }

  v39 = v38;
  [v17 addObjectsFromArray:v38];
  v40 = sub_10007F944(NSPPrivacyProxyPolicySerialization, 0, 0, 0, 17, 0);

  if (!v40)
  {
    v25 = nplog_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v229;
      v26 = "%@ failed to create App UDP policies";
      goto LABEL_176;
    }

    goto LABEL_177;
  }

  v217 = v18;
  v219 = v15;
  v220 = v16;
  v41 = v17;
  [v17 addObjectsFromArray:v40];
  v42 = +[NEPolicyResult drop];
  v43 = [NEPolicyCondition domain:@"use-application-dns.net"];
  v255 = v43;
  v44 = [NSArray arrayWithObjects:&v255 count:1];
  v45 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 410, v42, 0, 0, 0, v44, 0);

  if (v45)
  {
    [v41 addObject:v45];

    LOBYTE(v222) = 1;
    v15 = v219;
    v16 = v220;
    v17 = v41;
    v18 = v217;
    v23 = a2;
    if ((a2 & 0x400) == 0)
    {
LABEL_64:
      if ((v23 & 0x10000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_82;
    }

LABEL_79:
    v46 = sub_100080DB0(NSPPrivacyProxyPolicySerialization, @"com.apple.news", @"com.apple.news.urlresolution", 0, 1);
    if (v46)
    {
      [v17 addObjectsFromArray:v46];
    }

    if ((v23 & 0x10000) == 0)
    {
LABEL_65:
      if ((v23 & 0x800) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_85;
    }

LABEL_82:
    v47 = sub_100080DB0(NSPPrivacyProxyPolicySerialization, 0, @"com.apple.news.embedded-content", 0, 0);
    if (v47)
    {
      [v17 addObjectsFromArray:v47];
    }

    if ((v23 & 0x800) == 0)
    {
LABEL_66:
      if ((v23 & 0x1000) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_88;
    }

LABEL_85:
    v48 = sub_100080DB0(NSPPrivacyProxyPolicySerialization, 0, @"com.apple.exposurenotification.sensitive", 1, 1);
    if (v48)
    {
      [v17 addObjectsFromArray:v48];
    }

    if ((v23 & 0x1000) == 0)
    {
LABEL_67:
      if ((v23 & 0x4000) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_91;
    }

LABEL_88:
    v49 = sub_100080DB0(NSPPrivacyProxyPolicySerialization, 0, @"com.apple.trustd.TrustURLSession", 1, 0);
    if (v49)
    {
      [v17 addObjectsFromArray:v49];
    }

    if ((v23 & 0x4000) == 0)
    {
LABEL_68:
      if ((v23 & 0x8000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_94;
    }

LABEL_91:
    v50 = sub_100080DB0(NSPPrivacyProxyPolicySerialization, 0, @"com.apple.dprivacyd.upload", 1, 0);
    if (v50)
    {
      [v17 addObjectsFromArray:v50];
    }

    if ((v23 & 0x8000) == 0)
    {
LABEL_69:
      if ((v23 & 0x400000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_97;
    }

LABEL_94:
    v51 = sub_100080DB0(NSPPrivacyProxyPolicySerialization, 0, @"com.apple.CommCenter.BrandedCalling", 1, 0);
    if (v51)
    {
      [v17 addObjectsFromArray:v51];
    }

    if ((v23 & 0x400000) == 0)
    {
LABEL_70:
      if ((v23 & 0x800000) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_100;
    }

LABEL_97:
    v52 = sub_100080DB0(NSPPrivacyProxyPolicySerialization, 0, @"com.apple.ap.promotedcontentd.proxied-requests", 1, 0);
    if (v52)
    {
      [v17 addObjectsFromArray:v52];
    }

    if ((v23 & 0x800000) == 0)
    {
LABEL_71:
      if ((v23 & 0x1000000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_103;
    }

LABEL_100:
    v53 = sub_100080DB0(NSPPrivacyProxyPolicySerialization, 0, @"com.apple.appstored.skadnetwork.crowdanonymity", 1, 0);
    if (v53)
    {
      [v17 addObjectsFromArray:v53];
    }

    if ((v23 & 0x1000000) == 0)
    {
LABEL_72:
      if ((v23 & 0x2000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_106;
    }

LABEL_103:
    v54 = sub_100080DB0(NSPPrivacyProxyPolicySerialization, 0, @"com.apple.Passwords.PRIconFetching", 1, 0);
    if (v54)
    {
      [v17 addObjectsFromArray:v54];
    }

    if ((v23 & 0x2000000) == 0)
    {
LABEL_73:
      if ((v23 & 0x4000000) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_109;
    }

LABEL_106:
    v55 = sub_100080DB0(NSPPrivacyProxyPolicySerialization, 0, @"com.apple.mis.LaunchWarningDetails", 1, 0);
    if (v55)
    {
      [v17 addObjectsFromArray:v55];
    }

    if ((v23 & 0x4000000) == 0)
    {
LABEL_112:
      if (![v17 count])
      {
        goto LABEL_170;
      }

      v225 = v17;
      v221 = v16;
      v214 = v14;
      v215 = v13;
      v216 = v12;
      v218 = v18;
      v57 = v18;
      objc_opt_self();
      v234 = objc_alloc_init(NSMutableArray);
      v256 = 0u;
      v257 = 0u;
      v258 = 0u;
      v259 = 0u;
      obj = v57;
      v58 = [obj countByEnumeratingWithState:&v256 objects:buf count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v257;
        do
        {
          for (i = 0; i != v59; i = i + 1)
          {
            if (*v257 != v60)
            {
              objc_enumerationMutation(obj);
            }

            v62 = *(*(&v256 + 1) + 8 * i);
            v63 = [NEPolicy alloc];
            v64 = +[NSPPrivacyProxyBootstrapDNSAgent dnsAgentUUID];
            v65 = [NEPolicyResult netAgentUUID:v64];
            v66 = [NEPolicyCondition domain:v62];
            *&v261 = v66;
            v67 = +[NEPolicyCondition allInterfaces];
            *(&v261 + 1) = v67;
            v68 = [NSArray arrayWithObjects:&v261 count:2];
            v69 = [v63 initWithOrder:420 result:v65 conditions:v68];

            [v234 addObject:v69];
          }

          v59 = [obj countByEnumeratingWithState:&v256 objects:buf count:16];
        }

        while (v59);
      }

      v70 = v225;
      [v225 addObjectsFromArray:v234];
      v71 = [NEPolicyResult skipWithOrder:600];
      v72 = +[NEPolicyCondition localNetworks];
      v254[0] = v72;
      v73 = +[NEPolicyCondition allInterfaces];
      v254[1] = v73;
      v74 = [NSArray arrayWithObjects:v254 count:2];
      v75 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 410, v71, 0, 0, 0, v74, 1);

      v213 = v75;
      [v225 addObject:v75];
      v76 = [NEPolicyResult skipWithOrder:600];
      v77 = [NEPolicyCondition domain:@"local"];
      v253[0] = v77;
      v78 = +[NEPolicyCondition flowRemoteAddressEmpty];
      v253[1] = v78;
      v79 = +[NEPolicyCondition allInterfaces];
      v253[2] = v79;
      v80 = [NSArray arrayWithObjects:v253 count:3];
      v81 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 410, v76, 0, 0, 0, v80, 1);

      v82 = NEPolicySession_ptr;
      v212 = v81;
      [v225 addObject:v81];
      v83 = [NEPolicy alloc];
      v84 = [NEPolicyResult skipWithOrder:600];
      v85 = +[NEPolicyCondition allInterfaces];
      v252[0] = v85;
      v86 = [NEPolicyCondition requiredAgentDomain:@"Cellular" agentType:&stru_100110E60];
      v252[1] = v86;
      v87 = [NSArray arrayWithObjects:v252 count:2];
      v88 = [v83 initWithOrder:411 result:v84 conditions:v87];

      v211 = v88;
      [v225 addObject:v88];
      v89 = [NEPolicy alloc];
      v90 = [NEPolicyResult skipWithOrder:600];
      v91 = +[NEPolicyCondition allInterfaces];
      v251 = v91;
      v92 = [NSArray arrayWithObjects:&v251 count:1];
      v93 = [v89 initWithOrder:490 result:v90 conditions:v92];

      v210 = v93;
      [v225 addObject:v93];
      v94 = +[NSPPrivacyProxyAgentManager multiHopProxyAgentUUID];
      v95 = [NEPolicy alloc];
      v96 = [NEPolicyResult netAgentUUID:v94];
      v97 = +[NEPolicyCondition allInterfaces];
      v250 = v97;
      v98 = [NSArray arrayWithObjects:&v250 count:1];
      v99 = [v95 initWithOrder:550 result:v96 conditions:v98];

      v209 = v99;
      [v225 addObject:v99];
      v100 = [NEPolicyRouteRule routeRuleWithAction:6 forType:0];
      obja = v94;
      [v100 setNetworkAgentUUID:v94];
      v208 = v100;
      v249[0] = v100;
      v101 = [NEPolicyRouteRule routeRuleWithAction:1 forType:2];
      v249[1] = v101;
      v102 = [NEPolicyRouteRule routeRuleWithAction:1 forType:3];
      v249[2] = v102;
      v103 = [NEPolicyRouteRule routeRuleWithAction:1 forType:6];
      v249[3] = v103;
      v104 = [NEPolicyRouteRule routeRuleWithAction:1 forType:4];
      v249[4] = v104;
      v105 = [NSArray arrayWithObjects:v249 count:5];

      v106 = [NEPolicy alloc];
      v207 = v105;
      v107 = [NEPolicyResult routeRules:v105];
      v108 = +[NEPolicyCondition allInterfaces];
      v248 = v108;
      v109 = [NSArray arrayWithObjects:&v248 count:1];
      v110 = [v106 initWithOrder:551 result:v107 conditions:v109];

      v206 = v110;
      [v225 addObject:v110];
      v12 = v216;
      v111 = v222 ^ 1;
      if (!v216)
      {
        v111 = 1;
      }

      if ((v111 & 1) == 0)
      {
        v112 = +[NEPolicyCondition allInterfaces];
        v247 = v112;
        v223 = [NSArray arrayWithObjects:&v247 count:1];

        v113 = [NEPolicyRouteRule routeRuleWithAction:7 forNetworkAgent:obja];
        v114 = [v216 controlUnit];
        v115 = [v114 unsignedIntValue];
        if (a4)
        {

          [v113 setControlUnit:(1 << (v115 - 1)) | 0x80000000];
          if ((a2 & 0x20000) != 0)
          {
            v116 = [[NSMutableArray alloc] initWithArray:v223];
            v117 = [NEPolicyCondition ipProtocol:17];
            [v116 addObject:v117];

            v118 = [NEPolicyCondition schemeUsingPort:53];
            [v116 addObject:v118];

            v119 = [NEPolicy alloc];
            v246 = v113;
            v120 = [NSArray arrayWithObjects:&v246 count:1];
            v121 = [NEPolicyResult routeRules:v120];
            v122 = [v119 initWithOrder:530 result:v121 conditions:v116];

            [v225 addObject:v122];
            v123 = [NEPolicy alloc];
            v124 = [NEPolicyResult skipWithOrder:535];
            v125 = [v123 initWithOrder:531 result:v124 conditions:v116];

            [v225 addObject:v125];
          }

          v126 = [NEPolicy alloc];
          v245 = v113;
          v127 = [NSArray arrayWithObjects:&v245 count:1];
          v128 = [NEPolicyResult routeRules:v127];
          v129 = [v126 initWithOrder:532 result:v128 conditions:v223];

          [v225 addObject:v129];
          v130 = obja;
          v131 = [NEPolicyRouteRule routeRuleWithAction:7 forNetworkAgent:obja];
          [v131 setControlUnit:0xFFFFFFFLL];
          v132 = [NEPolicy alloc];
          v244 = v131;
          v133 = [NSArray arrayWithObjects:&v244 count:1];
          v134 = [NEPolicyResult routeRules:v133];
          v135 = [v132 initWithOrder:533 result:v134 conditions:v223];

          v82 = NEPolicySession_ptr;
          [v225 addObject:v135];
        }

        else
        {
          [v113 setControlUnit:v115];

          v136 = [NEPolicy alloc];
          v243 = v113;
          v137 = [NSArray arrayWithObjects:&v243 count:1];
          v138 = [NEPolicyResult routeRules:v137];
          v129 = [v136 initWithOrder:530 result:v138 conditions:v223];

          [v225 addObject:v129];
          v130 = obja;
        }

        v227 = [NEPolicyRouteRule routeRuleWithAction:6 forNetworkAgent:v130];
        [v227 setNetworkAgentUUID:v130];
        v139 = [NEPolicy alloc];
        v242 = v227;
        v140 = [v82[70] arrayWithObjects:&v242 count:1];
        v141 = [NEPolicyResult routeRules:v140];
        v204 = [v139 initWithOrder:534 result:v141 conditions:v223];

        [v225 addObject:v204];
        v202 = +[NEPolicyCondition allowsUnsafeSocketAccess];
        [v202 setNegative:1];
        v142 = [NEPolicy alloc];
        v143 = [NEPolicyResult skipWithOrder:540];
        v144 = +[NEPolicyCondition allInterfaces];
        v241[0] = v144;
        v145 = +[NEPolicyCondition usesModernNetworkAPI];
        v241[1] = v145;
        v241[2] = v202;
        v146 = [NSArray arrayWithObjects:v241 count:3];
        v147 = [v142 initWithOrder:520 result:v143 conditions:v146];

        [v225 addObject:v147];
        v148 = [NEPolicy alloc];
        v149 = [NEPolicyResult skipWithOrder:540];
        v150 = +[NEPolicyCondition allInterfaces];
        v240[0] = v150;
        v151 = [NEPolicyCondition accountIdentifier:@"com.apple.networkserviceproxy.flowdivert"];
        v240[1] = v151;
        v152 = [NSArray arrayWithObjects:v240 count:2];
        v153 = [v148 initWithOrder:520 result:v149 conditions:v152];

        [v225 addObject:v153];
        v70 = v225;
      }

      v154 = [NPUtilities machoUUIDFromPID:getpid()];
      v228 = v154;
      if (v154)
      {
        v155 = v154;
        v156 = nplog_obj();
        if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          *&buf[4] = v229;
          *&buf[12] = 2112;
          *&buf[14] = v155;
          _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_INFO, "%@ adding self removal policy using uuid: %@", buf, 0x16u);
        }

        v157 = [NEPolicy alloc];
        v158 = [NEPolicyResult skipWithOrder:600];
        v159 = +[NEPolicyCondition allInterfaces];
        v239[0] = v159;
        v160 = [NEPolicyCondition effectiveApplication:v155];
        v239[1] = v160;
        v161 = +[NEPolicyCondition platformBinary];
        v239[2] = v161;
        v162 = [NSArray arrayWithObjects:v239 count:3];
        v163 = [v157 initWithOrder:400 result:v158 conditions:v162];

        if (!v163)
        {
          v167 = nplog_obj();
          if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v229;
            _os_log_error_impl(&_mh_execute_header, v167, OS_LOG_TYPE_ERROR, "%@ failed to create self removal policy", buf, 0xCu);
          }

          v198 = 0;
LABEL_169:
          v16 = v221;

          v14 = v214;
          v13 = v215;
          v17 = v225;
          v18 = v218;
          if (!v198)
          {
LABEL_178:
            v199 = 0;
            goto LABEL_179;
          }

LABEL_170:
          v199 = v17;
          goto LABEL_179;
        }

        [v70 addObject:v163];
      }

      v164 = v15;
      v165 = v221;
      v166 = objc_opt_self();
      if ([v164 count] || objc_msgSend(v165, "count"))
      {
        v167 = objc_alloc_init(NSMutableArray);
        v261 = 0u;
        v262 = 0u;
        v263 = 0u;
        v264 = 0u;
        v168 = v164;
        v169 = [v168 countByEnumeratingWithState:&v261 objects:buf count:16];
        if (v169)
        {
          v170 = v169;
          v171 = *v262;
          do
          {
            for (j = 0; j != v170; j = j + 1)
            {
              if (*v262 != v171)
              {
                objc_enumerationMutation(v168);
              }

              sub_100081040(v166, *(*(&v261 + 1) + 8 * j), 0, 0, v167);
            }

            v170 = [v168 countByEnumeratingWithState:&v261 objects:buf count:16];
          }

          while (v170);
        }

        v237 = 0u;
        v238 = 0u;
        v235 = 0u;
        v236 = 0u;
        v173 = v165;
        v174 = [v173 countByEnumeratingWithState:&v235 objects:&v256 count:16];
        if (v174)
        {
          v175 = v174;
          v176 = *v236;
          do
          {
            for (k = 0; k != v175; k = k + 1)
            {
              if (*v236 != v176)
              {
                objc_enumerationMutation(v173);
              }

              sub_100081040(v166, 0, *(*(&v235 + 1) + 8 * k), 0, v167);
            }

            v175 = [v173 countByEnumeratingWithState:&v235 objects:&v256 count:16];
          }

          while (v175);
        }
      }

      else
      {
        v167 = 0;
      }

      if (v167)
      {
        [v225 addObjectsFromArray:v167];
      }

      v178 = objc_opt_self();
      v179 = objc_alloc_init(NSMutableArray);
      sub_100081040(v178, @"com.apple.WebSheet", 0, 1, v179);
      v180 = @"com.apple.captive.websheet";
      v181 = v179;
      objc_opt_self();
      v182 = objc_alloc_init(NSMutableArray);
      v183 = [NEPolicyCondition accountIdentifier:@"com.apple.captive.websheet"];
      [v182 addObject:v183];

      v184 = +[NEPolicyCondition platformBinary];
      [v182 addObject:v184];

      v185 = [NEPolicyResult skipWithOrder:600];
      v186 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 400, v185, 0, 0, 0, v182, 0);

      [v181 addObject:v186];
      sub_100081040(v178, 0, @"/usr/libexec/captiveagent", 1, v181);
      sub_100081040(v178, 0, @"/usr/libexec/configd", 1, v181);
      if (v181)
      {
        [v225 addObjectsFromArray:v181];
      }

      if ((a2 & 0x20000) != 0)
      {
        objc_opt_self();
        v231 = objc_alloc_init(NSMutableArray);
        v205 = +[NEPolicyCondition flowLocalAddressEmpty];
        [v205 setNegative:1];
        v203 = [NEPolicyCondition clientFlags:0x800000];
        v187 = [NWAddressEndpoint endpointWithHostname:@"0.0.0.0" port:@"1024"];
        v188 = [NWAddressEndpoint endpointWithHostname:@"255.255.255.255" port:@"65535"];
        v224 = [NEPolicyCondition remoteAddressStart:v187 end:v188];

        v189 = [NWAddressEndpoint endpointWithHostname:@"::" port:@"1024"];
        v190 = [NWAddressEndpoint endpointWithHostname:@"FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF:FFFF" port:@"65535"];
        v191 = [NEPolicyCondition remoteAddressStart:v189 end:v190];

        v192 = [NEPolicyResult skipWithOrder:600];
        *buf = v205;
        *&buf[8] = v224;
        *&buf[16] = v203;
        v193 = [NSArray arrayWithObjects:buf count:3];
        v194 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 410, v192, 0, 0, 17, v193, 0);
        [v231 addObject:v194];

        v195 = [NEPolicyResult skipWithOrder:600];
        *&v256 = v205;
        *(&v256 + 1) = v191;
        *&v257 = v203;
        v196 = [NSArray arrayWithObjects:&v256 count:3];
        v197 = sub_10007F790(NSPPrivacyProxyPolicySerialization, 410, v195, 0, 0, 17, v196, 0);
        [v231 addObject:v197];

        if (v231)
        {
          [v225 addObjectsFromArray:v231];
        }

        sub_100081040(v229, @"com.apple.softwareupdated", 0, 1, v225);
        sub_100081040(v229, @"com.apple.mobileassetd", 0, 1, v225);
        sub_100081040(v229, @"com.apple.apsd", 0, 1, v225);

        v12 = v216;
      }

      v198 = 1;
      goto LABEL_169;
    }

LABEL_109:
    v56 = sub_100080DB0(NSPPrivacyProxyPolicySerialization, 0, @"com.apple.podcasts.link-presentation", 1, 0);
    if (v56)
    {
      [v17 addObjectsFromArray:v56];
    }

    goto LABEL_112;
  }

  v200 = nplog_obj();
  v15 = v219;
  v16 = v220;
  if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v229;
    _os_log_error_impl(&_mh_execute_header, v200, OS_LOG_TYPE_ERROR, "%@ failed to create App policy", buf, 0xCu);
  }

  v199 = 0;
  v17 = v41;
  v18 = v217;
LABEL_179:

  return v199;
}