@interface NESMDNSSettingsSession
- (BOOL)handleUpdateConfiguration:(id)a3;
- (NESMDNSSettingsSession)initWithConfiguration:(id)a3 andServer:(id)a4;
- (void)dealloc;
- (void)handleNetworkDetectionNotification:(int)a3;
- (void)handleStartMessage:(id)a3;
- (void)install;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)uninstall;
@end

@implementation NESMDNSSettingsSession

- (void)dealloc
{
  MCNotifyToken = self->_MCNotifyToken;
  if ((MCNotifyToken & 0x80000000) == 0)
  {
    notify_cancel(MCNotifyToken);
    self->_MCNotifyToken = -1;
  }

  sub_100090974(self, a2);
  [(NESMDNSSettingsSession *)self uninstall];
  v4.receiver = self;
  v4.super_class = NESMDNSSettingsSession;
  [(NESMSession *)&v4 dealloc];
}

- (void)uninstall
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ uninstalling DNS settings session", &v9, 0xCu);
  }

  v4 = [(NESMSession *)self policySession];
  sub_100030D44(v4);

  v5 = [(NESMSession *)self configuration];
  v6 = [v5 dnsSettings];
  v7 = [v6 isEnabled];

  if ((v7 & 1) == 0)
  {
    sub_100090974(self, v8);
  }

  [(NESMSession *)self setStatus:1];
}

- (void)install
{
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ installing DNS settings session", &v6, 0xCu);
  }

  sub_100090CC8(self, 1);
  if (self && objc_getProperty(self, v4, 360, 1))
  {
    [(NESMSession *)self setStatus:3];
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = self;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%@ settings is not, not moving to connected", &v6, 0xCu);
    }
  }
}

- (void)handleNetworkDetectionNotification:(int)a3
{
  if (a3 == 1)
  {
    block[7] = v3;
    block[8] = v4;
    v6 = [(NESMSession *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100091124;
    block[3] = &unk_1000EB1C0;
    block[4] = self;
    dispatch_async(v6, block);
  }
}

- (BOOL)handleUpdateConfiguration:(id)a3
{
  v4 = a3;
  if (v4 && (v15.receiver = self, v15.super_class = NESMDNSSettingsSession, [(NESMSession *)&v15 handleUpdateConfiguration:v4]))
  {
    if (self)
    {
      self->_configurationUpdatePending = 1;
    }

    v5 = [v4 dnsSettings];
    v7 = [v5 settings];
    if (self)
    {
      objc_setProperty_atomic(self, v6, v7, 360);
    }

    v8 = [v4 dnsSettings];
    v9 = [v8 onDemandRules];
    v11 = v9;
    if (self)
    {
      objc_setProperty_atomic(self, v10, v9, 368);

      sub_10009134C(self, v4);
      sub_100091B50(self, v12);
    }

    else
    {

      sub_10009134C(0, v4);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)handleStartMessage:(id)a3
{
  v4 = a3;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ handling start for DNS settings session", buf, 0xCu);
  }

  v7.receiver = self;
  v7.super_class = NESMDNSSettingsSession;
  [(NESMSession *)&v7 handleStartMessage:v4];

  sub_100091B50(self, v6);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a3;
  v10 = a4;
  v12 = a5;
  if (self)
  {
    Property = objc_getProperty(self, v11, 384, 1);
  }

  else
  {
    Property = 0;
  }

  if (Property == v10 && [v9 isEqualToString:@"bestAvailableNetworkDescription"])
  {
    v15 = objc_alloc_init(NEOnDemandRuleConnect);
    if (self)
    {
      v16 = objc_getProperty(self, v14, 384, 1);
    }

    else
    {
      v16 = 0;
    }

    v18 = [v16 bestAvailableNetworkDescription];
    if (v18)
    {
      if (self)
      {
        v19 = objc_getProperty(self, v17, 384, 1);
      }

      else
      {
        v19 = 0;
      }

      v20 = [v19 networkDescriptionArray];
      v21 = [v20 indexOfObject:v18];

      if (self)
      {
        v23 = objc_getProperty(self, v22, 368, 1);
      }

      else
      {
        v23 = 0;
      }

      if ([v23 count] > v21)
      {
        if (self)
        {
          v25 = objc_getProperty(self, v24, 368, 1);
        }

        else
        {
          v25 = 0;
        }

        v26 = [v25 objectAtIndex:v21];

        v15 = v26;
      }

      v27 = ne_log_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

        if ([v15 action] == 3)
        {
          v49 = v18;
          v32 = objc_alloc_init(NSMutableArray);
          v50 = v15;
          v33 = [v15 connectionRules];
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v34 = [v33 countByEnumeratingWithState:&v51 objects:v55 count:16];
          if (v34)
          {
            v36 = v34;
            v37 = *v52;
            do
            {
              for (i = 0; i != v36; i = i + 1)
              {
                if (*v52 != v37)
                {
                  objc_enumerationMutation(v33);
                }

                v39 = *(*(&v51 + 1) + 8 * i);
                if ([v39 action] == 2)
                {
                  v40 = [v39 matchDomains];
                  [v32 addObjectsFromArray:v40];
                }
              }

              v36 = [v33 countByEnumeratingWithState:&v51 objects:v55 count:16];
            }

            while (v36);
          }

          if (self)
          {
            v41 = objc_getProperty(self, v35, 376, 1);
          }

          else
          {
            v41 = 0;
          }

          v18 = v49;
          v42 = [v32 isEqual:{v41, v49}];
          v44 = v42 ^ 1;
          if (self)
          {
            v15 = v50;
            if ((v42 & 1) == 0)
            {
              objc_setProperty_atomic(self, v43, v32, 376);
              v44 = 1;
            }
          }

          else
          {
            v15 = v50;
          }
        }

        else if (self)
        {
          v44 = objc_getProperty(self, v31, 376, 1) != 0;
          objc_setProperty_atomic(self, v45, 0, 376);
        }

        else
        {
          v44 = 0;
        }

        if (-[NESMSession status](self, "status") != 1 && ([v15 action] == 2 || objc_msgSend(v15, "action") == 4))
        {
          v48 = [(NESMSession *)self server];
          [v48 requestUninstallForSession:self];
        }

        else
        {
          if (-[NESMSession status](self, "status") == 3 || [v15 action] != 1 && objc_msgSend(v15, "action") != 3)
          {
            if ((([(NESMSession *)self status]== 3) & v44) == 1)
            {
              v46 = self;
              v47 = 0;
            }

            else
            {
              if (!self || !self->_configurationUpdatePending)
              {
                goto LABEL_55;
              }

              self->_configurationUpdatePending = 0;
              v46 = self;
              v47 = 1;
            }

            sub_100090CC8(v46, v47);
LABEL_55:

            goto LABEL_56;
          }

          v48 = [(NESMSession *)self server];
          [v48 requestInstallForSession:self withParentSession:0 exclusive:0];
        }

        goto LABEL_55;
      }

      *buf = 138412546;
      v57 = self;
      v58 = 2112;
      v59 = v15;
      v28 = "%@ Matched DNS On Demand rule %@";
      v29 = v27;
      v30 = 22;
    }

    else
    {
      v27 = ne_log_obj();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 138412290;
      v57 = self;
      v28 = "%@ Matched no DNS On Demand rule";
      v29 = v27;
      v30 = 12;
    }

    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
    goto LABEL_21;
  }

LABEL_56:
}

- (NESMDNSSettingsSession)initWithConfiguration:(id)a3 andServer:(id)a4
{
  v6 = a3;
  v23.receiver = self;
  v23.super_class = NESMDNSSettingsSession;
  v7 = [(NESMSession *)&v23 initWithConfiguration:v6 andServer:a4];
  if (!v7)
  {
LABEL_6:
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%@ initialized DNS settings session", buf, 0xCu);
    }

    v20 = v7;
    goto LABEL_12;
  }

  v8 = [v6 dnsSettings];
  v9 = [v8 settings];

  if (v9)
  {
    v10 = [v6 dnsSettings];
    v11 = [v10 settings];
    settings = v7->_settings;
    v7->_settings = v11;

    v13 = [v6 dnsSettings];
    v14 = [v13 onDemandRules];
    onDemandRules = v7->_onDemandRules;
    v7->_onDemandRules = v14;

    v7->_MCNotifyToken = -1;
    sub_10009134C(v7, v6);
    v16 = [NESMPolicySession alloc];
    v17 = [v6 identifier];
    v18 = [v6 grade];
    if (v16)
    {
      v16 = sub_100033D18(&v16->super.isa, v17, 7, v18, 1, 1);
    }

    [(NESMSession *)v7 setPolicySession:v16];

    sub_10008E79C(v7);
    goto LABEL_6;
  }

  v21 = ne_log_obj();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v25 = v7;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@ settings is nil", buf, 0xCu);
  }

  v20 = 0;
LABEL_12:

  return v20;
}

@end