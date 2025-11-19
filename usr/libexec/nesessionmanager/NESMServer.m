@interface NESMServer
- (BOOL)canSleep;
- (BOOL)handleSleep;
- (BOOL)requestInstallForSession:(id)a3 withParentSession:(id)a4 exclusive:(BOOL)a5;
- (void)dealloc;
- (void)deregisterSession:(id)a3;
- (void)handleSleepTime:(double)a3;
- (void)handleWakeup;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerSession:(id)a3 withCompletionHandler:(id)a4;
- (void)requestUninstallForSession:(id)a3;
- (void)satisfyCellularPathForSession:(id)a3;
- (void)satisfyPathForSession:(id)a3;
@end

@implementation NESMServer

- (void)handleWakeup
{
  v2 = self;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  if (self)
  {
    self = objc_getProperty(self, a2, 120, 1);
  }

  obj = self;
  v3 = [(NESMServer *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v3)
  {
    v5 = v3;
    v22 = *v28;
    do
    {
      v6 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * v6);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        if (v2)
        {
          Property = objc_getProperty(v2, v4, 120, 1);
        }

        else
        {
          Property = 0;
        }

        v9 = [Property objectForKeyedSubscript:v7];
        v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v10)
        {
          v12 = v10;
          v13 = *v24;
          do
          {
            v14 = 0;
            do
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(v9);
              }

              v15 = *(*(&v23 + 1) + 8 * v14);
              if (v2)
              {
                v16 = objc_getProperty(v2, v11, 120, 1);
              }

              else
              {
                v16 = 0;
              }

              v17 = [v16 objectForKeyedSubscript:v7];
              v18 = [v17 objectForKeyedSubscript:v15];
              [v18 handleWakeup];

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v19 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
            v12 = v19;
          }

          while (v19);
        }

        v6 = v6 + 1;
      }

      while (v6 != v5);
      v20 = [(NESMServer *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      v5 = v20;
    }

    while (v20);
  }
}

- (void)requestUninstallForSession:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v43 = self;
    v44 = 2112;
    v45 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Request to uninstall session: %@", buf, 0x16u);
  }

  v6 = self;
  objc_sync_enter(v6);
  if ([(NESMServer *)v4 type]== 1)
  {
    v7 = [(NESMServer *)v4 configuration];
    v8 = [v7 grade] == 1;

    if (v8)
    {
      if (v6)
      {
        Property = objc_getProperty(v6, v9, 192, 1);
      }

      else
      {
        Property = 0;
      }

      if (Property == v4 || [(NESMServer *)v4 isDeregisteredEnterpriseVPNSession])
      {
        if (v6)
        {
          v6->_enterpriseVPNSessionInstallState = 1;
        }

        [(NESMServer *)v4 setIsDeregisteredEnterpriseVPNSession:0];
        if (v6)
        {
          v12 = objc_getProperty(v6, v11, 208, 1);
          if (v12)
          {
            v13 = v6->_personalVPNSessionInstallState == 2;

            if (v13)
            {
              v6->_personalVPNSessionInstallState = 3;
              v15 = objc_getProperty(v6, v14, 208, 1);
              if (v15)
              {
                v16 = v15;
                v17 = ne_log_obj();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v43 = v6;
                  v44 = 2112;
                  v45 = v16;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: Installing personal session because enterprise session is being uninstalled: %@", buf, 0x16u);
                }

                v40[0] = _NSConcreteStackBlock;
                v40[1] = 3221225472;
                v40[2] = sub_10004FAE4;
                v40[3] = &unk_1000EB1C0;
                v41 = v4;
                [(NESMServer *)v16 installWithCompletionHandler:v40];

                goto LABEL_36;
              }
            }
          }
        }
      }
    }

    else
    {
      v36 = [(NESMServer *)v4 configuration];
      if ([v36 grade] == 2 && v6)
      {
        v38 = objc_getProperty(v6, v37, 208, 1) == v4;

        if (v38)
        {
          v6->_personalVPNSessionInstallState = 1;
        }
      }

      else
      {
      }
    }
  }

  else if ([(NESMServer *)v4 type]== 6)
  {
    if (v6)
    {
      v6->_dnsProxySessionInstallState = 1;
    }
  }

  else if ([(NESMServer *)v4 type]== 8)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(NESMServer *)v4 configuration];
      v20 = [v19 appPush];
      v21 = [v20 pluginType];
      *buf = 138412546;
      v43 = v6;
      v44 = 2112;
      v45 = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: Received request to uninstall session for plugin type [%@]", buf, 0x16u);
    }

    if (v6)
    {
      v23 = objc_getProperty(v6, v22, 344, 1);
      if (v23)
      {
        v25 = v23;
        v26 = objc_getProperty(v6, v24, 344, 1);
        v27 = [(NESMServer *)v4 configuration];
        v28 = [v27 appPush];
        v29 = [v28 pluginType];
        v30 = [v26 containsObject:v29];

        if (v30)
        {
          v32 = objc_getProperty(v6, v31, 344, 1);
          v33 = [(NESMServer *)v4 configuration];
          v34 = [v33 appPush];
          v35 = [v34 pluginType];
          [v32 removeObject:v35];
        }
      }
    }
  }

  v39 = ne_log_obj();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v4;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%@: uninstalling session", buf, 0xCu);
  }

  [(NESMServer *)v4 uninstallOnQueue];
LABEL_36:
  objc_sync_exit(v6);
}

- (BOOL)requestInstallForSession:(id)a3 withParentSession:(id)a4 exclusive:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = &stru_1000EBA68;
    *buf = 138412802;
    v77 = self;
    v78 = 2112;
    if (v5)
    {
      v11 = @"(exclusive)";
    }

    v79 = v8;
    v80 = 2112;
    v81 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Request to install session: %@ %@", buf, 0x20u);
  }

  v12 = self;
  objc_sync_enter(v12);
  if (v9)
  {
    v14 = 0;
    if ([v9 type] != 3 || !v12)
    {
      goto LABEL_10;
    }

    if (objc_getProperty(v12, v13, 176, 1) != v9)
    {
      goto LABEL_9;
    }

    v20 = 0;
    v12->_alwaysOnVPNSessionInstallState = 3;
LABEL_47:
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_100050408;
    v74[3] = &unk_1000EB1C0;
    v41 = v20;
    v75 = v41;
    [v8 installWithCompletionHandler:v74];

    v16 = 1;
    goto LABEL_48;
  }

  if ([v8 type] == 4)
  {
    v17 = [v8 configuration];
    v18 = [v17 externalIdentifier];
    if (v18)
    {

      goto LABEL_46;
    }

    if (v12)
    {
      Property = objc_getProperty(v12, v19, 224, 1);
    }

    else
    {
      Property = 0;
    }

    v22 = Property == v8;

    if (v22)
    {
      goto LABEL_46;
    }
  }

  if ([v8 type] == 10)
  {
    v24 = v12 ? objc_getProperty(v12, v23, 240, 1) : 0;
    if (v24 == v8)
    {
      goto LABEL_46;
    }
  }

  if ([v8 type] != 1)
  {
    if ([v8 type] == 2 || objc_msgSend(v8, "type") == 5)
    {
      goto LABEL_46;
    }

    if ([v8 type] == 6)
    {
      if (v12)
      {
        v20 = 0;
        v12->_dnsProxySessionInstallState = 3;
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if ([v8 type] == 7)
    {
LABEL_46:
      v20 = 0;
      goto LABEL_47;
    }

    if ([v8 type] != 8)
    {
      if ([v8 type] == 9 || objc_msgSend(v8, "type") == 11 || objc_msgSend(v8, "type") == 12)
      {
        goto LABEL_46;
      }

      goto LABEL_9;
    }

    v53 = ne_log_obj();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [v8 configuration];
      v55 = [v54 appPush];
      v56 = [v55 pluginType];
      *buf = 138412546;
      v77 = v12;
      v78 = 2112;
      v79 = v56;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%@ Received request to install for NESessionTypeAppPush session type, plugin type [%@]", buf, 0x16u);
    }

    if (!v12 || !objc_getProperty(v12, v57, 344, 1))
    {
      v59 = [[NSMutableArray alloc] initWithCapacity:0];
      v61 = v59;
      if (!v12)
      {

        v62 = 0;
        goto LABEL_76;
      }

      objc_setProperty_atomic(v12, v60, v59, 344);
    }

    v62 = objc_getProperty(v12, v58, 344, 1);
LABEL_76:
    v63 = v62;
    v64 = [v8 configuration];
    v65 = [v64 appPush];
    v66 = [v65 pluginType];
    v67 = [v63 containsObject:v66];

    if (v67)
    {
      v14 = 1;
      goto LABEL_10;
    }

    if (v12)
    {
      v69 = objc_getProperty(v12, v68, 344, 1);
    }

    else
    {
      v69 = 0;
    }

    v70 = v69;
    v71 = [v8 configuration];
    v72 = [v71 appPush];
    v73 = [v72 pluginType];
    [v70 addObject:v73];

    goto LABEL_46;
  }

  v25 = [v8 configuration];
  v26 = [v25 VPN];
  v27 = [v26 protocol];
  v28 = [v27 includeAllNetworks];

  v29 = [v8 configuration];
  LODWORD(v27) = [v29 grade] == 1;

  v30 = v28 | v5;
  if (!v27)
  {
    v43 = [v8 configuration];
    v44 = [v43 grade];
    v14 = v44 == 2;
    if (v44 == 2)
    {
      if (v12)
      {
        v46 = objc_getProperty(v12, v45, 208, 1);
      }

      else
      {
        v46 = 0;
      }

      v47 = v46 == v8;

      if (!v47)
      {
        goto LABEL_9;
      }

      v48 = ne_log_obj();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = "";
        v50 = " Exclusive";
        if (!v30)
        {
          v50 = "";
        }

        *buf = 138413058;
        v78 = 2112;
        v77 = v12;
        v79 = v8;
        v80 = 2080;
        if (v28)
        {
          v49 = " IncludeAllNetworks";
        }

        v81 = v50;
        v82 = 2080;
        v83 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%@: Request to install Session %@ is Personal -%s%s", buf, 0x2Au);
      }

      if (!v12)
      {
        goto LABEL_46;
      }

      if (v12->_enterpriseVPNSessionInstallState != 4)
      {
        v20 = 0;
        v12->_personalVPNSessionInstallState = 3;
        goto LABEL_47;
      }

      v12->_personalVPNSessionInstallState = 2;
      v43 = ne_log_obj();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v52 = objc_getProperty(v12, v51, 192, 1);
        *buf = 138412802;
        v77 = v12;
        v78 = 2112;
        v79 = v8;
        v80 = 2112;
        v81 = v52;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%@: Request to install personal session (%@) delayed due to exclusive enterprise session (%@)", buf, 0x20u);
      }
    }

    goto LABEL_10;
  }

  v31 = ne_log_obj();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = "";
    v33 = " Exclusive";
    if (!v30)
    {
      v33 = "";
    }

    *buf = 138413058;
    v78 = 2112;
    v77 = v12;
    v79 = v8;
    v80 = 2080;
    if (v28)
    {
      v32 = " IncludeAllNetworks";
    }

    v81 = v33;
    v82 = 2080;
    v83 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@: Request to install Session %@ is Enterprise -%s%s", buf, 0x2Au);
  }

  if (v12)
  {
    v35 = objc_getProperty(v12, v34, 192, 1);
  }

  else
  {
    v35 = 0;
  }

  if (v35 == v8)
  {
    if (v30)
    {
      if (v12)
      {
        v12->_enterpriseVPNSessionInstallState = 4;
        v20 = objc_getProperty(v12, v34, 208, 1);
        if (!v20)
        {
          goto LABEL_47;
        }

        v36 = v12->_personalVPNSessionInstallState == 3;

        if (v36)
        {
          v12->_personalVPNSessionInstallState = 2;
          v37 = ne_log_obj();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v39 = objc_getProperty(v12, v38, 208, 1);
            *buf = 138412802;
            v77 = v12;
            v78 = 2112;
            v79 = v39;
            v80 = 2112;
            v81 = v8;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%@: Personal session %@ superceded by exclusive enterprise session %@, will uninstall personal session", buf, 0x20u);
          }

          v20 = objc_getProperty(v12, v40, 208, 1);
          goto LABEL_47;
        }
      }
    }

    else if (v12)
    {
      v20 = 0;
      v12->_enterpriseVPNSessionInstallState = 3;
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_9:
  v14 = 0;
LABEL_10:
  v15 = ne_log_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v77 = v12;
    v78 = 2112;
    v79 = v8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: Request to install session is superceded by registered sessions: %@", buf, 0x16u);
  }

  if (v14)
  {
    [v8 installPendedOnQueue];
  }

  v16 = 0;
LABEL_48:
  objc_sync_exit(v12);

  return v16;
}

- (void)deregisterSession:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([v4 type] != 3)
  {
    if ([v4 type] == 4)
    {
      if (v5)
      {
        if (objc_getProperty(v5, v10, 224, 1) != v4)
        {
          goto LABEL_14;
        }

        objc_setProperty_atomic(v5, v11, 0, 224);
      }

      else if (v4)
      {
        v26 = v4;
        goto LABEL_15;
      }

      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412546;
        v28 = v5;
        v29 = 2112;
        v30 = v4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Deregister Filter Session: %@", &v27, 0x16u);
      }

LABEL_14:
      if (!v4)
      {
        v8 = 0;
        goto LABEL_30;
      }

LABEL_15:
      v8 = v4;
      objc_sync_enter(v8);
      if (HIDWORD(v8[44].isa))
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          isa_high = HIDWORD(v8[44].isa);
          v27 = 67109120;
          LODWORD(v28) = isa_high;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "De-allocating control unit %u", &v27, 8u);
        }

        v15 = HIDWORD(v8[44].isa);
        objc_opt_self();
        os_unfair_lock_lock(&stru_1000FD570);
        dword_1000FD574 &= ~v15 | 0xE0000000;
        os_unfair_lock_unlock(&stru_1000FD570);
        HIDWORD(v8[44].isa) = 0;
      }

      objc_sync_exit(v8);

      goto LABEL_30;
    }

    if ([v4 type] != 10)
    {
      if ([v4 type] != 1)
      {
        if ([v4 type] == 2)
        {
          [v4 setIsDeregisteredAppVPNSession:1];
          v8 = ne_log_obj();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          v27 = 138412546;
          v28 = v5;
          v29 = 2112;
          v30 = v4;
          v9 = "%@: Deregister App VPN Session: %@";
        }

        else if ([v4 type] == 5)
        {
          v8 = ne_log_obj();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          v27 = 138412546;
          v28 = v5;
          v29 = 2112;
          v30 = v4;
          v9 = "%@: Deregister Path Controller Session: %@";
        }

        else if ([v4 type] == 6)
        {
          if (v5)
          {
            if (objc_getProperty(v5, v24, 232, 1) != v4)
            {
              goto LABEL_31;
            }

            objc_setProperty_atomic(v5, v25, 0, 232);
          }

          else if (v4)
          {
            goto LABEL_31;
          }

          v8 = ne_log_obj();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          v27 = 138412546;
          v28 = v5;
          v29 = 2112;
          v30 = v4;
          v9 = "%@: Deregister DNS Proxy Session: %@";
        }

        else if ([v4 type] == 7)
        {
          v8 = ne_log_obj();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          v27 = 138412546;
          v28 = v5;
          v29 = 2112;
          v30 = v4;
          v9 = "%@: Deregister DNS Settings Session: %@";
        }

        else
        {
          if ([v4 type] != 9)
          {
            goto LABEL_31;
          }

          v8 = ne_log_obj();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          v27 = 138412546;
          v28 = v5;
          v29 = 2112;
          v30 = v4;
          v9 = "%@: Deregister Relay Session: %@";
        }

        goto LABEL_29;
      }

      v19 = [v4 configuration];
      v20 = [v19 grade];

      if (v20 == 1)
      {
        if (v5)
        {
          if (objc_getProperty(v5, v21, 192, 1) != v4)
          {
            goto LABEL_31;
          }

          objc_setProperty_atomic(v5, v22, 0, 192);
        }

        else if (v4)
        {
          goto LABEL_31;
        }

        [v4 setIsDeregisteredEnterpriseVPNSession:1];
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v27 = 138412546;
          v28 = v5;
          v29 = 2112;
          v30 = v4;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@: Deregister Enterprise VPN Session: %@", &v27, 0x16u);
        }

        goto LABEL_30;
      }

      if (v5)
      {
        if (objc_getProperty(v5, v21, 208, 1) != v4)
        {
          goto LABEL_31;
        }

        objc_setProperty_atomic(v5, v23, 0, 208);
      }

      else if (v4)
      {
        goto LABEL_31;
      }

      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412546;
        v28 = v5;
        v29 = 2112;
        v30 = v4;
        v9 = "%@: Deregister Personal VPN Session: %@";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (v5)
    {
      if (objc_getProperty(v5, v16, 240, 1) != v4)
      {
        goto LABEL_27;
      }

      objc_setProperty_atomic(v5, v17, 0, 240);
    }

    else if (v4)
    {
      goto LABEL_27;
    }

    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412546;
      v28 = v5;
      v29 = 2112;
      v30 = v4;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: Deregister URL Filter Session: %@", &v27, 0x16u);
    }

LABEL_27:
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412546;
      v28 = v5;
      v29 = 2112;
      v30 = v4;
      v9 = "%@: Deregister URL Filter Session: %@";
      goto LABEL_29;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (!v5)
  {
    if (v4)
    {
      goto LABEL_31;
    }

LABEL_5:
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412546;
      v28 = v5;
      v29 = 2112;
      v30 = v4;
      v9 = "%@: Deregister Always-On VPN Session: %@";
LABEL_29:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v27, 0x16u);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if (objc_getProperty(v5, v6, 176, 1) == v4)
  {
    objc_setProperty_atomic(v5, v7, 0, 176);
    goto LABEL_5;
  }

LABEL_31:
  objc_sync_exit(v5);
}

- (void)registerSession:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Registering session %@", buf, 0xCu);
  }

  v9 = [v6 configuration];
  v10 = [v9 identifier];

  v11 = +[NEConfigurationManager sharedManagerForAllUsers];
  v12 = [v6 configuration];
  v14 = [v12 identifier];
  if (self)
  {
    Property = objc_getProperty(self, v13, 88, 1);
  }

  else
  {
    Property = 0;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100050D2C;
  v19[3] = &unk_1000EA408;
  v19[4] = self;
  v20 = v10;
  v21 = v6;
  v22 = v7;
  v16 = v7;
  v17 = v6;
  v18 = v10;
  [v11 loadConfigurationWithID:v14 withCompletionQueue:Property handler:v19];
}

- (void)dealloc
{
  sub_100052A24(self);
  sub_100052BA8(self);
  sub_100052C90(self);
  v3.receiver = self;
  v3.super_class = NESMServer;
  [(NESMServer *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a3;
  v10 = a4;
  if (self)
  {
    Property = objc_getProperty(self, v9, 88, 1);
  }

  else
  {
    Property = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052E3C;
  block[3] = &unk_1000EABC8;
  block[4] = self;
  v15 = v8;
  v16 = v10;
  v12 = v10;
  v13 = v8;
  dispatch_async(Property, block);
}

- (void)satisfyCellularPathForSession:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 88, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000546E8;
  v8[3] = &unk_1000EB198;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

- (void)satisfyPathForSession:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 88, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100054920;
  v8[3] = &unk_1000EB198;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(Property, v8);
}

- (void)handleSleepTime:(double)a3
{
  v4 = self;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  if (self)
  {
    self = objc_getProperty(self, a2, 120, 1);
  }

  obj = self;
  v5 = [(NESMServer *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v7 = v5;
    v24 = *v30;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v29 + 1) + 8 * v8);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        if (v4)
        {
          Property = objc_getProperty(v4, v6, 120, 1);
        }

        else
        {
          Property = 0;
        }

        v11 = [Property objectForKeyedSubscript:v9];
        v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v12)
        {
          v14 = v12;
          v15 = *v26;
          do
          {
            v16 = 0;
            do
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(v11);
              }

              v17 = *(*(&v25 + 1) + 8 * v16);
              if (v4)
              {
                v18 = objc_getProperty(v4, v13, 120, 1);
              }

              else
              {
                v18 = 0;
              }

              v19 = [v18 objectForKeyedSubscript:v9];
              v20 = [v19 objectForKeyedSubscript:v17];
              [v20 handleSleepTime:a3];

              v16 = v16 + 1;
            }

            while (v14 != v16);
            v21 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
            v14 = v21;
          }

          while (v21);
        }

        v8 = v8 + 1;
      }

      while (v8 != v7);
      v22 = [(NESMServer *)obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      v7 = v22;
    }

    while (v22);
  }
}

- (BOOL)handleSleep
{
  v2 = self;
  if (self)
  {
    self->_sleepAckCount = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    self = objc_getProperty(self, a2, 120, 1);
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
  }

  obj = self;
  v23 = [(NESMServer *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v22 = *v29;
    do
    {
      v4 = 0;
      do
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v28 + 1) + 8 * v4);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        if (v2)
        {
          Property = objc_getProperty(v2, v3, 120, 1);
        }

        else
        {
          Property = 0;
        }

        v7 = [Property objectForKeyedSubscript:v5];
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v10 = v8;
          v11 = *v25;
          do
          {
            v12 = 0;
            do
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v7);
              }

              v13 = *(*(&v24 + 1) + 8 * v12);
              if (v2)
              {
                v14 = objc_getProperty(v2, v9, 120, 1);
              }

              else
              {
                v14 = 0;
              }

              v15 = [v14 objectForKeyedSubscript:v5];
              v16 = [v15 objectForKeyedSubscript:v13];
              v17 = [v16 handleSleep];

              if (v2 && v17)
              {
                ++v2->_sleepAckCount;
              }

              v12 = v12 + 1;
            }

            while (v10 != v12);
            v18 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
            v10 = v18;
          }

          while (v18);
        }

        v4 = v4 + 1;
      }

      while (v4 != v23);
      v19 = [(NESMServer *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      v23 = v19;
    }

    while (v19);
  }

  return v2 && v2->_sleepAckCount > 0;
}

- (BOOL)canSleep
{
  v2 = self;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  if (self)
  {
    self = objc_getProperty(self, a2, 120, 1);
  }

  obj = self;
  v24 = [(NESMServer *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v23 = *v31;
    v4 = 1;
    do
    {
      v5 = 0;
      do
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * v5);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        if (v2)
        {
          Property = objc_getProperty(v2, v3, 120, 1);
        }

        else
        {
          Property = 0;
        }

        v25 = v5;
        v8 = [Property objectForKeyedSubscript:v6];
        v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v9)
        {
          v11 = v9;
          v12 = *v27;
          do
          {
            v13 = 0;
            do
            {
              if (*v27 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v26 + 1) + 8 * v13);
              if (v2)
              {
                v15 = objc_getProperty(v2, v10, 120, 1);
              }

              else
              {
                v15 = 0;
              }

              v16 = [v15 objectForKeyedSubscript:v6];
              v17 = [v16 objectForKeyedSubscript:v14];
              v18 = [v17 canSleep];

              v4 &= v18;
              v13 = v13 + 1;
            }

            while (v11 != v13);
            v19 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
            v11 = v19;
          }

          while (v19);
        }

        v5 = v25 + 1;
      }

      while ((v25 + 1) != v24);
      v20 = [(NESMServer *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      v24 = v20;
    }

    while (v20);
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

@end