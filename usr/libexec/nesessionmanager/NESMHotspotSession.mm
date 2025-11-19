@interface NESMHotspotSession
- (void)dealloc;
- (void)didProviderExit:(id)a3;
- (void)handleStartMessage:(id)a3;
- (void)install;
- (void)installPended;
- (void)plugin:(id)a3 didInitializeWithUUIDs:(id)a4;
- (void)plugin:(id)a3 didReceiveProviderError:(id)a4;
- (void)plugin:(id)a3 didStartWithPID:(int)a4 error:(id)a5;
- (void)pluginDidAcknowledgeSleep:(id)a3;
- (void)pluginDidDispose:(id)a3;
- (void)uninstall;
@end

@implementation NESMHotspotSession

- (void)didProviderExit:(id)a3
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: didProviderExit: disposing ", &v18, 0xCu);
  }

  [(NESMSession *)self setStatus:5];
  if (self)
  {
    sessionType = self->_sessionType;
    if (sessionType == 12)
    {
      v10 = ne_log_obj();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "disposing hotspot authentication provider", &v18, 2u);
      }

      Property = objc_getProperty(self, v11, 368, 1);
      sub_1000198A8(Property, v13);
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [(NESMSession *)self configuration];
        v16 = [v15 hotspot];
        v17 = [v16 authenticationProviderBundleIdentifier];
        v18 = 138412546;
        v19 = self;
        v20 = 2112;
        v21 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@ uninstalling policies for [%@]", &v18, 0x16u);
      }

      sub_10005BDFC(&self->super.super.isa);
    }

    else if (sessionType == 11)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "disposing hotspot evaluation provider", &v18, 2u);
      }

      v8 = objc_getProperty(self, v7, 360, 1);
      sub_1000198A8(v8, v9);
    }
  }
}

- (void)plugin:(id)a3 didReceiveProviderError:(id)a4
{
  v5 = a4;
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412546;
    v27 = self;
    v28 = 2112;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: didReceiveProviderError: error: %@", &v26, 0x16u);
  }

  if (self->_active)
  {
    if (v5)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v26 = 138412546;
        v27 = self;
        v28 = 2112;
        v29 = v5;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ hotspot provider failed to stop, error: %@", &v26, 0x16u);
      }
    }

    sessionType = self->_sessionType;
    if (sessionType == 12)
    {
      v15 = ne_log_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "disposing hotspot authentication provider", &v26, 2u);
      }

      v14 = 368;
      goto LABEL_24;
    }

    if (sessionType == 11)
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v26) = 0;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "disposing hotspot evaluation provider", &v26, 2u);
        goto LABEL_20;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v10 = ne_log_obj();
    v11 = v10;
    if (v5)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v26 = 138412546;
        v27 = self;
        v28 = 2112;
        v29 = v5;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ hotspot provider failed to start, error: %@", &v26, 0x16u);
      }

      [(NESMSession *)self setStatus:5];
      v12 = self->_sessionType;
      if (v12 == 12)
      {
        v18 = ne_log_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v26) = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "disposing hotspot authentication provider", &v26, 2u);
        }

        Property = objc_getProperty(self, v19, 368, 1);
        sub_1000198A8(Property, v21);
        v22 = ne_log_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [(NESMSession *)self configuration];
          v24 = [v23 hotspot];
          v25 = [v24 authenticationProviderBundleIdentifier];
          v26 = 138412546;
          v27 = self;
          v28 = 2112;
          v29 = v25;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%@ uninstalling policies for [%@]", &v26, 0x16u);
        }

        sub_10005BDFC(&self->super.super.isa);
      }

      else if (v12 == 11)
      {
        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v26) = 0;
          goto LABEL_19;
        }

LABEL_20:

        v14 = 360;
LABEL_24:
        v16 = objc_getProperty(self, v13, v14, 1);
        sub_1000198A8(v16, v17);
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412290;
        v27 = self;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ hotspot provider started, session is active now", &v26, 0xCu);
      }

      self->_active = 1;
      [(NESMSession *)self setStatus:3];
    }
  }
}

- (void)pluginDidDispose:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: plugin %@ disposed, requesting uninstall ...", &v7, 0x16u);
  }

  v6 = [(NESMSession *)self server];
  [v6 requestUninstallForSession:self];
}

- (void)pluginDidAcknowledgeSleep:(id)a3
{
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%@ pluginDidAcknowledgeSleep", &v5, 0xCu);
  }
}

- (void)plugin:(id)a3 didStartWithPID:(int)a4 error:(id)a5
{
  v85 = a3;
  v86 = a5;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v145 = self;
    v146 = 1024;
    LODWORD(v147) = a4;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@ didStartWithPID, pid: [%d]", buf, 0x12u);
  }

  if (a4)
  {
    v9 = v86 == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;
  v11 = ne_log_obj();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v145 = self;
      v146 = 2112;
      v147 = v86;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@: failed to start with error: %@", buf, 0x16u);
    }

    [(NESMSession *)self setStatus:1];
    goto LABEL_104;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v145 = self;
    v146 = 2112;
    v147 = v85;
    v148 = 1024;
    LODWORD(v149) = a4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: plugin %@ started with pid %d", buf, 0x1Cu);
  }

  if (self)
  {
    sessionType = self->_sessionType;
    if (sessionType != 11)
    {
LABEL_19:
      if (sessionType != 12 || objc_getProperty(self, v13, 368, 1) != v85)
      {
        goto LABEL_104;
      }

      Property = objc_getProperty(self, v15, 368, 1);
      if (Property)
      {
        v17 = [Property remotePluginObject];
        [v17 startAuthenticationProvider];
      }

      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [(NESMSession *)self configuration];
        v20 = [v19 hotspot];
        v21 = [v20 authenticationProviderBundleIdentifier];
        *buf = 138412546;
        v145 = self;
        v146 = 2112;
        v147 = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%@ installing policies for [%@]", buf, 0x16u);
      }

      v22 = objc_alloc_init(CWFInterface);
      [v22 activate];
      v23 = [v22 interfaceName];
      [v22 invalidate];

      v24 = [(NESMSession *)self configuration];
      v25 = [v24 hotspot];
      v84 = [v25 authenticationProviderBundleIdentifier];

      v26 = sub_10005D3B4(self, v84);
      v27 = [(NESMSession *)self configuration];
      v83 = [v27 application];

      v28 = sub_10005D3B4(self, v83);
      v29 = [(NESMSession *)self configuration];
      v30 = [v29 hotspot];
      v88 = [v30 safariDomains];

      v94 = +[NEProcessInfo copyDNSUUIDs];
      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413314;
        v145 = self;
        v146 = 2112;
        v147 = v23;
        v148 = 2112;
        v149 = v26;
        v150 = 2112;
        v151 = v28;
        v152 = 2112;
        v153 = v88;
        _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%@ installing hotspot provider policies for Wi-Fi interface: [%@] \t\t\t\tprovider machOUUIDs: %@ \t\t\t\tapp machOUUIDs: %@ \t\t\t\tSafari domains: %@", buf, 0x34u);
      }

      v32 = objc_alloc_init(NSMutableArray);
      v33 = [NEPolicyResult tunnelIPToInterfaceName:v23 secondaryResultType:1];
      v98 = [NEPolicyResult scopeSocketToInterfaceName:v23];
      v128 = 0;
      v129 = &v128;
      v130 = 0x3032000000;
      v131 = sub_10005D5AC;
      v132 = sub_10005D5BC;
      v133 = 0;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      obj = v26;
      v34 = [obj countByEnumeratingWithState:&v124 objects:buf count:16];
      if (v34)
      {
        v35 = *v125;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v125 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v124 + 1) + 8 * i);
            v38 = sub_10005D5C4(self, 3, v33, v37, 0, 0, v23);
            v39 = v129[5];
            v129[5] = v38;

            if (v129[5])
            {
              [v32 addObject:?];
            }

            v40 = sub_10005D5C4(self, 4, v98, v37, 0, 0, 0);
            v41 = v129[5];
            v129[5] = v40;

            if (v129[5])
            {
              [v32 addObject:?];
            }
          }

          v34 = [obj countByEnumeratingWithState:&v124 objects:buf count:16];
        }

        while (v34);
      }

      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v89 = v28;
      v42 = [v89 countByEnumeratingWithState:&v120 objects:v143 count:16];
      if (v42)
      {
        v90 = *v121;
        do
        {
          v96 = 0;
          v92 = v42;
          do
          {
            if (*v121 != v90)
            {
              objc_enumerationMutation(v89);
            }

            v43 = *(*(&v120 + 1) + 8 * v96);
            v116 = 0u;
            v117 = 0u;
            v118 = 0u;
            v119 = 0u;
            v44 = v94;
            v45 = [v44 countByEnumeratingWithState:&v116 objects:v142 count:16];
            if (v45)
            {
              v46 = *v117;
              do
              {
                for (j = 0; j != v45; j = j + 1)
                {
                  if (*v117 != v46)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v48 = sub_10005D5C4(self, 3, v33, v43, *(*(&v116 + 1) + 8 * j), 0, v23);
                  v49 = v129[5];
                  v129[5] = v48;

                  if (v129[5])
                  {
                    [v32 addObject:?];
                  }
                }

                v45 = [v44 countByEnumeratingWithState:&v116 objects:v142 count:16];
              }

              while (v45);
            }

            v50 = sub_10005D5C4(self, 3, v33, v43, 0, 0, v23);
            v51 = v129[5];
            v129[5] = v50;

            if (v129[5])
            {
              [v32 addObject:?];
            }

            v52 = sub_10005D5C4(self, 4, v98, v43, 0, 0, 0);
            v53 = v129[5];
            v129[5] = v52;

            if (v129[5])
            {
              [v32 addObject:?];
            }

            v96 = v96 + 1;
          }

          while (v96 != v92);
          v42 = [v89 countByEnumeratingWithState:&v120 objects:v143 count:16];
        }

        while (v42);
      }

      if ([v88 count])
      {
        sub_10005D3B4(self, @"com.apple.mobilesafari");
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v87 = v113 = 0u;
        v54 = [v87 countByEnumeratingWithState:&v112 objects:v141 count:16];
        if (v54)
        {
          v91 = *v113;
          do
          {
            v97 = 0;
            v93 = v54;
            do
            {
              if (*v113 != v91)
              {
                objc_enumerationMutation(v87);
              }

              v55 = *(*(&v112 + 1) + 8 * v97);
              v108 = 0u;
              v109 = 0u;
              v110 = 0u;
              v111 = 0u;
              v56 = v94;
              v57 = [v56 countByEnumeratingWithState:&v108 objects:v140 count:16];
              if (v57)
              {
                v58 = *v109;
                do
                {
                  for (k = 0; k != v57; k = k + 1)
                  {
                    if (*v109 != v58)
                    {
                      objc_enumerationMutation(v56);
                    }

                    v60 = sub_10005D5C4(self, 3, v33, v55, *(*(&v108 + 1) + 8 * k), 0, v23);
                    v61 = v129[5];
                    v129[5] = v60;

                    if (v129[5])
                    {
                      [v32 addObject:?];
                    }
                  }

                  v57 = [v56 countByEnumeratingWithState:&v108 objects:v140 count:16];
                }

                while (v57);
              }

              v103[0] = _NSConcreteStackBlock;
              v103[1] = 3221225472;
              v103[2] = sub_10005D75C;
              v103[3] = &unk_1000EA520;
              v107 = &v128;
              v103[4] = self;
              v104 = v98;
              v105 = v55;
              v106 = v32;
              [v88 enumerateObjectsUsingBlock:v103];

              v97 = v97 + 1;
            }

            while (v97 != v93);
            v54 = [v87 countByEnumeratingWithState:&v112 objects:v141 count:16];
          }

          while (v54);
        }
      }

      if ([v32 count])
      {
        if (!self->_hotspotPolicySession)
        {
          v62 = objc_alloc_init(NEPolicySession);
          hotspotPolicySession = self->_hotspotPolicySession;
          self->_hotspotPolicySession = v62;

          [(NEPolicySession *)self->_hotspotPolicySession setPriority:100];
        }

        if (!self->_policyIDs)
        {
          v64 = objc_alloc_init(NSMutableArray);
          policyIDs = self->_policyIDs;
          self->_policyIDs = v64;
        }

        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v66 = v32;
        v67 = [v66 countByEnumeratingWithState:&v99 objects:&v138 count:16];
        if (v67)
        {
          v68 = *v100;
          do
          {
            for (m = 0; m != v67; m = m + 1)
            {
              if (*v100 != v68)
              {
                objc_enumerationMutation(v66);
              }

              v70 = *(*(&v99 + 1) + 8 * m);
              v71 = ne_log_obj();
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
              {
                *v134 = 138412546;
                v135 = self;
                v136 = 2112;
                v137 = v70;
                _os_log_debug_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEBUG, "%@ adding policy %@", v134, 0x16u);
              }

              v72 = self->_hotspotPolicySession;
              v73 = [(NEPolicySession *)v72 addPolicy:v70];

              if (v73)
              {
                v74 = self->_policyIDs;
                v75 = [NSNumber numberWithUnsignedInteger:v73];
                [(NSMutableArray *)v74 addObject:v75];
              }
            }

            v67 = [v66 countByEnumeratingWithState:&v99 objects:&v138 count:16];
          }

          while (v67);
        }

        v76 = self->_hotspotPolicySession;
        v77 = [(NEPolicySession *)v76 apply];

        if (v77)
        {
          v78 = ne_log_obj();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
          {
            *v134 = 138412290;
            v135 = self;
            v79 = "%@ successfully installed hotspot provider policies";
LABEL_101:
            v82 = v134;
            goto LABEL_102;
          }
        }

        else
        {
          v78 = ne_log_obj();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
          {
            *v134 = 138412290;
            v135 = self;
            v79 = "%@ failed to install hotspot provider policies";
            goto LABEL_101;
          }
        }
      }

      else
      {
        v78 = ne_log_obj();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
        {
          v138 = 138412290;
          v139 = self;
          v79 = "%@ unable to create hotspot provider policies";
          v82 = &v138;
LABEL_102:
          _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, v79, v82, 0xCu);
        }
      }

      _Block_object_dispose(&v128, 8);
      goto LABEL_104;
    }

    if (objc_getProperty(self, v13, 360, 1) != v85)
    {
      sessionType = self->_sessionType;
      goto LABEL_19;
    }

    v80 = objc_getProperty(self, v13, 360, 1);
    if (v80)
    {
      v81 = [v80 remotePluginObject];
      [v81 startEvaluationProvider];
    }
  }

LABEL_104:
}

- (void)plugin:(id)a3 didInitializeWithUUIDs:(id)a4
{
  v5 = a4;
  v6 = ne_log_obj();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v5;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@ didInitializeWithUUIDs [%@]", &v7, 0x16u);
  }
}

- (void)uninstall
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: received uninstall", &v4, 0xCu);
  }

  self->_installed = 0;
  self->_active = 0;
  [(NESMSession *)self setStatus:1];
}

- (void)installPended
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@: received install pending", buf, 0xCu);
  }

  v4 = dispatch_time(0, 2000000000);
  v5 = [(NESMSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005DA9C;
  block[3] = &unk_1000EB1C0;
  block[4] = self;
  dispatch_after(v4, v5, block);
}

- (void)install
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: received install", &v11, 0xCu);
  }

  if (self)
  {
    self->_installed = 1;
    sessionType = self->_sessionType;
    if (sessionType == 11)
    {
      if (sub_10005DCCC(self, v4))
      {
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          LOWORD(v11) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "starting hotspot evaluation provider", &v11, 2u);
        }

        v7 = &OBJC_IVAR___NESMHotspotSession__evaluationPlugin;
LABEL_15:

        v9 = objc_getProperty(self, v8, *v7, 1);
        v10 = [(NESMSession *)self configuration];
        sub_1000187A4(v9, v10);

        return;
      }

      sessionType = self->_sessionType;
    }

    if (sessionType == 12 && sub_10005DCCC(self, v4))
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "starting hotspot authentication provider", &v11, 2u);
      }

      v7 = &OBJC_IVAR___NESMHotspotSession__authenticationPlugin;
      goto LABEL_15;
    }
  }
}

- (void)handleStartMessage:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v9 = self;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%@ received request to handle start message for hotspot session", buf, 0xCu);
  }

  if (self->_active)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ hotspot session is already active, unable to process start message request", buf, 0xCu);
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NESMHotspotSession;
    [(NESMSession *)&v7 handleStartMessage:v4];
    v6 = [(NESMSession *)self server];
    [v6 requestInstallForSession:self withParentSession:0 exclusive:0];
  }
}

- (void)dealloc
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v6 = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@ dealloced", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = NESMHotspotSession;
  [(NESMSession *)&v4 dealloc];
}

@end