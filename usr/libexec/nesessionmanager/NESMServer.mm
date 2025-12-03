@interface NESMServer
- (BOOL)canSleep;
- (BOOL)handleSleep;
- (BOOL)requestInstallForSession:(id)session withParentSession:(id)parentSession exclusive:(BOOL)exclusive;
- (void)dealloc;
- (void)deregisterSession:(id)session;
- (void)handleSleepTime:(double)time;
- (void)handleWakeup;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerSession:(id)session withCompletionHandler:(id)handler;
- (void)requestUninstallForSession:(id)session;
- (void)satisfyCellularPathForSession:(id)session;
- (void)satisfyPathForSession:(id)session;
@end

@implementation NESMServer

- (void)handleWakeup
{
  selfCopy = self;
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
        if (selfCopy)
        {
          Property = objc_getProperty(selfCopy, v4, 120, 1);
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
              if (selfCopy)
              {
                v16 = objc_getProperty(selfCopy, v11, 120, 1);
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

- (void)requestUninstallForSession:(id)session
{
  sessionCopy = session;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v44 = 2112;
    v45 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Request to uninstall session: %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if ([(NESMServer *)sessionCopy type]== 1)
  {
    configuration = [(NESMServer *)sessionCopy configuration];
    v8 = [configuration grade] == 1;

    if (v8)
    {
      if (selfCopy2)
      {
        Property = objc_getProperty(selfCopy2, v9, 192, 1);
      }

      else
      {
        Property = 0;
      }

      if (Property == sessionCopy || [(NESMServer *)sessionCopy isDeregisteredEnterpriseVPNSession])
      {
        if (selfCopy2)
        {
          selfCopy2->_enterpriseVPNSessionInstallState = 1;
        }

        [(NESMServer *)sessionCopy setIsDeregisteredEnterpriseVPNSession:0];
        if (selfCopy2)
        {
          v12 = objc_getProperty(selfCopy2, v11, 208, 1);
          if (v12)
          {
            v13 = selfCopy2->_personalVPNSessionInstallState == 2;

            if (v13)
            {
              selfCopy2->_personalVPNSessionInstallState = 3;
              v15 = objc_getProperty(selfCopy2, v14, 208, 1);
              if (v15)
              {
                v16 = v15;
                v17 = ne_log_obj();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  selfCopy = selfCopy2;
                  v44 = 2112;
                  v45 = v16;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@: Installing personal session because enterprise session is being uninstalled: %@", buf, 0x16u);
                }

                v40[0] = _NSConcreteStackBlock;
                v40[1] = 3221225472;
                v40[2] = sub_10004FAE4;
                v40[3] = &unk_1000EB1C0;
                v41 = sessionCopy;
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
      configuration2 = [(NESMServer *)sessionCopy configuration];
      if ([configuration2 grade] == 2 && selfCopy2)
      {
        v38 = objc_getProperty(selfCopy2, v37, 208, 1) == sessionCopy;

        if (v38)
        {
          selfCopy2->_personalVPNSessionInstallState = 1;
        }
      }

      else
      {
      }
    }
  }

  else if ([(NESMServer *)sessionCopy type]== 6)
  {
    if (selfCopy2)
    {
      selfCopy2->_dnsProxySessionInstallState = 1;
    }
  }

  else if ([(NESMServer *)sessionCopy type]== 8)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      configuration3 = [(NESMServer *)sessionCopy configuration];
      appPush = [configuration3 appPush];
      pluginType = [appPush pluginType];
      *buf = 138412546;
      selfCopy = selfCopy2;
      v44 = 2112;
      v45 = pluginType;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: Received request to uninstall session for plugin type [%@]", buf, 0x16u);
    }

    if (selfCopy2)
    {
      v23 = objc_getProperty(selfCopy2, v22, 344, 1);
      if (v23)
      {
        v25 = v23;
        v26 = objc_getProperty(selfCopy2, v24, 344, 1);
        configuration4 = [(NESMServer *)sessionCopy configuration];
        appPush2 = [configuration4 appPush];
        pluginType2 = [appPush2 pluginType];
        v30 = [v26 containsObject:pluginType2];

        if (v30)
        {
          v32 = objc_getProperty(selfCopy2, v31, 344, 1);
          configuration5 = [(NESMServer *)sessionCopy configuration];
          appPush3 = [configuration5 appPush];
          pluginType3 = [appPush3 pluginType];
          [v32 removeObject:pluginType3];
        }
      }
    }
  }

  v39 = ne_log_obj();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = sessionCopy;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "%@: uninstalling session", buf, 0xCu);
  }

  [(NESMServer *)sessionCopy uninstallOnQueue];
LABEL_36:
  objc_sync_exit(selfCopy2);
}

- (BOOL)requestInstallForSession:(id)session withParentSession:(id)parentSession exclusive:(BOOL)exclusive
{
  exclusiveCopy = exclusive;
  sessionCopy = session;
  parentSessionCopy = parentSession;
  v10 = ne_log_obj();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = &stru_1000EBA68;
    *buf = 138412802;
    selfCopy = self;
    v78 = 2112;
    if (exclusiveCopy)
    {
      v11 = @"(exclusive)";
    }

    v79 = sessionCopy;
    v80 = 2112;
    v81 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@: Request to install session: %@ %@", buf, 0x20u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (parentSessionCopy)
  {
    v14 = 0;
    if ([parentSessionCopy type] != 3 || !selfCopy2)
    {
      goto LABEL_10;
    }

    if (objc_getProperty(selfCopy2, v13, 176, 1) != parentSessionCopy)
    {
      goto LABEL_9;
    }

    v20 = 0;
    selfCopy2->_alwaysOnVPNSessionInstallState = 3;
LABEL_47:
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_100050408;
    v74[3] = &unk_1000EB1C0;
    v41 = v20;
    v75 = v41;
    [sessionCopy installWithCompletionHandler:v74];

    v16 = 1;
    goto LABEL_48;
  }

  if ([sessionCopy type] == 4)
  {
    configuration = [sessionCopy configuration];
    externalIdentifier = [configuration externalIdentifier];
    if (externalIdentifier)
    {

      goto LABEL_46;
    }

    if (selfCopy2)
    {
      Property = objc_getProperty(selfCopy2, v19, 224, 1);
    }

    else
    {
      Property = 0;
    }

    v22 = Property == sessionCopy;

    if (v22)
    {
      goto LABEL_46;
    }
  }

  if ([sessionCopy type] == 10)
  {
    v24 = selfCopy2 ? objc_getProperty(selfCopy2, v23, 240, 1) : 0;
    if (v24 == sessionCopy)
    {
      goto LABEL_46;
    }
  }

  if ([sessionCopy type] != 1)
  {
    if ([sessionCopy type] == 2 || objc_msgSend(sessionCopy, "type") == 5)
    {
      goto LABEL_46;
    }

    if ([sessionCopy type] == 6)
    {
      if (selfCopy2)
      {
        v20 = 0;
        selfCopy2->_dnsProxySessionInstallState = 3;
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if ([sessionCopy type] == 7)
    {
LABEL_46:
      v20 = 0;
      goto LABEL_47;
    }

    if ([sessionCopy type] != 8)
    {
      if ([sessionCopy type] == 9 || objc_msgSend(sessionCopy, "type") == 11 || objc_msgSend(sessionCopy, "type") == 12)
      {
        goto LABEL_46;
      }

      goto LABEL_9;
    }

    v53 = ne_log_obj();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      configuration2 = [sessionCopy configuration];
      appPush = [configuration2 appPush];
      pluginType = [appPush pluginType];
      *buf = 138412546;
      selfCopy = selfCopy2;
      v78 = 2112;
      v79 = pluginType;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%@ Received request to install for NESessionTypeAppPush session type, plugin type [%@]", buf, 0x16u);
    }

    if (!selfCopy2 || !objc_getProperty(selfCopy2, v57, 344, 1))
    {
      v59 = [[NSMutableArray alloc] initWithCapacity:0];
      v61 = v59;
      if (!selfCopy2)
      {

        v62 = 0;
        goto LABEL_76;
      }

      objc_setProperty_atomic(selfCopy2, v60, v59, 344);
    }

    v62 = objc_getProperty(selfCopy2, v58, 344, 1);
LABEL_76:
    v63 = v62;
    configuration3 = [sessionCopy configuration];
    appPush2 = [configuration3 appPush];
    pluginType2 = [appPush2 pluginType];
    v67 = [v63 containsObject:pluginType2];

    if (v67)
    {
      v14 = 1;
      goto LABEL_10;
    }

    if (selfCopy2)
    {
      v69 = objc_getProperty(selfCopy2, v68, 344, 1);
    }

    else
    {
      v69 = 0;
    }

    v70 = v69;
    configuration4 = [sessionCopy configuration];
    appPush3 = [configuration4 appPush];
    pluginType3 = [appPush3 pluginType];
    [v70 addObject:pluginType3];

    goto LABEL_46;
  }

  configuration5 = [sessionCopy configuration];
  v26 = [configuration5 VPN];
  protocol = [v26 protocol];
  includeAllNetworks = [protocol includeAllNetworks];

  configuration6 = [sessionCopy configuration];
  LODWORD(protocol) = [configuration6 grade] == 1;

  v30 = includeAllNetworks | exclusiveCopy;
  if (!protocol)
  {
    configuration7 = [sessionCopy configuration];
    grade = [configuration7 grade];
    v14 = grade == 2;
    if (grade == 2)
    {
      if (selfCopy2)
      {
        v46 = objc_getProperty(selfCopy2, v45, 208, 1);
      }

      else
      {
        v46 = 0;
      }

      v47 = v46 == sessionCopy;

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
        selfCopy = selfCopy2;
        v79 = sessionCopy;
        v80 = 2080;
        if (includeAllNetworks)
        {
          v49 = " IncludeAllNetworks";
        }

        v81 = v50;
        v82 = 2080;
        v83 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%@: Request to install Session %@ is Personal -%s%s", buf, 0x2Au);
      }

      if (!selfCopy2)
      {
        goto LABEL_46;
      }

      if (selfCopy2->_enterpriseVPNSessionInstallState != 4)
      {
        v20 = 0;
        selfCopy2->_personalVPNSessionInstallState = 3;
        goto LABEL_47;
      }

      selfCopy2->_personalVPNSessionInstallState = 2;
      configuration7 = ne_log_obj();
      if (os_log_type_enabled(configuration7, OS_LOG_TYPE_DEFAULT))
      {
        v52 = objc_getProperty(selfCopy2, v51, 192, 1);
        *buf = 138412802;
        selfCopy = selfCopy2;
        v78 = 2112;
        v79 = sessionCopy;
        v80 = 2112;
        v81 = v52;
        _os_log_impl(&_mh_execute_header, configuration7, OS_LOG_TYPE_DEFAULT, "%@: Request to install personal session (%@) delayed due to exclusive enterprise session (%@)", buf, 0x20u);
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
    selfCopy = selfCopy2;
    v79 = sessionCopy;
    v80 = 2080;
    if (includeAllNetworks)
    {
      v32 = " IncludeAllNetworks";
    }

    v81 = v33;
    v82 = 2080;
    v83 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@: Request to install Session %@ is Enterprise -%s%s", buf, 0x2Au);
  }

  if (selfCopy2)
  {
    v35 = objc_getProperty(selfCopy2, v34, 192, 1);
  }

  else
  {
    v35 = 0;
  }

  if (v35 == sessionCopy)
  {
    if (v30)
    {
      if (selfCopy2)
      {
        selfCopy2->_enterpriseVPNSessionInstallState = 4;
        v20 = objc_getProperty(selfCopy2, v34, 208, 1);
        if (!v20)
        {
          goto LABEL_47;
        }

        v36 = selfCopy2->_personalVPNSessionInstallState == 3;

        if (v36)
        {
          selfCopy2->_personalVPNSessionInstallState = 2;
          v37 = ne_log_obj();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v39 = objc_getProperty(selfCopy2, v38, 208, 1);
            *buf = 138412802;
            selfCopy = selfCopy2;
            v78 = 2112;
            v79 = v39;
            v80 = 2112;
            v81 = sessionCopy;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%@: Personal session %@ superceded by exclusive enterprise session %@, will uninstall personal session", buf, 0x20u);
          }

          v20 = objc_getProperty(selfCopy2, v40, 208, 1);
          goto LABEL_47;
        }
      }
    }

    else if (selfCopy2)
    {
      v20 = 0;
      selfCopy2->_enterpriseVPNSessionInstallState = 3;
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
    selfCopy = selfCopy2;
    v78 = 2112;
    v79 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: Request to install session is superceded by registered sessions: %@", buf, 0x16u);
  }

  if (v14)
  {
    [sessionCopy installPendedOnQueue];
  }

  v16 = 0;
LABEL_48:
  objc_sync_exit(selfCopy2);

  return v16;
}

- (void)deregisterSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([sessionCopy type] != 3)
  {
    if ([sessionCopy type] == 4)
    {
      if (selfCopy)
      {
        if (objc_getProperty(selfCopy, v10, 224, 1) != sessionCopy)
        {
          goto LABEL_14;
        }

        objc_setProperty_atomic(selfCopy, v11, 0, 224);
      }

      else if (sessionCopy)
      {
        v26 = sessionCopy;
        goto LABEL_15;
      }

      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412546;
        v28 = selfCopy;
        v29 = 2112;
        v30 = sessionCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@: Deregister Filter Session: %@", &v27, 0x16u);
      }

LABEL_14:
      if (!sessionCopy)
      {
        v8 = 0;
        goto LABEL_30;
      }

LABEL_15:
      v8 = sessionCopy;
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

    if ([sessionCopy type] != 10)
    {
      if ([sessionCopy type] != 1)
      {
        if ([sessionCopy type] == 2)
        {
          [sessionCopy setIsDeregisteredAppVPNSession:1];
          v8 = ne_log_obj();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          v27 = 138412546;
          v28 = selfCopy;
          v29 = 2112;
          v30 = sessionCopy;
          v9 = "%@: Deregister App VPN Session: %@";
        }

        else if ([sessionCopy type] == 5)
        {
          v8 = ne_log_obj();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          v27 = 138412546;
          v28 = selfCopy;
          v29 = 2112;
          v30 = sessionCopy;
          v9 = "%@: Deregister Path Controller Session: %@";
        }

        else if ([sessionCopy type] == 6)
        {
          if (selfCopy)
          {
            if (objc_getProperty(selfCopy, v24, 232, 1) != sessionCopy)
            {
              goto LABEL_31;
            }

            objc_setProperty_atomic(selfCopy, v25, 0, 232);
          }

          else if (sessionCopy)
          {
            goto LABEL_31;
          }

          v8 = ne_log_obj();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          v27 = 138412546;
          v28 = selfCopy;
          v29 = 2112;
          v30 = sessionCopy;
          v9 = "%@: Deregister DNS Proxy Session: %@";
        }

        else if ([sessionCopy type] == 7)
        {
          v8 = ne_log_obj();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          v27 = 138412546;
          v28 = selfCopy;
          v29 = 2112;
          v30 = sessionCopy;
          v9 = "%@: Deregister DNS Settings Session: %@";
        }

        else
        {
          if ([sessionCopy type] != 9)
          {
            goto LABEL_31;
          }

          v8 = ne_log_obj();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          v27 = 138412546;
          v28 = selfCopy;
          v29 = 2112;
          v30 = sessionCopy;
          v9 = "%@: Deregister Relay Session: %@";
        }

        goto LABEL_29;
      }

      configuration = [sessionCopy configuration];
      grade = [configuration grade];

      if (grade == 1)
      {
        if (selfCopy)
        {
          if (objc_getProperty(selfCopy, v21, 192, 1) != sessionCopy)
          {
            goto LABEL_31;
          }

          objc_setProperty_atomic(selfCopy, v22, 0, 192);
        }

        else if (sessionCopy)
        {
          goto LABEL_31;
        }

        [sessionCopy setIsDeregisteredEnterpriseVPNSession:1];
        v8 = ne_log_obj();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v27 = 138412546;
          v28 = selfCopy;
          v29 = 2112;
          v30 = sessionCopy;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@: Deregister Enterprise VPN Session: %@", &v27, 0x16u);
        }

        goto LABEL_30;
      }

      if (selfCopy)
      {
        if (objc_getProperty(selfCopy, v21, 208, 1) != sessionCopy)
        {
          goto LABEL_31;
        }

        objc_setProperty_atomic(selfCopy, v23, 0, 208);
      }

      else if (sessionCopy)
      {
        goto LABEL_31;
      }

      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412546;
        v28 = selfCopy;
        v29 = 2112;
        v30 = sessionCopy;
        v9 = "%@: Deregister Personal VPN Session: %@";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (selfCopy)
    {
      if (objc_getProperty(selfCopy, v16, 240, 1) != sessionCopy)
      {
        goto LABEL_27;
      }

      objc_setProperty_atomic(selfCopy, v17, 0, 240);
    }

    else if (sessionCopy)
    {
      goto LABEL_27;
    }

    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412546;
      v28 = selfCopy;
      v29 = 2112;
      v30 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: Deregister URL Filter Session: %@", &v27, 0x16u);
    }

LABEL_27:
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412546;
      v28 = selfCopy;
      v29 = 2112;
      v30 = sessionCopy;
      v9 = "%@: Deregister URL Filter Session: %@";
      goto LABEL_29;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (!selfCopy)
  {
    if (sessionCopy)
    {
      goto LABEL_31;
    }

LABEL_5:
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412546;
      v28 = selfCopy;
      v29 = 2112;
      v30 = sessionCopy;
      v9 = "%@: Deregister Always-On VPN Session: %@";
LABEL_29:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v27, 0x16u);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if (objc_getProperty(selfCopy, v6, 176, 1) == sessionCopy)
  {
    objc_setProperty_atomic(selfCopy, v7, 0, 176);
    goto LABEL_5;
  }

LABEL_31:
  objc_sync_exit(selfCopy);
}

- (void)registerSession:(id)session withCompletionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Registering session %@", buf, 0xCu);
  }

  configuration = [sessionCopy configuration];
  identifier = [configuration identifier];

  v11 = +[NEConfigurationManager sharedManagerForAllUsers];
  configuration2 = [sessionCopy configuration];
  identifier2 = [configuration2 identifier];
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
  v20 = identifier;
  v21 = sessionCopy;
  v22 = handlerCopy;
  v16 = handlerCopy;
  v17 = sessionCopy;
  v18 = identifier;
  [v11 loadConfigurationWithID:identifier2 withCompletionQueue:Property handler:v19];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
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
  v15 = pathCopy;
  v16 = objectCopy;
  v12 = objectCopy;
  v13 = pathCopy;
  dispatch_async(Property, block);
}

- (void)satisfyCellularPathForSession:(id)session
{
  sessionCopy = session;
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
  v9 = sessionCopy;
  v7 = sessionCopy;
  dispatch_async(Property, v8);
}

- (void)satisfyPathForSession:(id)session
{
  sessionCopy = session;
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
  v9 = sessionCopy;
  v7 = sessionCopy;
  dispatch_async(Property, v8);
}

- (void)handleSleepTime:(double)time
{
  selfCopy = self;
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
        if (selfCopy)
        {
          Property = objc_getProperty(selfCopy, v6, 120, 1);
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
              if (selfCopy)
              {
                v18 = objc_getProperty(selfCopy, v13, 120, 1);
              }

              else
              {
                v18 = 0;
              }

              v19 = [v18 objectForKeyedSubscript:v9];
              v20 = [v19 objectForKeyedSubscript:v17];
              [v20 handleSleepTime:time];

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
  selfCopy = self;
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
        if (selfCopy)
        {
          Property = objc_getProperty(selfCopy, v3, 120, 1);
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
              if (selfCopy)
              {
                v14 = objc_getProperty(selfCopy, v9, 120, 1);
              }

              else
              {
                v14 = 0;
              }

              v15 = [v14 objectForKeyedSubscript:v5];
              v16 = [v15 objectForKeyedSubscript:v13];
              handleSleep = [v16 handleSleep];

              if (selfCopy && handleSleep)
              {
                ++selfCopy->_sleepAckCount;
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

  return selfCopy && selfCopy->_sleepAckCount > 0;
}

- (BOOL)canSleep
{
  selfCopy = self;
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
        if (selfCopy)
        {
          Property = objc_getProperty(selfCopy, v3, 120, 1);
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
              if (selfCopy)
              {
                v15 = objc_getProperty(selfCopy, v10, 120, 1);
              }

              else
              {
                v15 = 0;
              }

              v16 = [v15 objectForKeyedSubscript:v6];
              v17 = [v16 objectForKeyedSubscript:v14];
              canSleep = [v17 canSleep];

              v4 &= canSleep;
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