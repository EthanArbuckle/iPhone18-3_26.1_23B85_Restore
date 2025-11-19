@interface NSPConfigurationManager
- (BOOL)getGeohashSharingPreference;
- (BOOL)getPrivateAccessTokensEnabled;
- (BOOL)policyIncludesUnlimited;
- (BOOL)setUserTier:(unint64_t)a3 resetDate:(id)a4 clearResetDate:(BOOL)a5 changeSource:(unint64_t)a6;
- (NSPConfigurationManager)initWithDelegate:(id)a3 configuration:(id)a4;
- (id)currentConfiguration;
- (id)diagnostics;
- (id)mergeProxyTrafficStateWithCurrentPolicy;
- (unint64_t)configurationSubscriberPoliciesCount;
- (unint64_t)getPrivacyProxyAccountType;
- (void)clearResetDate;
- (void)copyProxyInfo:(id)a3;
- (void)dealloc;
- (void)handlePathChange:(id)a3;
- (void)publishDailyConfigurationStats;
- (void)refreshConfigurationWithReason:(unint64_t)a3 completionHandler:(id)a4;
- (void)resetConfigurationManager;
- (void)setConfigurationTrialVersion:(int64_t)a3;
- (void)setGeohashOverride:(id)a3;
- (void)setProxyTrafficState:(unint64_t)a3 proxyTraffic:(unint64_t)a4;
- (void)setResetDate:(id)a3;
- (void)setup;
- (void)updateConfiguration:(id)a3;
@end

@implementation NSPConfigurationManager

- (void)resetConfigurationManager
{
  v2 = self;
  if (self)
  {
    self = self->_configuration;
  }

  v28 = [(NSPConfigurationManager *)self geohashSharingEnabledStatus];
  if (v2)
  {
    configuration = v2->_configuration;
  }

  else
  {
    configuration = 0;
  }

  v27 = [(NSPConfiguration *)configuration geohashOverride];
  if (v2)
  {
    v4 = v2->_configuration;
  }

  else
  {
    v4 = 0;
  }

  v26 = [(NSPConfiguration *)v4 preferredPathRoutingEnabledStatus];
  if (v2)
  {
    v5 = v2->_configuration;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSPConfiguration *)v5 privateAccessTokensEnabledStatus];
  if (v2)
  {
    v7 = v2->_configuration;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSPConfiguration *)v7 privateAccessTokensAllowTools];
  if (v2)
  {
    v9 = v2->_configuration;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSPConfiguration *)v9 inProcessFlowDivert];
  if (v2)
  {
    v11 = v2->_configuration;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(NSPConfiguration *)v11 proxyTrafficState];
  if (v2)
  {
    v13 = v2->_configuration;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(NSPConfiguration *)v13 userTier];
  if (v2)
  {
    v15 = v2->_configuration;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(NSPConfiguration *)v15 proxyAccountType];
  if (v2)
  {
    v17 = v2->_configuration;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(NSPConfiguration *)v17 proxyAccountUnlimited];
  if (v2)
  {
    v19 = v2->_configuration;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(NSPConfiguration *)v19 userPreferredTier];
  if (v2)
  {
    v21 = v2->_configuration;
  }

  else
  {
    v21 = 0;
  }

  v22 = [(NSPConfiguration *)v21 subscriberEnabledFromNonSettingsApp];
  if (v2)
  {
    v23 = v2->_configuration;
  }

  else
  {
    v23 = 0;
  }

  v25 = [(NSPConfiguration *)v23 lastPrivateCloudComputeEnvironment];
  sub_100088994(v2);
  if (v2)
  {
    [(NSPConfiguration *)v2->_configuration setGeohashSharingEnabledStatus:v28];
    [(NSPConfiguration *)v2->_configuration setGeohashOverride:v27];
    [(NSPConfiguration *)v2->_configuration setPreferredPathRoutingEnabledStatus:v26];
    [(NSPConfiguration *)v2->_configuration setPrivateAccessTokensEnabledStatus:v6];
    [(NSPConfiguration *)v2->_configuration setPrivateAccessTokensAllowTools:v8];
    [(NSPConfiguration *)v2->_configuration setInProcessFlowDivert:v10];
    [(NSPConfiguration *)v2->_configuration setProxyTrafficState:v12];
    [(NSPConfiguration *)v2->_configuration setUserTier:v14];
    [(NSPConfiguration *)v2->_configuration setProxyAccountType:v16];
    [(NSPConfiguration *)v2->_configuration setProxyAccountUnlimited:v18];
    [(NSPConfiguration *)v2->_configuration setUserPreferredTier:v20];
    [(NSPConfiguration *)v2->_configuration setSubscriberEnabledFromNonSettingsApp:v22];
    v24 = v2->_configuration;
  }

  else
  {
    [0 setGeohashSharingEnabledStatus:v28];
    [0 setGeohashOverride:v27];
    [0 setPreferredPathRoutingEnabledStatus:v26];
    [0 setPrivateAccessTokensEnabledStatus:v6];
    [0 setPrivateAccessTokensAllowTools:v8];
    [0 setInProcessFlowDivert:v10];
    [0 setProxyTrafficState:v12];
    [0 setUserTier:v14];
    [0 setProxyAccountType:v16];
    [0 setProxyAccountUnlimited:v18];
    [0 setUserPreferredTier:v20];
    [0 setSubscriberEnabledFromNonSettingsApp:v22];
    v24 = 0;
  }

  [(NSPConfiguration *)v24 setLastPrivateCloudComputeEnvironment:v25];
  sub_100088D7C(v2);
}

- (BOOL)policyIncludesUnlimited
{
  v2 = self;
  if (self)
  {
    self = self->_configuration;
  }

  v3 = [(NSPConfigurationManager *)self proxyTrafficState];
  v4 = [v3 unsignedLongLongValue];

  if ((v4 & 0x20000) != 0)
  {
    v6 = sub_10008A834(&v2->super.isa);
    v7 = sub_10008A61C(v2, v6);
    v8 = v7;
    if (v7 && [v7 containsObject:&off_100114038])
    {
      if (v2)
      {
        configuration = v2->_configuration;
      }

      else
      {
        configuration = 0;
      }

      v10 = configuration;
      v11 = [(NSPConfiguration *)v10 proxyAccountUnlimited];
      if ([v11 BOOLValue])
      {
        v5 = 1;
      }

      else
      {
        if (v2)
        {
          v12 = v2->_configuration;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        v14 = [(NSPConfiguration *)v13 cloudSubscriptionCheckEnabled];
        if (v14)
        {
          if (v2)
          {
            v15 = v2->_configuration;
          }

          else
          {
            v15 = 0;
          }

          v16 = [(NSPConfiguration *)v15 cloudSubscriptionCheckEnabled];
          v17 = [v16 BOOLValue];

          v5 = v17 ^ 1;
        }

        else
        {
          v5 = 0;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (id)mergeProxyTrafficStateWithCurrentPolicy
{
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Merging current policy with proxy traffic state", buf, 2u);
  }

  if (self)
  {
    configuration = self->_configuration;
  }

  else
  {
    configuration = 0;
  }

  v5 = configuration;
  v6 = [(NSPConfiguration *)v5 proxyTrafficState];

  if (v6)
  {
    v7 = sub_10008A834(&self->super.isa);
    v8 = sub_10008A61C(self, v7);
    v9 = v8;
    if (!v8)
    {
      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v50 = self;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ failed to find conditions in the current policy", buf, 0xCu);
      }

      v13 = 0;
      goto LABEL_128;
    }

    if (![v8 containsObject:&off_100114038])
    {
LABEL_31:
      if (self)
      {
        v25 = self->_configuration;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;
      v27 = [(NSPConfiguration *)v26 proxyTrafficState];
      v28 = [v27 unsignedLongLongValue];

      v29 = nplog_obj();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        if (self)
        {
          v30 = self->_configuration;
        }

        else
        {
          v30 = 0;
        }

        v31 = v30;
        v32 = [(NSPConfiguration *)v31 proxyTrafficState];
        v33 = [NSPConfiguration proxyTrafficStateToString:v32];
        v34 = [v7 description];
        *buf = 138412802;
        v50 = self;
        v51 = 2112;
        v52 = v33;
        v53 = 2112;
        v54 = v34;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%@ merging proxy traffic state [%@] with current proxy policy [%@]", buf, 0x20u);
      }

      if ((v28 & 1) == 0 && [v9 containsObject:&off_100114050])
      {
        [v9 removeObject:&off_100114050];
      }

      if ((v28 & 2) == 0 && [v9 containsObject:&off_100114068])
      {
        [v9 removeObject:&off_100114068];
      }

      if ((v28 & 4) == 0 && [v9 containsObject:&off_100114080])
      {
        [v9 removeObject:&off_100114080];
      }

      if ((v28 & 8) == 0 && [v9 containsObject:&off_100114098])
      {
        [v9 removeObject:&off_100114098];
      }

      if ((v28 & 0x10) == 0 && [v9 containsObject:&off_1001140B0])
      {
        [v9 removeObject:&off_1001140B0];
      }

      if ((v28 & 0x40000) == 0 && [v9 containsObject:&off_1001140C8])
      {
        [v9 removeObject:&off_1001140C8];
      }

      if ((v28 & 0x80000) == 0 && [v9 containsObject:&off_1001140E0])
      {
        [v9 removeObject:&off_1001140E0];
      }

      if ((v28 & 0x100000) == 0 && [v9 containsObject:&off_1001140F8])
      {
        [v9 removeObject:&off_1001140F8];
      }

      if ((v28 & 0x200000) == 0 && [v9 containsObject:&off_100114110])
      {
        [v9 removeObject:&off_100114110];
      }

      if ((v28 & 0x20) == 0 && [v9 containsObject:&off_100114128])
      {
        [v9 removeObject:&off_100114128];
      }

      if ((v28 & 0x40) == 0 && [v9 containsObject:&off_100114140])
      {
        [v9 removeObject:&off_100114140];
      }

      if ((v28 & 0x80) == 0 && [v9 containsObject:&off_100114158])
      {
        [v9 removeObject:&off_100114158];
      }

      if ((v28 & 0x100) == 0 && [v9 containsObject:&off_100114170])
      {
        [v9 removeObject:&off_100114170];
      }

      if ((v28 & 0x200) == 0 && [v9 containsObject:&off_100114188])
      {
        [v9 removeObject:&off_100114188];
      }

      if ((v28 & 0x400) == 0 && [v9 containsObject:&off_1001141A0])
      {
        [v9 removeObject:&off_1001141A0];
      }

      if ((v28 & 0x10000) == 0 && [v9 containsObject:&off_1001141B8])
      {
        [v9 removeObject:&off_1001141B8];
      }

      if ((v28 & 0x800) == 0 && [v9 containsObject:&off_1001141D0])
      {
        [v9 removeObject:&off_1001141D0];
      }

      if ((v28 & 0x1000) == 0 && [v9 containsObject:&off_1001141E8])
      {
        [v9 removeObject:&off_1001141E8];
      }

      if ((v28 & 0x2000) == 0 && [v9 containsObject:&off_100114200])
      {
        [v9 removeObject:&off_100114200];
      }

      if ((v28 & 0x4000) == 0 && [v9 containsObject:&off_100114218])
      {
        [v9 removeObject:&off_100114218];
      }

      if ((v28 & 0x8000) == 0 && [v9 containsObject:&off_100114230])
      {
        [v9 removeObject:&off_100114230];
      }

      if ((v28 & 0x20000) == 0 && [v9 containsObject:&off_100114038])
      {
        [v9 removeObject:&off_100114038];
      }

      if ((v28 & 0x400000) == 0 && [v9 containsObject:&off_100114248])
      {
        [v9 removeObject:&off_100114248];
      }

      if ((v28 & 0x800000) == 0 && [v9 containsObject:&off_100114260])
      {
        [v9 removeObject:&off_100114260];
      }

      if ((v28 & 0x1000000) == 0 && [v9 containsObject:&off_100114278])
      {
        [v9 removeObject:&off_100114278];
      }

      if ((v28 & 0x2000000) == 0 && [v9 containsObject:&off_100114290])
      {
        [v9 removeObject:&off_100114290];
      }

      if ((v28 & 0x4000000) == 0 && [v9 containsObject:&off_1001142A8])
      {
        [v9 removeObject:&off_1001142A8];
      }

      v35 = objc_alloc_init(NSPPrivacyProxyPolicy);
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v36 = v9;
      v37 = [v36 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v45;
        do
        {
          for (i = 0; i != v38; i = i + 1)
          {
            if (*v45 != v39)
            {
              objc_enumerationMutation(v36);
            }

            [v35 addConditions:{objc_msgSend(*(*(&v44 + 1) + 8 * i), "intValue", v44)}];
          }

          v38 = [v36 countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v38);
      }

      v41 = nplog_obj();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = [v35 description];
        *buf = 138412546;
        v50 = self;
        v51 = 2112;
        v52 = v42;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%@ merged privacy proxy policy: [%@]", buf, 0x16u);
      }

      v14 = v35;
      v13 = v14;
LABEL_128:

      goto LABEL_129;
    }

    if (self)
    {
      v10 = self->_configuration;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [(NSPConfiguration *)v11 proxyAccountUnlimited];
    if ([v12 BOOLValue])
    {

LABEL_24:
      v23 = nplog_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Allowed to use app condition", buf, 2u);
      }

      goto LABEL_31;
    }

    if (self)
    {
      v15 = self->_configuration;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v17 = [(NSPConfiguration *)v16 cloudSubscriptionCheckEnabled];
    if (v17)
    {
      v18 = v17;
      if (self)
      {
        v19 = self->_configuration;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      v21 = [(NSPConfiguration *)v20 cloudSubscriptionCheckEnabled];
      v22 = [v21 BOOLValue];

      if ((v22 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    v24 = nplog_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Not allowed to use app condition", buf, 2u);
    }

    [v9 removeObject:&off_100114038];
    goto LABEL_31;
  }

  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v50 = self;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ proxy traffic state is nil", buf, 0xCu);
  }

  v13 = 0;
LABEL_129:

  return v13;
}

- (id)currentConfiguration
{
  if (self)
  {
    self = self->_configuration;
  }

  return self;
}

- (void)updateConfiguration:(id)a3
{
  v3 = __chkstk_darwin(self, a2, a3);
  v535 = v4;
  if (v3)
  {
    v5 = v3[4];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v539 = [v6 copy];

  v7 = [v3 effectiveUserTier];
  if (v3)
  {
    v8 = v3[4];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v9 merge:v535];

  v10 = sub_100090458(v3);
  v541 = v3;
  if (v3)
  {
    v3[2] = v10;
    v11 = v3[4];
  }

  else
  {
    v11 = 0;
  }

  v540 = v11;
  v12 = [v540 proxyConfigurationData];
  v13 = [v539 proxyConfigurationData];
  v14 = v12;
  v15 = v13;
  v16 = v15;
  if (!(v14 | v15) || v14 && v15 && [v14 isEqual:v15])
  {

    v534 = 0;
  }

  else
  {

    v17 = nplog_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "proxy configuration data changed", &buf, 2u);
    }

    v534 = 1;
  }

  v18 = [v540 enabled];
  v19 = [v539 enabled];
  v20 = v18;
  v21 = v19;
  v22 = v21;
  if (v20 | v21 && (!v20 || !v21 || ![v20 isEqual:v21]))
  {

    v33 = nplog_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v540 enabled];
      v35 = [v34 BOOLValue];
      v36 = @"disabled";
      if (v35)
      {
        v36 = @"enabled";
      }

      LODWORD(buf) = 138412290;
      *(&buf + 4) = v36;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "privacy proxy %@", &buf, 0xCu);
    }

    if (v541)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v702 = 0x3032000000;
      v703 = sub_100001F74;
      v704 = sub_1000875B8;
      v705 = os_transaction_create();
      v37 = *(v541 + 32);
      v38 = [v37 enabled];
      v39 = [v38 BOOLValue];

      if (v39)
      {
        v40 = *(v541 + 32);
        [v40 setConfigServerEnabled:&__kCFBooleanTrue];

        sub_1000892C0(v541);
        sub_10008720C(v541);
        sub_100088604(v541);
        v41 = *(v541 + 32);
        v42 = [v41 configServerHost];
        *(v541 + 10) = [v42 isEqualToString:@"mask-api.icloud.com"] ^ 1;

        v43 = NPGetInternalQueue();
        block = _NSConcreteStackBlock;
        p_block = 3221225472;
        v677 = sub_1000894B4;
      }

      else
      {
        sub_100088294(v541);
        sub_100087FD4(v541);
        sub_100088994(v541);
        v44 = *(v541 + 32);
        [v44 setEnabled:&__kCFBooleanFalse];

        sub_100089524(v541);
        +[NSPConfigurationSignatureInfo removeFromPreferences];
        *(v541 + 16) = 1;
        v43 = NPGetInternalQueue();
        block = _NSConcreteStackBlock;
        p_block = 3221225472;
        v677 = sub_100089574;
      }

      v678 = &unk_100109450;
      v679 = v541;
      p_buf = &buf;
      dispatch_async(v43, &block);

      _Block_object_dispose(&buf, 8);
    }

    goto LABEL_147;
  }

  v23 = [v540 enabled];
  v24 = [v23 BOOLValue];

  if ((v24 & 1) == 0)
  {
    goto LABEL_146;
  }

  v25 = [v540 configServerHost];
  v26 = [v539 configServerHost];
  v27 = [v25 isEqualToString:v26];

  if ((v27 & 1) == 0)
  {
    v45 = nplog_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [v540 configServerHost];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "configuration server host changed to %@", &buf, 0xCu);
    }

    goto LABEL_34;
  }

  v28 = [v540 overrideConfigServerPath];
  v29 = [v539 overrideConfigServerPath];
  v30 = v28;
  v31 = v29;
  v32 = v31;
  if (!(v30 | v31) || v30 && v31 && [v30 isEqual:v31])
  {
  }

  else
  {

    v30 = nplog_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [v540 overrideConfigServerPath];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v47;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "user-configured server path changed to %@", &buf, 0xCu);
    }

    v534 = 1;
  }

  v48 = [v540 configServerHeaders];
  v49 = [v539 configServerHeaders];
  v50 = [v48 isEqualToString:v49];

  if ((v50 & 1) == 0)
  {
    v51 = nplog_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [v540 configServerHeaders];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v52;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "configuration server headers changed to %@", &buf, 0xCu);
    }

    v534 = 1;
  }

  v53 = [v540 ignoreInvalidCerts];
  if (v53 != [v539 ignoreInvalidCerts])
  {
    v45 = nplog_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [v540 ignoreInvalidCerts];
      v55 = "no";
      if (v54)
      {
        v55 = "yes";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v55;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "ignore invalid certs changed to %s", &buf, 0xCu);
    }

LABEL_34:

    sub_100088D7C(v541);
LABEL_147:
    v163 = nplog_large_obj();
    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEBUG))
    {
      v169 = v541;
      if (v541)
      {
        v169 = *(v541 + 32);
      }

      v170 = v169;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v170;
      _os_log_debug_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEBUG, "Configuration state: %@", &buf, 0xCu);
    }

    if (v541)
    {
      v164 = *(v541 + 32);
    }

    else
    {
      v164 = 0;
    }

    v165 = v164;
    v166 = [v165 saveToPreferences];

    if (v166)
    {
      if (v541)
      {
        ++*(v541 + 56);
        [NPUtilities postNotification:@"com.apple.networkserviceproxy.privacy-proxy-configuration-changed" value:?];
        *&buf = 0;
        *(&buf + 1) = &buf;
        v702 = 0x3032000000;
        v703 = sub_100001F74;
        v704 = sub_1000875B8;
        v705 = os_transaction_create();
        v167 = NPGetInternalQueue();
        block = _NSConcreteStackBlock;
        p_block = 3221225472;
        v677 = sub_1000897A8;
        v678 = &unk_100109450;
        v679 = v541;
        p_buf = &buf;
        dispatch_async(v167, &block);

        _Block_object_dispose(&buf, 8);
      }

      else
      {
        [NPUtilities postNotification:@"com.apple.networkserviceproxy.privacy-proxy-configuration-changed" value:0];
      }
    }

    else
    {
      v168 = nplog_obj();
      if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v168, OS_LOG_TYPE_ERROR, "Failed to write configuration to file", &buf, 2u);
      }
    }

    goto LABEL_156;
  }

  v56 = [v540 ignoreSignature];
  if (v56 != [v539 ignoreSignature])
  {
    v57 = nplog_obj();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v58 = [v540 ignoreSignature];
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v58;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "ignore configuration signature %d", &buf, 8u);
    }

    v534 = 1;
  }

  v59 = [v540 ignorePlatformBinary];
  if (v59 != [v539 ignorePlatformBinary])
  {
    v60 = nplog_obj();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      v61 = [v540 ignorePlatformBinary];
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v61;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "ignore platform binary %d", &buf, 8u);
    }

    v534 = 1;
  }

  v62 = [v540 cloudSubscriptionCheckEnabled];
  v63 = [v539 cloudSubscriptionCheckEnabled];
  v64 = v62;
  v65 = v63;
  v66 = v65;
  if (!(v64 | v65) || v64 && v65 && [v64 isEqual:v65])
  {
  }

  else
  {

    v67 = nplog_obj();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = [v540 cloudSubscriptionCheckEnabled];
      v69 = [v68 BOOLValue];
      v70 = "no";
      if (v69)
      {
        v70 = "yes";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v70;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "cloud subscription check changed to %s", &buf, 0xCu);
    }

    if (v541)
    {
      v71 = [*(v541 + 32) cloudSubscriptionCheckEnabled];
      v72 = [v71 BOOLValue];

      if ((v72 & 1) == 0)
      {
        [*(v541 + 32) setProxyAccountType:0];
        [*(v541 + 32) setProxyAccountUnlimited:0];
      }

      v73 = [*(v541 + 32) cloudSubscriptionCheckEnabled];
      v74 = [v73 BOOLValue];

      block = 0;
      p_block = &block;
      v677 = 0x3032000000;
      v678 = sub_100001F74;
      v679 = sub_1000875B8;
      p_buf = os_transaction_create();
      v75 = NPGetInternalQueue();
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v702 = sub_100089654;
      v703 = &unk_1001099F8;
      v706 = v74;
      v704 = v541;
      v705 = &block;
      dispatch_async(v75, &buf);

      _Block_object_dispose(&block, 8);
    }

    v534 = 1;
  }

  v76 = [v540 trialConfigVersion];
  v77 = [v539 trialConfigVersion];
  v78 = v76;
  v79 = v77;
  v80 = v79;
  if (!(v78 | v79) || v78 && v79 && [v78 isEqual:v79])
  {
  }

  else
  {

    v81 = nplog_obj();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      v82 = [v540 trialConfigVersion];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v82;
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Trial configuration version changed to %@", &buf, 0xCu);
    }

    if (v541)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v702 = 0x3032000000;
      v703 = sub_100001F74;
      v704 = sub_1000875B8;
      v705 = os_transaction_create();
      block = _NSConcreteStackBlock;
      p_block = 3221225472;
      v677 = sub_10008A540;
      v678 = &unk_10010A058;
      v679 = &buf;
      [v541 refreshConfigurationWithReason:2 completionHandler:&block];
      _Block_object_dispose(&buf, 8);
    }

    v534 = 1;
  }

  v83 = [v540 resurrectionDate];
  v84 = [v539 resurrectionDate];
  v85 = v83;
  v86 = v84;
  v87 = v86;
  if (v85 | v86 && (!v85 || !v86 || ![v85 isEqual:v86]))
  {

    v95 = [v540 resurrectionDate];
    v96 = [NSDateFormatter localizedStringFromDate:v95 dateStyle:1 timeStyle:2];

    v97 = nplog_obj();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v96;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "resurrection date changed to %@", &buf, 0xCu);
    }

    if (v541)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v702 = 0x3032000000;
      v703 = sub_100001F74;
      v704 = sub_1000875B8;
      v705 = os_transaction_create();
      v98 = *(v541 + 32);
      v99 = [v98 resurrectionDate];
      v100 = v99 == 0;

      v101 = *(v541 + 32);
      v102 = v101;
      if (v100)
      {
        [v101 setConfigServerEnabled:&__kCFBooleanTrue];

        sub_10008720C(v541);
        sub_100088604(v541);
        v103 = NPGetInternalQueue();
        block = _NSConcreteStackBlock;
        p_block = 3221225472;
        v677 = sub_100089738;
        v678 = &unk_100109450;
        v679 = v541;
        p_buf = &buf;
        dispatch_async(v103, &block);
      }

      else
      {
        v103 = [v101 resurrectionDate];

        sub_100088294(v541);
        sub_100087FD4(v541);
        sub_100088994(v541);
        v104 = *(v541 + 32);
        [v104 setResurrectionDate:v103];

        sub_1000879CC(v541);
        v105 = NPGetInternalQueue();
        block = _NSConcreteStackBlock;
        p_block = 3221225472;
        v677 = sub_1000896C8;
        v678 = &unk_100109450;
        v679 = v541;
        p_buf = &buf;
        dispatch_async(v105, &block);
      }

      _Block_object_dispose(&buf, 8);
    }

    goto LABEL_147;
  }

  v88 = [v540 userTier];
  v89 = [v88 unsignedIntValue];
  v90 = [v539 userTier];
  LOBYTE(v89) = v89 == [v90 unsignedIntValue];

  if ((v89 & 1) == 0)
  {
    v91 = nplog_obj();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      v92 = [v540 userTier];
      v93 = [v92 unsignedIntValue];
      if (v93 >= 3)
      {
        v94 = [NSString stringWithFormat:@"(unknown: %i)", v93];
      }

      else
      {
        v94 = *(&off_10010AAE8 + v93);
      }

      v106 = v94;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v106;
      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "user tier changed to %@", &buf, 0xCu);
    }

    if (v541)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v702 = 0x3032000000;
      v703 = sub_100001F74;
      v704 = sub_1000875B8;
      v705 = os_transaction_create();
      v107 = NPGetInternalQueue();
      block = _NSConcreteStackBlock;
      p_block = 3221225472;
      v677 = sub_100089BF0;
      v678 = &unk_100109450;
      v679 = v541;
      p_buf = &buf;
      dispatch_async(v107, &block);

      _Block_object_dispose(&buf, 8);
    }

    v534 = 1;
  }

  v108 = [v540 userPreferredTier];
  v109 = [v108 unsignedIntValue];
  v110 = [v539 userPreferredTier];
  LOBYTE(v109) = v109 == [v110 unsignedIntValue];

  if ((v109 & 1) == 0)
  {
    v111 = nplog_obj();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      v112 = [v540 userTier];
      v113 = [v112 unsignedIntValue];
      if (v113 >= 3)
      {
        v114 = [NSString stringWithFormat:@"(unknown: %i)", v113];
      }

      else
      {
        v114 = *(&off_10010AAE8 + v113);
      }

      v115 = v114;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v115;
      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "user preferred tier changed to %@", &buf, 0xCu);
    }

    if (v541)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v702 = 0x3032000000;
      v703 = sub_100001F74;
      v704 = sub_1000875B8;
      v705 = os_transaction_create();
      v116 = NPGetInternalQueue();
      block = _NSConcreteStackBlock;
      p_block = 3221225472;
      v677 = sub_100089C60;
      v678 = &unk_100109450;
      v679 = v541;
      p_buf = &buf;
      dispatch_async(v116, &block);

      _Block_object_dispose(&buf, 8);
    }

    v534 = 1;
  }

  if (v7 != [v541 effectiveUserTier])
  {
    v117 = nplog_obj();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      v118 = [v541 effectiveUserTier];
      if (v118 >= 3)
      {
        v119 = [NSString stringWithFormat:@"(unknown: %i)", v118];
      }

      else
      {
        v119 = *(&off_10010AAE8 + (v118 & 3));
      }

      v120 = v119;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v120;
      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "effective user tier changed to %@", &buf, 0xCu);
    }

    if (v541)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v702 = 0x3032000000;
      v703 = sub_100001F74;
      v704 = sub_1000875B8;
      v705 = os_transaction_create();
      v121 = NPGetInternalQueue();
      block = _NSConcreteStackBlock;
      p_block = 3221225472;
      v677 = sub_100089D24;
      v678 = &unk_100109450;
      v679 = v541;
      p_buf = &buf;
      dispatch_async(v121, &block);

      _Block_object_dispose(&buf, 8);
    }

    v534 = 1;
  }

  v122 = [v540 willResetSubscriberTierTomorrow];
  v123 = [v539 willResetSubscriberTierTomorrow];
  if (v122 == v123)
  {
    v125 = [v540 resetTomorrowDate];
    v126 = [v539 resetTomorrowDate];
    v127 = v125 != v126;

    v124 = v127 | v534;
  }

  else
  {
    v124 = 1;
  }

  v534 = v124;

  v128 = [v540 proxyConfiguration];
  v129 = [v128 enabled];
  v130 = [v539 proxyConfiguration];
  v131 = [v130 enabled];

  if (v129 != v131)
  {
    v132 = nplog_obj();
    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
    {
      v133 = [v540 proxyConfiguration];
      v134 = [v133 enabled];
      v135 = "disabled";
      if (v134)
      {
        v135 = "enabled";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v135;
      _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "proxy token fetch state changed to %s", &buf, 0xCu);
    }

    if (v541)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v702 = 0x3032000000;
      v703 = sub_100001F74;
      v704 = sub_1000875B8;
      v705 = os_transaction_create();
      v136 = *(v541 + 32);
      v137 = [v136 proxyConfiguration];
      v138 = [v137 enabled];

      v139 = NPGetInternalQueue();
      v140 = v139;
      block = _NSConcreteStackBlock;
      p_block = 3221225472;
      if (v138)
      {
        v141 = sub_100089994;
      }

      else
      {
        v141 = sub_100089A04;
      }

      v677 = v141;
      v678 = &unk_100109450;
      v679 = v541;
      p_buf = &buf;
      dispatch_async(v139, &block);

      _Block_object_dispose(&buf, 8);
    }

    goto LABEL_147;
  }

  v142 = [v540 proxyConfiguration];
  v143 = [v142 enabled];

  if (!v143)
  {
LABEL_146:
    if ((v534 & 1) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_147;
  }

  v144 = [v540 proxyAccountType];
  v145 = [v539 proxyAccountType];
  v146 = sub_1000904EC(v144, v145);

  if (v146)
  {
    v147 = nplog_obj();
    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
    {
      v148 = [v540 proxyAccountType];
      v149 = [NSPConfiguration proxyAccountTypeToString:v148];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v149;
      _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "proxy account type changed to %@", &buf, 0xCu);
    }

    v534 = 1;
  }

  v150 = [v540 proxyAccountUnlimited];
  v151 = [v539 proxyAccountUnlimited];
  v152 = sub_1000904EC(v150, v151);

  if (v152)
  {
    v153 = nplog_obj();
    if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
    {
      v154 = [v540 proxyAccountUnlimited];
      v155 = [v154 BOOLValue];
      v156 = "false";
      if (v155)
      {
        v156 = "true";
      }

      LODWORD(buf) = 136446210;
      *(&buf + 4) = v156;
      _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "proxy account unlimited changed to %{public}s", &buf, 0xCu);
    }

    v534 = 1;
  }

  v157 = [v540 proxyConfiguration];
  v158 = [v157 authInfo];
  v159 = [v158 authURL];
  v160 = [v539 proxyConfiguration];
  v161 = [v160 authInfo];
  v162 = [v161 authURL];
  if (sub_1000904EC(v159, v162))
  {
  }

  else
  {
    obj = [v540 proxyConfiguration];
    v575 = [obj authInfo];
    v562 = [v575 accessTokenURL];
    v574 = [v539 proxyConfiguration];
    v567 = [v574 authInfo];
    v556 = [v567 accessTokenURL];
    if (sub_1000904EC(v562, v556))
    {
      v171 = 1;
    }

    else
    {
      v550 = [v540 proxyConfiguration];
      v542 = [v550 authInfo];
      v545 = [v539 proxyConfiguration];
      v172 = [v545 authInfo];
      if (sub_10008B3A0(v541, v542, v172))
      {
        v536 = [v540 proxyConfiguration];
        v531 = [v536 authInfo];
        v523 = [v531 accessTokenKnownOrigins];
        v528 = [v539 proxyConfiguration];
        v525 = [v528 authInfo];
        v173 = [v525 accessTokenKnownOrigins];
        if (sub_1000904EC(v523, v173))
        {
          v171 = 1;
        }

        else
        {
          v521 = [v540 proxyConfiguration];
          v519 = [v521 authInfo];
          v513 = [v519 accessTokenBlockedIssuers];
          v517 = [v539 proxyConfiguration];
          v515 = [v517 authInfo];
          v511 = [v515 accessTokenBlockedIssuers];
          if (sub_1000904EC(v513, v511))
          {
            v171 = 1;
          }

          else
          {
            v509 = [v540 proxyConfiguration];
            v507 = [v509 authInfo];
            v174 = [v507 authType];
            v505 = [v539 proxyConfiguration];
            v503 = [v505 authInfo];
            if (v174 == [v503 authType])
            {
              v502 = [v540 proxyConfiguration];
              v501 = [v502 authInfo];
              v498 = [v501 nonDefaultAttesters];
              v500 = [v539 proxyConfiguration];
              v499 = [v500 authInfo];
              v175 = [v499 nonDefaultAttesters];
              v171 = sub_1000904EC(v498, v175);
            }

            else
            {
              v171 = 1;
            }
          }
        }
      }

      else
      {
        v171 = 1;
      }
    }

    if ((v171 & 1) == 0)
    {
      goto LABEL_181;
    }
  }

  v176 = nplog_obj();
  if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
  {
    v177 = [v540 proxyConfiguration];
    v178 = [v177 authInfo];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v178;
    _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "authentication info updated to %@", &buf, 0xCu);
  }

  sub_100089A74(v541);
  v534 = 1;
LABEL_181:
  v179 = [v540 proxyConfiguration];
  v524 = [v179 proxies];

  v180 = [v539 proxyConfiguration];
  v522 = [v180 proxies];

  v181 = [v524 count];
  if (v181 != [v522 count])
  {
    v261 = nplog_obj();
    if (os_log_type_enabled(v261, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v524;
      _os_log_impl(&_mh_execute_header, v261, OS_LOG_TYPE_DEFAULT, "proxy info updated to %@", &buf, 0xCu);
    }

    sub_100089D94(v541);
    goto LABEL_308;
  }

  if (![v524 count])
  {
    goto LABEL_246;
  }

  v674 = 0u;
  v673 = 0u;
  v672 = 0u;
  v671 = 0u;
  obja = v524;
  v576 = [obja countByEnumeratingWithState:&v671 objects:v700 count:16];
  if (!v576)
  {
    goto LABEL_245;
  }

  v182 = *v672;
  v568 = *v672;
  do
  {
    v183 = 0;
    do
    {
      if (*v672 != v182)
      {
        v184 = v183;
        objc_enumerationMutation(obja);
        v183 = v184;
      }

      v574 = v183;
      v185 = *(*(&v671 + 1) + 8 * v183);
      v667 = 0u;
      v668 = 0u;
      v669 = 0u;
      v670 = 0u;
      v186 = v522;
      v187 = [v186 countByEnumeratingWithState:&v667 objects:v699 count:16];
      if (!v187)
      {
LABEL_299:

        v262 = nplog_obj();
        if (os_log_type_enabled(v262, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = obja;
          _os_log_impl(&_mh_execute_header, v262, OS_LOG_TYPE_DEFAULT, "proxy info updated to %@", &buf, 0xCu);
        }

        sub_100089D94(v541);
        goto LABEL_308;
      }

      v188 = *v668;
LABEL_190:
      v189 = 0;
      while (1)
      {
        if (*v668 != v188)
        {
          objc_enumerationMutation(v186);
        }

        v190 = *(*(&v667 + 1) + 8 * v189);
        v191 = [v185 proxyHop];
        if (v191 != [v190 proxyHop])
        {
          goto LABEL_240;
        }

        v192 = [v185 proxyURL];
        v193 = [v190 proxyURL];
        v194 = v192;
        v195 = v193;
        v196 = v195;
        if (!(v194 | v195) || v194 && v195 && [v194 isEqual:v195])
        {

          v197 = [v185 tcpProxyFqdn];
          v198 = [v190 tcpProxyFqdn];
          v194 = v197;
          v199 = v198;
          v196 = v199;
          if (!(v194 | v199) || v194 && v199 && [v194 isEqual:v199])
          {

            v200 = [v185 proxyKeyInfos];
            v201 = [v190 proxyKeyInfos];
            v194 = v200;
            v202 = v201;
            v196 = v202;
            if (!(v194 | v202) || v194 && v202 && [v194 isEqual:v202])
            {

              v203 = [v185 tokenKeyInfo];
              v204 = [v190 tokenKeyInfo];
              v194 = v203;
              v205 = v204;
              v196 = v205;
              if (!(v194 | v205) || v194 && v205 && [v194 isEqual:v205])
              {

                v206 = [v185 preferredPathConfigUri];
                v207 = [v190 preferredPathConfigUri];
                v194 = v206;
                v208 = v207;
                v196 = v208;
                if (!(v194 | v208) || v194 && v208 && [v194 isEqual:v208])
                {

                  v209 = [v185 tokenChallenge];
                  v210 = [v190 tokenChallenge];
                  v194 = v209;
                  v211 = v210;
                  v196 = v211;
                  if (!(v194 | v211) || v194 && v211 && [v194 isEqual:v211])
                  {

                    v212 = [v185 bootstrapAddresses];
                    v213 = [v190 bootstrapAddresses];
                    v194 = v212;
                    v214 = v213;
                    v196 = v214;
                    if (!(v194 | v214) || v194 && v214 && [v194 isEqual:v214])
                    {

                      v215 = [v185 allowedNextHops];
                      v216 = [v190 allowedNextHops];
                      v194 = v215;
                      v217 = v216;
                      v196 = v217;
                      if (!(v194 | v217) || v194 && v217 && [v194 isEqual:v217])
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

LABEL_240:
        if (v187 == ++v189)
        {
          v187 = [v186 countByEnumeratingWithState:&v667 objects:v699 count:16];
          if (!v187)
          {
            goto LABEL_299;
          }

          goto LABEL_190;
        }
      }

      v218 = [v185 preferredPathPatterns];
      v219 = [v190 preferredPathPatterns];
      v220 = sub_1000904EC(v218, v219);

      if (v220)
      {
        goto LABEL_240;
      }

      v221 = [v185 proxyVersion];
      v222 = [v190 proxyVersion];
      v223 = sub_1000904EC(v221, v222);

      if (v223)
      {
        goto LABEL_240;
      }

      v224 = [v185 fallbackSupportsUDPProxying];
      if (v224 != [v190 fallbackSupportsUDPProxying])
      {
        goto LABEL_240;
      }

      v225 = [v185 algorithm];
      if (v225 != [v190 algorithm])
      {
        goto LABEL_240;
      }

      v226 = [v185 proxyIndex];
      if (v226 != [v190 proxyIndex])
      {
        goto LABEL_240;
      }

      v183 = v574 + 1;
      v182 = v568;
    }

    while (v574 + 1 != v576);
    v576 = [obja countByEnumeratingWithState:&v671 objects:v700 count:16];
    v182 = v568;
  }

  while (v576);
LABEL_245:

LABEL_246:
  v227 = [v540 proxyConfiguration];
  v551 = [v227 pathWeights];

  v228 = [v539 proxyConfiguration];
  v569 = [v228 pathWeights];

  v229 = [v551 count];
  if (v229 != [v569 count])
  {
    v263 = nplog_obj();
    if (os_log_type_enabled(v263, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v551;
      _os_log_impl(&_mh_execute_header, v263, OS_LOG_TYPE_DEFAULT, "proxy path list updated to %@", &buf, 0xCu);
    }

    sub_100089D94(v541);
LABEL_308:
    v534 = 1;
    goto LABEL_309;
  }

  if (![v551 count])
  {
    goto LABEL_271;
  }

  v666 = 0u;
  v665 = 0u;
  v664 = 0u;
  v663 = 0u;
  v546 = v551;
  v563 = [v546 countByEnumeratingWithState:&v663 objects:v698 count:16];
  if (!v563)
  {
    goto LABEL_270;
  }

  v557 = *v664;
  while (2)
  {
    v230 = 0;
    while (2)
    {
      if (*v664 != v557)
      {
        v231 = v230;
        objc_enumerationMutation(v546);
        v230 = v231;
      }

      v574 = v230;
      v232 = *(*(&v663 + 1) + 8 * v230);
      v659 = 0u;
      v660 = 0u;
      v661 = 0u;
      v662 = 0u;
      v577 = v569;
      v233 = [v577 countByEnumeratingWithState:&v659 objects:v697 count:16];
      if (!v233)
      {
LABEL_305:

        v264 = nplog_obj();
        if (os_log_type_enabled(v264, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v546;
          _os_log_impl(&_mh_execute_header, v264, OS_LOG_TYPE_DEFAULT, "proxy path updated to %@", &buf, 0xCu);
        }

        sub_100089D94(v541);
        goto LABEL_308;
      }

      objb = *v660;
      while (2)
      {
        v234 = 0;
LABEL_256:
        if (*v660 != objb)
        {
          objc_enumerationMutation(v577);
        }

        v235 = *(*(&v659 + 1) + 8 * v234);
        v236 = [v232 weight];
        if (v236 != [v235 weight] || (v237 = objc_msgSend(v232, "proxiesCount"), v237 != objc_msgSend(v235, "proxiesCount")))
        {
LABEL_265:
          if (++v234 == v233)
          {
            v233 = [v577 countByEnumeratingWithState:&v659 objects:v697 count:16];
            if (!v233)
            {
              goto LABEL_305;
            }

            continue;
          }

          goto LABEL_256;
        }

        break;
      }

      if ([v232 proxiesCount])
      {
        v238 = 0;
        do
        {
          v239 = [v524 objectAtIndex:{*(objc_msgSend(v232, "proxies") + v238)}];
          v240 = [v522 objectAtIndex:{*(objc_msgSend(v235, "proxies") + v238)}];
          v241 = [v239 proxyURL];
          v242 = [v240 proxyURL];
          v243 = [v241 isEqualToString:v242];

          if ((v243 & 1) == 0)
          {
            goto LABEL_265;
          }
        }

        while (++v238 < [v232 proxiesCount]);
      }

      v230 = v574 + 1;
      if (v574 + 1 != v563)
      {
        continue;
      }

      break;
    }

    v563 = [v546 countByEnumeratingWithState:&v663 objects:v698 count:16];
    if (v563)
    {
      continue;
    }

    break;
  }

LABEL_270:

LABEL_271:
  v244 = [v540 proxyConfiguration];
  v552 = [v244 fallbackPathWeights];

  v245 = [v539 proxyConfiguration];
  v570 = [v245 fallbackPathWeights];

  v246 = [v552 count];
  if (v246 == [v570 count])
  {
    if (![v552 count])
    {
      goto LABEL_646;
    }

    v658 = 0u;
    v657 = 0u;
    v656 = 0u;
    v655 = 0u;
    v547 = v552;
    v564 = [v547 countByEnumeratingWithState:&v655 objects:v696 count:16];
    if (!v564)
    {
      goto LABEL_645;
    }

    v558 = *v656;
    while (1)
    {
      v247 = 0;
LABEL_276:
      if (*v656 != v558)
      {
        v248 = v247;
        objc_enumerationMutation(v547);
        v247 = v248;
      }

      v574 = v247;
      v249 = *(*(&v655 + 1) + 8 * v247);
      v651 = 0u;
      v652 = 0u;
      v653 = 0u;
      v654 = 0u;
      v578 = v570;
      v250 = [v578 countByEnumeratingWithState:&v651 objects:v695 count:16];
      if (!v250)
      {
LABEL_642:

        v497 = nplog_obj();
        if (os_log_type_enabled(v497, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v547;
          _os_log_impl(&_mh_execute_header, v497, OS_LOG_TYPE_DEFAULT, "fallback proxy path updated to %@", &buf, 0xCu);
        }

        sub_100089D94(v541);
        v534 = 1;
        goto LABEL_645;
      }

      objc = *v652;
LABEL_280:
      v251 = 0;
      while (1)
      {
        if (*v652 != objc)
        {
          objc_enumerationMutation(v578);
        }

        v252 = *(*(&v651 + 1) + 8 * v251);
        v253 = [v249 weight];
        if (v253 == [v252 weight])
        {
          v254 = [v249 proxiesCount];
          if (v254 == [v252 proxiesCount])
          {
            break;
          }
        }

LABEL_290:
        if (++v251 == v250)
        {
          v250 = [v578 countByEnumeratingWithState:&v651 objects:v695 count:16];
          if (v250)
          {
            goto LABEL_280;
          }

          goto LABEL_642;
        }
      }

      if ([v249 proxiesCount])
      {
        break;
      }

LABEL_293:

      v247 = v574 + 1;
      if (v574 + 1 != v564)
      {
        goto LABEL_276;
      }

      v564 = [v547 countByEnumeratingWithState:&v655 objects:v696 count:16];
      if (!v564)
      {
LABEL_645:

        goto LABEL_646;
      }
    }

    v255 = 0;
    while (1)
    {
      v256 = [v524 objectAtIndex:{*(objc_msgSend(v249, "proxies") + v255)}];
      v257 = [v522 objectAtIndex:{*(objc_msgSend(v252, "proxies") + v255)}];
      v258 = [v256 proxyURL];
      v259 = [v257 proxyURL];
      v260 = [v258 isEqualToString:v259];

      if ((v260 & 1) == 0)
      {
        goto LABEL_290;
      }

      if (++v255 >= [v249 proxiesCount])
      {
        goto LABEL_293;
      }
    }
  }

  v365 = nplog_obj();
  if (os_log_type_enabled(v365, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v552;
    _os_log_impl(&_mh_execute_header, v365, OS_LOG_TYPE_DEFAULT, "fallback proxy path list updated to %@", &buf, 0xCu);
  }

  sub_100089D94(v541);
  v534 = 1;
LABEL_646:

LABEL_309:
  v265 = [v540 proxyConfiguration];
  v516 = [v265 resolvers];

  v266 = [v539 proxyConfiguration];
  v518 = [v266 resolvers];

  v267 = [v516 count];
  if (v267 == [v518 count])
  {
    if ([v516 count])
    {
      v650 = 0u;
      v649 = 0u;
      v648 = 0u;
      v647 = 0u;
      v574 = v516;
      objd = [v574 countByEnumeratingWithState:&v647 objects:v694 count:16];
      if (objd)
      {
        v579 = *v648;
        while (2)
        {
          for (i = 0; i != objd; i = i + 1)
          {
            if (*v648 != v579)
            {
              objc_enumerationMutation(v574);
            }

            v269 = *(*(&v647 + 1) + 8 * i);
            v643 = 0u;
            v644 = 0u;
            v645 = 0u;
            v646 = 0u;
            v270 = v518;
            v271 = [v270 countByEnumeratingWithState:&v643 objects:v693 count:16];
            if (!v271)
            {

LABEL_379:
              v308 = nplog_obj();
              if (os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v574;
                _os_log_impl(&_mh_execute_header, v308, OS_LOG_TYPE_DEFAULT, "resolver info updated to %@", &buf, 0xCu);
              }

              sub_100089F10(v541, 1);
              goto LABEL_382;
            }

            v272 = 0;
            v273 = *v644;
            do
            {
              for (j = 0; j != v271; j = j + 1)
              {
                if (*v644 != v273)
                {
                  objc_enumerationMutation(v270);
                }

                v275 = *(*(&v643 + 1) + 8 * j);
                v276 = [v269 dohURL];
                v277 = [v275 dohURL];
                v278 = v276;
                v279 = v277;
                v280 = v279;
                if (v278 | v279 && (!v278 || !v279 || ![v278 isEqual:v279]))
                {
                  goto LABEL_331;
                }

                v281 = [v269 obliviousDoHConfig];
                v282 = [v275 obliviousDoHConfig];
                v278 = v281;
                v283 = v282;
                v280 = v283;
                if (!(v278 | v283) || v278 && v283 && [v278 isEqual:v283])
                {

                  v284 = [v269 weight];
                  v272 |= v284 == [v275 weight];
                }

                else
                {
LABEL_331:
                }
              }

              v271 = [v270 countByEnumeratingWithState:&v643 objects:v693 count:16];
            }

            while (v271);

            if ((v272 & 1) == 0)
            {
              goto LABEL_379;
            }
          }

          objd = [v574 countByEnumeratingWithState:&v647 objects:v694 count:16];
          if (objd)
          {
            continue;
          }

          break;
        }
      }
    }

    v642 = 0u;
    v640 = 0u;
    v641 = 0u;
    v639 = 0u;
    v285 = [v540 proxyConfiguration];
    obje = [v285 policyTierMaps];

    v580 = [obje countByEnumeratingWithState:&v639 objects:v692 count:16];
    if (v580)
    {
      v286 = 0;
      v287 = 0;
      v574 = *v640;
      while (1)
      {
        for (k = 0; k != v580; k = k + 1)
        {
          if (*v640 != v574)
          {
            objc_enumerationMutation(obje);
          }

          v289 = *(*(&v639 + 1) + 8 * k);
          v635 = 0u;
          v636 = 0u;
          v637 = 0u;
          v638 = 0u;
          v290 = [v539 proxyConfiguration];
          v291 = [v290 policyTierMaps];

          v292 = [v291 countByEnumeratingWithState:&v635 objects:v691 count:16];
          if (!v292)
          {
            goto LABEL_363;
          }

          v293 = *v636;
          while (2)
          {
            for (m = 0; m != v292; m = m + 1)
            {
              if (*v636 != v293)
              {
                objc_enumerationMutation(v291);
              }

              v295 = *(*(&v635 + 1) + 8 * m);
              v296 = [v289 tier];
              if (v296 == [v295 tier])
              {
                v297 = [v289 policy];

                v298 = [v295 policy];

                v299 = [v297 conditionsCount];
                if (v299 == [v298 conditionsCount])
                {
                  if (![v297 conditionsCount] || !objc_msgSend(v297, "conditionsCount"))
                  {
LABEL_362:
                    v287 = v298;
                    v286 = v297;
                    goto LABEL_363;
                  }

                  v300 = 0;
                  while (1)
                  {
                    v301 = *([v297 conditions] + v300);
                    if (![v298 conditionsCount])
                    {
                      break;
                    }

                    v302 = 0;
                    while (*([v298 conditions] + v302) != v301)
                    {
                      if (++v302 >= [v298 conditionsCount])
                      {
                        goto LABEL_369;
                      }
                    }

                    if (++v300 >= [v297 conditionsCount])
                    {
                      goto LABEL_362;
                    }
                  }

LABEL_369:
                  v304 = nplog_obj();
                  if (os_log_type_enabled(v304, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf) = 138412290;
                    *(&buf + 4) = v297;
                    goto LABEL_371;
                  }
                }

                else
                {
                  v304 = nplog_obj();
                  if (os_log_type_enabled(v304, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf) = 138412290;
                    *(&buf + 4) = v297;
LABEL_371:
                    _os_log_impl(&_mh_execute_header, v304, OS_LOG_TYPE_DEFAULT, "policy information updated to %@", &buf, 0xCu);
                  }
                }

                sub_100089F10(v541, 0);
                v534 = 1;
                goto LABEL_377;
              }
            }

            v292 = [v291 countByEnumeratingWithState:&v635 objects:v691 count:16];
            if (v292)
            {
              continue;
            }

            break;
          }

LABEL_363:
        }

        v580 = [obje countByEnumeratingWithState:&v639 objects:v692 count:16];
        if (!v580)
        {
          goto LABEL_374;
        }
      }
    }

    v286 = 0;
    v287 = 0;
LABEL_374:

    v305 = [v540 proxyTrafficState];
    v306 = [v539 proxyTrafficState];
    v307 = sub_1000904EC(v305, v306);

    if (v307)
    {
      sub_100089F10(v541, 0);
      v534 = 1;
    }

    v298 = v287;
    v297 = v286;
LABEL_377:
  }

  else
  {
    v303 = nplog_obj();
    if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v516;
      _os_log_impl(&_mh_execute_header, v303, OS_LOG_TYPE_DEFAULT, "resolver info updated to %@", &buf, 0xCu);
    }

    sub_100089F10(v541, 1);
LABEL_382:
    v534 = 1;
  }

  v309 = [v540 proxyConfiguration];
  v514 = [v309 obliviousConfigs];

  v310 = [v539 proxyConfiguration];
  v512 = [v310 obliviousConfigs];

  v311 = [v514 count];
  if (v311 == [v512 count])
  {
    if ([v514 count])
    {
      v633 = 0u;
      v634 = 0u;
      v631 = 0u;
      v632 = 0u;
      v504 = v514;
      v508 = [v504 countByEnumeratingWithState:&v631 objects:v690 count:16];
      if (!v508)
      {
        goto LABEL_474;
      }

      v506 = *v632;
LABEL_387:
      v312 = 0;
LABEL_388:
      if (*v632 != v506)
      {
        v313 = v312;
        objc_enumerationMutation(v504);
        v312 = v313;
      }

      v510 = v312;
      v559 = *(*(&v631 + 1) + 8 * v312);
      v627 = 0u;
      v628 = 0u;
      v629 = 0u;
      v630 = 0u;
      v537 = v512;
      v548 = [v537 countByEnumeratingWithState:&v627 objects:v689 count:16];
      if (v548)
      {
        v520 = 0;
        v543 = *v628;
        while (1)
        {
          v314 = 0;
          do
          {
            if (*v628 != v543)
            {
              v315 = v314;
              objc_enumerationMutation(v537);
              v314 = v315;
            }

            v553 = v314;
            v565 = *(*(&v627 + 1) + 8 * v314);
            v316 = [v559 obliviousHTTPConfig];
            v317 = [v565 obliviousHTTPConfig];
            v318 = v316;
            v319 = v317;
            v320 = v319;
            v571 = v318;
            v574 = v319;
            if (v318 | v319)
            {
              v324 = v319;
              if (!v318)
              {
                goto LABEL_455;
              }

              v324 = v319;
              if (!v319)
              {
                goto LABEL_455;
              }

              v363 = [v318 isEqual:v319];
              v320 = v574;
              v324 = v574;
              if (!v363)
              {
                goto LABEL_455;
              }
            }

            v321 = [v559 transparencyKeyBundle];
            v322 = [v565 transparencyKeyBundle];
            v318 = v321;
            v323 = v322;
            v324 = v323;
            if (v318 | v323)
            {
              v329 = v323;
              v327 = v318;
              if (!v318)
              {
                goto LABEL_454;
              }

              v329 = v323;
              v327 = v318;
              if (!v323)
              {
                goto LABEL_454;
              }

              v329 = v323;
              v327 = v318;
              if (![v318 isEqual:v323])
              {
                goto LABEL_454;
              }
            }

            v325 = [v559 transparencyProof];
            v326 = [v565 transparencyProof];
            v327 = v325;
            v328 = v326;
            v329 = v328;
            if (v327 | v328)
            {
              v334 = v328;
              v332 = v327;
              if (!v327)
              {
                goto LABEL_453;
              }

              v334 = v328;
              v332 = v327;
              if (!v328)
              {
                goto LABEL_453;
              }

              v334 = v328;
              v332 = v327;
              if (![v327 isEqual:v328])
              {
                goto LABEL_453;
              }
            }

            v330 = [v559 transparencyInternalProof];
            v331 = [v565 transparencyInternalProof];
            v332 = v330;
            v333 = v331;
            v334 = v333;
            if (v332 | v333 && (!v332 || !v333 || ![v332 isEqual:v333]))
            {

LABEL_453:
LABEL_454:

LABEL_455:
LABEL_456:

              goto LABEL_457;
            }

            v335 = [v559 obliviousHTTPType];
            if (v335 != [v565 obliviousHTTPType])
            {
              goto LABEL_453;
            }

            v336 = [v559 obliviousTargets];
            v337 = [v336 count];
            v338 = [v565 obliviousTargets];
            v339 = v337 == [v338 count];

            if (!v339)
            {
              goto LABEL_458;
            }

            v625 = 0u;
            v626 = 0u;
            v623 = 0u;
            v624 = 0u;
            v571 = [v559 obliviousTargets];
            v529 = [v571 countByEnumeratingWithState:&v623 objects:v688 count:16];
            if (!v529)
            {
              goto LABEL_436;
            }

            v526 = *v624;
            while (2)
            {
              v340 = 0;
              while (2)
              {
                if (*v624 != v526)
                {
                  v341 = v340;
                  objc_enumerationMutation(v571);
                  v340 = v341;
                }

                v532 = v340;
                v342 = *(*(&v623 + 1) + 8 * v340);
                v619 = 0u;
                v620 = 0u;
                v621 = 0u;
                v622 = 0u;
                v574 = [v565 obliviousTargets];
                objf = [v574 countByEnumeratingWithState:&v619 objects:v687 count:16];
                if (!objf)
                {
                  goto LABEL_456;
                }

                v581 = *v620;
LABEL_408:
                v343 = 0;
                while (1)
                {
                  if (*v620 != v581)
                  {
                    objc_enumerationMutation(v574);
                  }

                  v344 = *(*(&v619 + 1) + 8 * v343);
                  v345 = [v342 targetHost];
                  v346 = [v344 targetHost];
                  v347 = v345;
                  v348 = v346;
                  v349 = v348;
                  if (v347 | v348)
                  {
                    v354 = v348;
                    v352 = v347;
                    if (!v347)
                    {
                      goto LABEL_430;
                    }

                    v354 = v348;
                    v352 = v347;
                    if (!v348)
                    {
                      goto LABEL_430;
                    }

                    v354 = v348;
                    v352 = v347;
                    if (![v347 isEqual:v348])
                    {
                      goto LABEL_430;
                    }
                  }

                  v350 = [v342 proxyURLPath];
                  v351 = [v344 proxyURLPath];
                  v352 = v350;
                  v353 = v351;
                  v354 = v353;
                  if (v352 | v353)
                  {
                    v359 = v353;
                    v357 = v352;
                    if (!v352)
                    {
                      goto LABEL_429;
                    }

                    v359 = v353;
                    v357 = v352;
                    if (!v353)
                    {
                      goto LABEL_429;
                    }

                    v359 = v353;
                    v357 = v352;
                    if (![v352 isEqual:v353])
                    {
                      goto LABEL_429;
                    }
                  }

                  v355 = [v342 processes];
                  v356 = [v344 processes];
                  v357 = v355;
                  v358 = v356;
                  v359 = v358;
                  if (v357 | v358 && (!v357 || !v358 || ([v357 isEqual:v358] & 1) == 0))
                  {

LABEL_429:
LABEL_430:

                    goto LABEL_431;
                  }

                  v360 = [v342 proxyIndex];
                  if (v360 != [v344 proxyIndex])
                  {
                    goto LABEL_429;
                  }

                  v361 = [v342 weight];
                  v362 = v361 == [v344 weight];

                  if (v362)
                  {
                    break;
                  }

LABEL_431:
                  if (objf == ++v343)
                  {
                    objf = [v574 countByEnumeratingWithState:&v619 objects:v687 count:16];
                    if (objf)
                    {
                      goto LABEL_408;
                    }

                    goto LABEL_456;
                  }
                }

                v340 = v532 + 1;
                if ((v532 + 1) != v529)
                {
                  continue;
                }

                break;
              }

              v529 = [v571 countByEnumeratingWithState:&v623 objects:v688 count:16];
              if (v529)
              {
                continue;
              }

              break;
            }

LABEL_436:
            v520 = 1;
LABEL_457:

LABEL_458:
            v314 = v553 + 1;
          }

          while (v553 + 1 != v548);
          v548 = [v537 countByEnumeratingWithState:&v627 objects:v689 count:16];
          if (!v548)
          {

            if ((v520 & 1) == 0)
            {
              goto LABEL_471;
            }

            v312 = v510 + 1;
            if ((v510 + 1) == v508)
            {
              v508 = [v504 countByEnumeratingWithState:&v631 objects:v690 count:16];
              if (!v508)
              {
                goto LABEL_474;
              }

              goto LABEL_387;
            }

            goto LABEL_388;
          }
        }
      }

LABEL_471:
      v366 = nplog_obj();
      if (os_log_type_enabled(v366, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v504;
        _os_log_impl(&_mh_execute_header, v366, OS_LOG_TYPE_DEFAULT, "oblivious configs updated to %@", &buf, 0xCu);
      }

      sub_100089D94(v541);
      v534 = 1;
LABEL_474:
    }
  }

  else
  {
    v364 = nplog_obj();
    if (os_log_type_enabled(v364, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v514;
      _os_log_impl(&_mh_execute_header, v364, OS_LOG_TYPE_DEFAULT, "oblivious configs updated to %@", &buf, 0xCu);
    }

    sub_100089D94(v541);
    v534 = 1;
  }

  v367 = [v540 proxyConfiguration];
  v368 = [v367 hasPreferredPathEnabledPercentage];
  v369 = [v539 proxyConfiguration];
  if (v368 == [v369 hasPreferredPathEnabledPercentage])
  {
    v370 = [v540 proxyConfiguration];
    v371 = [v370 preferredPathEnabledPercentage];
    v372 = [v539 proxyConfiguration];
    LOBYTE(v371) = v371 == [v372 preferredPathEnabledPercentage];

    if (v371)
    {
      goto LABEL_481;
    }
  }

  else
  {
  }

  v373 = nplog_obj();
  if (os_log_type_enabled(v373, OS_LOG_TYPE_DEFAULT))
  {
    v374 = [v539 proxyConfiguration];
    v375 = [v374 hasPreferredPathEnabledPercentage];
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v375;
    _os_log_impl(&_mh_execute_header, v373, OS_LOG_TYPE_DEFAULT, "preferred path enabled percentage changed to %u", &buf, 8u);
  }

  v534 = 1;
LABEL_481:
  v376 = [v540 proxyConfiguration];
  v549 = [v376 proxiedContentMaps];

  v377 = [v539 proxyConfiguration];
  v566 = [v377 proxiedContentMaps];

  v378 = [v549 count];
  if (v378 == [v566 count])
  {
    if ([v549 count])
    {
      v617 = 0u;
      v618 = 0u;
      v615 = 0u;
      v616 = 0u;
      v554 = v549;
      v572 = [v554 countByEnumeratingWithState:&v615 objects:v686 count:16];
      if (!v572)
      {
        goto LABEL_539;
      }

      v560 = *v616;
LABEL_485:
      v379 = 0;
LABEL_486:
      if (*v616 != v560)
      {
        v380 = v379;
        objc_enumerationMutation(v554);
        v379 = v380;
      }

      v574 = v379;
      v381 = *(*(&v615 + 1) + 8 * v379);
      v611 = 0u;
      v612 = 0u;
      v613 = 0u;
      v614 = 0u;
      objg = v566;
      v382 = [objg countByEnumeratingWithState:&v611 objects:v685 count:16];
      if (v382)
      {
        v383 = 0;
        v384 = *v612;
        while (1)
        {
          v385 = 0;
          do
          {
            v386 = v383;
            if (*v612 != v384)
            {
              objc_enumerationMutation(objg);
            }

            v387 = *(*(&v611 + 1) + 8 * v385);
            v388 = [v381 identifier];
            v389 = [v387 identifier];
            v390 = v388;
            v391 = v389;
            v392 = v391;
            if (v390 | v391 && (!v390 || !v391 || ![v390 isEqual:v391]))
            {
              v404 = v392;
              v402 = v390;
LABEL_514:

LABEL_515:
              v383 = v386;
              goto LABEL_516;
            }

            v393 = [v381 enabled];
            if (v393 != [v387 enabled])
            {
              goto LABEL_515;
            }

            v394 = [v381 systemProcessOnly];
            if (v394 != [v387 systemProcessOnly])
            {
              goto LABEL_515;
            }

            v395 = [v381 matchExactHostnames];
            if (v395 != [v387 matchExactHostnames])
            {
              goto LABEL_515;
            }

            v396 = [v381 isPrivacyProxy];
            if (v396 != [v387 isPrivacyProxy])
            {
              goto LABEL_515;
            }

            v397 = [v381 proxiesCount];
            if (v397 != [v387 proxiesCount])
            {
              goto LABEL_515;
            }

            v398 = [v381 hasResolver];
            if (v398 != [v387 hasResolver])
            {
              goto LABEL_515;
            }

            v399 = [v381 resolver];
            if (v399 != [v387 resolver])
            {
              goto LABEL_515;
            }

            v400 = [v381 hostnames];
            v401 = [v387 hostnames];
            v402 = v400;
            v403 = v401;
            v404 = v403;
            if (v402 | v403 && (!v402 || !v403 || ![v402 isEqual:v403]))
            {
              v392 = v404;
              v390 = v402;
              goto LABEL_514;
            }

            v405 = [v381 processes];
            v406 = [v387 processes];
            v390 = v405;
            v407 = v406;
            v392 = v407;
            if (v390 | v407 && (!v390 || !v407 || ([v390 isEqual:v407] & 1) == 0))
            {

              goto LABEL_514;
            }

            v582 = [v381 hasPercentEnabled];
            if (v582 != [v387 hasPercentEnabled])
            {
              goto LABEL_514;
            }

            v583 = [v381 percentEnabled];
            v584 = v583 == [v387 percentEnabled];

            if (!v584)
            {
              goto LABEL_515;
            }

            if ([v381 proxiesCount])
            {
              v408 = 0;
              while (1)
              {
                v409 = *([v381 proxies] + v408);
                if (v409 != *([v387 proxies] + v408))
                {
                  goto LABEL_515;
                }

                ++v408;
                v383 = 1;
                if (v408 >= [v381 proxiesCount])
                {
                  goto LABEL_516;
                }
              }
            }

            v383 = 1;
LABEL_516:
            v385 = v385 + 1;
          }

          while (v385 != v382);
          v410 = [objg countByEnumeratingWithState:&v611 objects:v685 count:16];
          v382 = v410;
          if (!v410)
          {

            if ((v383 & 1) == 0)
            {
              goto LABEL_536;
            }

            v379 = v574 + 1;
            if (v574 + 1 == v572)
            {
              v572 = [v554 countByEnumeratingWithState:&v615 objects:v686 count:16];
              if (!v572)
              {
                goto LABEL_539;
              }

              goto LABEL_485;
            }

            goto LABEL_486;
          }
        }
      }

LABEL_536:
      v412 = nplog_obj();
      if (os_log_type_enabled(v412, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v554;
        _os_log_impl(&_mh_execute_header, v412, OS_LOG_TYPE_DEFAULT, "proxied content maps updated to %@", &buf, 0xCu);
      }

      sub_100089D94(v541);
      v534 = 1;
LABEL_539:
    }
  }

  else
  {
    v411 = nplog_obj();
    if (os_log_type_enabled(v411, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v549;
      _os_log_impl(&_mh_execute_header, v411, OS_LOG_TYPE_DEFAULT, "proxied content maps updated to %@", &buf, 0xCu);
    }

    sub_100089D94(v541);
    v534 = 1;
  }

  v413 = [v540 geohashSharingEnabledStatus];
  v414 = [v539 geohashSharingEnabledStatus];
  v415 = sub_1000904EC(v413, v414);

  if (v415)
  {
    v416 = nplog_obj();
    if (os_log_type_enabled(v416, OS_LOG_TYPE_DEFAULT))
    {
      v417 = [v540 geohashSharingEnabledStatus];
      v418 = [v417 BOOLValue];
      v419 = "disabled";
      if (v418)
      {
        v419 = "enabled";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v419;
      _os_log_impl(&_mh_execute_header, v416, OS_LOG_TYPE_DEFAULT, "Geohash sharing preference changed to %s", &buf, 0xCu);
    }

    sub_10008A0CC(v541);
    v534 = 1;
  }

  v420 = [v540 geohashOverride];
  v421 = [v539 geohashOverride];
  v422 = v421;
  if (v420 == v421)
  {
  }

  else
  {
    v423 = [v540 geohashOverride];
    v424 = [v539 geohashOverride];
    v425 = [v423 isEqualToString:v424];

    if ((v425 & 1) == 0)
    {
      v426 = nplog_obj();
      if (os_log_type_enabled(v426, OS_LOG_TYPE_DEFAULT))
      {
        v427 = [v540 geohashOverride];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v427;
        _os_log_impl(&_mh_execute_header, v426, OS_LOG_TYPE_DEFAULT, "Geohash override changed to %@", &buf, 0xCu);
      }

      sub_10008A0CC(v541);
      v534 = 1;
    }
  }

  v428 = [v540 epoch];
  v429 = [v539 epoch];
  v430 = sub_1000904EC(v428, v429);

  if (v430)
  {
    v431 = nplog_obj();
    if (os_log_type_enabled(v431, OS_LOG_TYPE_DEFAULT))
    {
      v432 = [v540 epoch];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v432;
      _os_log_impl(&_mh_execute_header, v431, OS_LOG_TYPE_DEFAULT, "Configuration epoch changed to %@", &buf, 0xCu);
    }

    sub_10008A248(v541);
    v534 = 1;
  }

  v433 = [v540 preferredPathRoutingEnabledStatus];
  v434 = [v539 preferredPathRoutingEnabledStatus];
  v435 = sub_1000904EC(v433, v434);

  if (v435)
  {
    v436 = nplog_obj();
    if (os_log_type_enabled(v436, OS_LOG_TYPE_DEFAULT))
    {
      v437 = [v540 preferredPathRoutingEnabledStatus];
      v438 = [v437 BOOLValue];
      v439 = "disabled";
      if (v438)
      {
        v439 = "enabled";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v439;
      _os_log_impl(&_mh_execute_header, v436, OS_LOG_TYPE_DEFAULT, "Preferred path routing enabled changed to %s", &buf, 0xCu);
    }

    v534 = 1;
  }

  v440 = [v540 privateAccessTokensEnabledStatus];
  v441 = [v539 privateAccessTokensEnabledStatus];
  v442 = sub_1000904EC(v440, v441);

  if (v442)
  {
    v443 = nplog_obj();
    if (os_log_type_enabled(v443, OS_LOG_TYPE_DEFAULT))
    {
      v444 = [v540 privateAccessTokensEnabledStatus];
      v445 = [v444 BOOLValue];
      v446 = "disabled";
      if (v445)
      {
        v446 = "enabled";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v446;
      _os_log_impl(&_mh_execute_header, v443, OS_LOG_TYPE_DEFAULT, "Private access tokens preference changed to %s", &buf, 0xCu);
    }

    sub_10008A3C4(v541);
    v534 = 1;
  }

  v447 = [v540 privateAccessTokensAllowTools];
  v448 = [v539 privateAccessTokensAllowTools];
  v449 = sub_1000904EC(v447, v448);

  if (v449)
  {
    v450 = nplog_obj();
    if (os_log_type_enabled(v450, OS_LOG_TYPE_DEFAULT))
    {
      v451 = [v540 privateAccessTokensAllowTools];
      v452 = [v451 BOOLValue];
      v453 = "disallowed";
      if (v452)
      {
        v453 = "allowed";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v453;
      _os_log_impl(&_mh_execute_header, v450, OS_LOG_TYPE_DEFAULT, "Private access tokens allow tools changed to %s", &buf, 0xCu);
    }

    v534 = 1;
  }

  v454 = [v540 inProcessFlowDivert];
  v455 = [v539 inProcessFlowDivert];
  v456 = sub_1000904EC(v454, v455);

  if (v456)
  {
    v457 = nplog_obj();
    if (os_log_type_enabled(v457, OS_LOG_TYPE_DEFAULT))
    {
      v458 = [v540 inProcessFlowDivert];
      v459 = [v458 BOOLValue];
      v460 = "disabled";
      if (v459)
      {
        v460 = "enabled";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v460;
      _os_log_impl(&_mh_execute_header, v457, OS_LOG_TYPE_DEFAULT, "In-process flow divert support changed to %s", &buf, 0xCu);
    }

    v534 = 1;
  }

  v461 = [v540 proxyConfiguration];
  v544 = [v461 trustedNetworkDiscoveredProxies];

  v462 = [v539 proxyConfiguration];
  v573 = [v462 trustedNetworkDiscoveredProxies];

  v463 = [v544 count];
  if (v463 == [v573 count])
  {
    if ([v544 count])
    {
      v609 = 0u;
      v610 = 0u;
      v607 = 0u;
      v608 = 0u;
      v464 = v544;
      v465 = [v464 countByEnumeratingWithState:&v607 objects:v684 count:16];
      if (v465)
      {
        v466 = *v608;
        while (1)
        {
          v467 = 0;
LABEL_585:
          if (*v608 != v466)
          {
            objc_enumerationMutation(v464);
          }

          v468 = *(*(&v607 + 1) + 8 * v467);
          v603 = 0u;
          v604 = 0u;
          v605 = 0u;
          v606 = 0u;
          v469 = v573;
          v470 = [v469 countByEnumeratingWithState:&v603 objects:v683 count:16];
          if (!v470)
          {
            break;
          }

          v471 = *v604;
LABEL_589:
          v472 = 0;
          while (1)
          {
            if (*v604 != v471)
            {
              objc_enumerationMutation(v469);
            }

            if ([v468 isEqualToString:*(*(&v603 + 1) + 8 * v472)])
            {
              break;
            }

            if (v470 == ++v472)
            {
              v470 = [v469 countByEnumeratingWithState:&v603 objects:v683 count:16];
              if (v470)
              {
                goto LABEL_589;
              }

              goto LABEL_602;
            }
          }

          if (++v467 != v465)
          {
            goto LABEL_585;
          }

          v465 = [v464 countByEnumeratingWithState:&v607 objects:v684 count:16];
          if (!v465)
          {
            goto LABEL_605;
          }
        }

LABEL_602:

        v474 = nplog_obj();
        if (os_log_type_enabled(v474, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v474, OS_LOG_TYPE_DEFAULT, "trusted network discovered proxies changed", &buf, 2u);
        }

        sub_100089D94(v541);
        v534 = 1;
      }

LABEL_605:
    }
  }

  else
  {
    v473 = nplog_obj();
    if (os_log_type_enabled(v473, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v473, OS_LOG_TYPE_DEFAULT, "trusted network discovered proxies count changed", &buf, 2u);
    }

    sub_100089D94(v541);
    v534 = 1;
  }

  v475 = [v540 proxyConfiguration];
  v476 = [v475 quotaInfo];
  v538 = [v476 quotaServices];

  v477 = [v539 proxyConfiguration];
  v478 = [v477 quotaInfo];
  v561 = [v478 quotaServices];

  v479 = [v538 count];
  if (v479 == [v561 count])
  {
    if (![v538 count])
    {
      goto LABEL_640;
    }

    v601 = 0u;
    v602 = 0u;
    v599 = 0u;
    v600 = 0u;
    v527 = v538;
    v533 = [v527 countByEnumeratingWithState:&v599 objects:v682 count:16];
    if (!v533)
    {
      goto LABEL_639;
    }

    v530 = *v600;
    while (1)
    {
      v480 = 0;
      while (2)
      {
        if (*v600 != v530)
        {
          v481 = v480;
          objc_enumerationMutation(v527);
          v480 = v481;
        }

        v555 = v480;
        v482 = *(*(&v599 + 1) + 8 * v480);
        v595 = 0u;
        v596 = 0u;
        v597 = 0u;
        v598 = 0u;
        v585 = v561;
        v483 = [v585 countByEnumeratingWithState:&v595 objects:v681 count:16];
        if (!v483)
        {
LABEL_636:

          v493 = nplog_obj();
          if (os_log_type_enabled(v493, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v493, OS_LOG_TYPE_DEFAULT, "quota services changed", &buf, 2u);
          }

          sub_100089D94(v541);
          v534 = 1;
          goto LABEL_639;
        }

        objh = *v596;
LABEL_615:
        v484 = 0;
        while (1)
        {
          if (*v596 != objh)
          {
            objc_enumerationMutation(v585);
          }

          v485 = *(*(&v595 + 1) + 8 * v484);
          v486 = [v482 serviceURL];
          v487 = [v485 serviceURL];
          if (![v486 isEqualToString:v487])
          {

            goto LABEL_626;
          }

          v488 = [v482 supportedUseCaseIdentifiers];
          if (!v488)
          {
            v574 = [v485 supportedUseCaseIdentifiers];
            if (!v574)
            {
              break;
            }
          }

          v489 = [v482 supportedUseCaseIdentifiers];
          v490 = [v485 supportedUseCaseIdentifiers];
          v491 = [v489 isEqualToArray:v490];

          if (v488)
          {
          }

          else
          {
          }

          if (v491)
          {
            goto LABEL_630;
          }

LABEL_626:
          if (v483 == ++v484)
          {
            v483 = [v585 countByEnumeratingWithState:&v595 objects:v681 count:16];
            if (v483)
            {
              goto LABEL_615;
            }

            goto LABEL_636;
          }
        }

        v574 = 0;
LABEL_630:

        v480 = v555 + 1;
        if (v555 + 1 != v533)
        {
          continue;
        }

        break;
      }

      v533 = [v527 countByEnumeratingWithState:&v599 objects:v682 count:16];
      if (!v533)
      {
LABEL_639:

        goto LABEL_640;
      }
    }
  }

  v492 = nplog_obj();
  if (os_log_type_enabled(v492, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v492, OS_LOG_TYPE_DEFAULT, "quota service count changed", &buf, 2u);
  }

  sub_100089D94(v541);
  v534 = 1;
LABEL_640:
  v494 = [v540 lastPrivateCloudComputeEnvironment];
  v495 = [v539 lastPrivateCloudComputeEnvironment];
  v496 = sub_1000904EC(v494, v495);

  if ((v496 | v534))
  {
    goto LABEL_147;
  }

LABEL_156:
}

- (void)setConfigurationTrialVersion:(int64_t)a3
{
  v4 = self;
  if (self)
  {
    self = self->_configuration;
  }

  v5 = [(NSPConfigurationManager *)self trialConfigVersion];
  v6 = [v5 longValue];

  if (v6 != a3)
  {
    if (v4)
    {
      configuration = v4->_configuration;
    }

    else
    {
      configuration = 0;
    }

    v9 = [(NSPConfiguration *)configuration copy];
    v8 = [NSNumber numberWithLong:a3];
    [v9 setTrialConfigVersion:v8];

    [(NSPConfigurationManager *)v4 updateConfiguration:v9];
  }
}

- (void)setResetDate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self)
    {
      configuration = self->_configuration;
    }

    else
    {
      configuration = 0;
    }

    v6 = [(NSPConfiguration *)configuration copy];
    v7 = [v6 willResetSubscriberTierTomorrow];

    if (!v7)
    {
      [v6 setWillResetSubscriberTierTomorrow:&off_1001142C0];
    }

    [v6 setResetTomorrowDate:v4];
    [(NSPConfigurationManager *)self updateConfiguration:v6];
  }

  else
  {
    v8 = nplog_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "[NSPConfigurationManager setResetDate:]";
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "%s called with null resetDate", &v9, 0xCu);
    }
  }
}

- (void)clearResetDate
{
  v2 = self;
  if (self)
  {
    self = self->_configuration;
  }

  v3 = [(NSPConfigurationManager *)self copy];
  [v3 setWillResetSubscriberTierTomorrow:&off_1001142C0];
  [v3 setResetTomorrowDate:0];
  [(NSPConfigurationManager *)v2 updateConfiguration:v3];
}

- (BOOL)setUserTier:(unint64_t)a3 resetDate:(id)a4 clearResetDate:(BOOL)a5 changeSource:(unint64_t)a6
{
  v7 = a5;
  v10 = a4;
  if (self)
  {
    configuration = self->_configuration;
  }

  else
  {
    configuration = 0;
  }

  v12 = [(NSPConfiguration *)configuration userTier];
  v13 = [v12 unsignedIntegerValue];

  if (v13 != a3)
  {
    if (self)
    {
      v19 = self->_configuration;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    v21 = [(NSPConfiguration *)v20 cloudSubscriptionCheckEnabled];
    if (v21)
    {
      v22 = v21;
      if (self)
      {
        v23 = self->_configuration;
      }

      else
      {
        v23 = 0;
      }

      v24 = [(NSPConfiguration *)v23 cloudSubscriptionCheckEnabled];
      v25 = [v24 BOOLValue];

      if (!v25)
      {
LABEL_37:
        if (self)
        {
          v38 = self->_configuration;
        }

        else
        {
          v38 = 0;
        }

        v39 = [(NSPConfiguration *)v38 copy];
        v40 = [NSNumber numberWithUnsignedInteger:a3];
        [v39 setUserTier:v40];

        v41 = [NSNumber numberWithUnsignedInteger:a3];
        [v39 setUserPreferredTier:v41];

        if (a3 == 2)
        {
          if (a6 == 1)
          {
            v42 = &off_1001142C0;
            goto LABEL_49;
          }

          if (a6 == 3)
          {
            v42 = &off_1001142D8;
LABEL_49:
            [v39 setSubscriberEnabledFromNonSettingsApp:v42];
          }
        }

        else if (a3 == 1 && v10)
        {
          [v39 setWillResetSubscriberTierTomorrow:&off_1001142D8];
          v43 = v39;
          v44 = v10;
          goto LABEL_52;
        }

        [v39 setWillResetSubscriberTierTomorrow:&off_1001142C0];
        if (!v7)
        {
LABEL_53:
          [(NSPConfigurationManager *)self updateConfiguration:v39];

LABEL_54:
          v29 = 1;
          goto LABEL_55;
        }

        v43 = v39;
        v44 = 0;
LABEL_52:
        [v43 setResetTomorrowDate:v44];
        goto LABEL_53;
      }
    }

    else
    {
    }

    if (self)
    {
      v32 = self->_configuration;
    }

    else
    {
      v32 = 0;
    }

    v33 = [(NSPConfiguration *)v32 proxyAccountType];

    if (v33)
    {
      if (self)
      {
        v34 = self->_configuration;
      }

      else
      {
        v34 = 0;
      }

      v35 = [(NSPConfiguration *)v34 proxyAccountType];
      v36 = [v35 unsignedIntegerValue];

      if (a3 != 2 || v36 != 1)
      {
        goto LABEL_37;
      }

      v37 = nplog_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "invalid to set subscriber tier for free account type", buf, 2u);
      }
    }

    else
    {
      v37 = nplog_obj();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        if (a3 >= 3)
        {
          v46 = [NSString stringWithFormat:@"(unknown: %i)", a3];
        }

        else
        {
          v46 = *(&off_10010AAE8 + (a3 & 3));
        }

        *buf = 138412290;
        v48 = v46;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "invalid to set %@ tier until proxy account type is available", buf, 0xCu);
      }
    }

    v29 = 0;
    goto LABEL_55;
  }

  if (self)
  {
    v14 = self->_configuration;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSPConfiguration *)v14 willResetSubscriberTierTomorrow];
  v16 = [v15 BOOLValue];

  if (!v10 && v16)
  {
    if (self)
    {
      v17 = self->_configuration;
    }

    else
    {
      v17 = 0;
    }

    v18 = [(NSPConfiguration *)v17 copy];
    [v18 setWillResetSubscriberTierTomorrow:&off_1001142C0];
    if (v7)
    {
      [v18 setResetTomorrowDate:0];
    }

    [(NSPConfigurationManager *)self updateConfiguration:v18];

    goto LABEL_54;
  }

  if (self)
  {
    v26 = self->_configuration;
  }

  else
  {
    v26 = 0;
  }

  v27 = [(NSPConfiguration *)v26 willResetSubscriberTierTomorrow];
  v28 = [v27 BOOLValue];

  v29 = 1;
  if (v10 && (v28 & 1) == 0)
  {
    if (self)
    {
      v30 = self->_configuration;
    }

    else
    {
      v30 = 0;
    }

    v31 = [(NSPConfiguration *)v30 copy];
    [v31 setWillResetSubscriberTierTomorrow:&off_1001142D8];
    [v31 setResetTomorrowDate:v10];
    [(NSPConfigurationManager *)self updateConfiguration:v31];

    goto LABEL_54;
  }

LABEL_55:

  return v29;
}

- (BOOL)getGeohashSharingPreference
{
  if (self)
  {
    self = self->_configuration;
  }

  v2 = [(NSPConfigurationManager *)self geohashSharingEnabledStatus];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setGeohashOverride:(id)a3
{
  v11 = a3;
  if (self)
  {
    configuration = self->_configuration;
  }

  else
  {
    configuration = 0;
  }

  v5 = configuration;
  v6 = [(NSPConfiguration *)v5 geohashOverride];
  if (v6 == v11)
  {
  }

  else
  {
    if (self)
    {
      v7 = self->_configuration;
    }

    else
    {
      v7 = 0;
    }

    v8 = [(NSPConfiguration *)v7 geohashOverride];
    v9 = [v8 isEqualToString:v11];

    if (v9)
    {
      goto LABEL_12;
    }

    if (self)
    {
      v10 = self->_configuration;
    }

    else
    {
      v10 = 0;
    }

    v5 = [(NSPConfiguration *)v10 copy];
    [(NSPConfiguration *)v5 setGeohashOverride:v11];
    [(NSPConfigurationManager *)self updateConfiguration:v5];
  }

LABEL_12:
}

- (BOOL)getPrivateAccessTokensEnabled
{
  if (self)
  {
    self = self->_configuration;
  }

  v2 = [(NSPConfigurationManager *)self privateAccessTokensEnabledStatus];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unint64_t)getPrivacyProxyAccountType
{
  if (self)
  {
    self = self->_configuration;
  }

  v2 = [(NSPConfigurationManager *)self proxyAccountType];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setProxyTrafficState:(unint64_t)a3 proxyTraffic:(unint64_t)a4
{
  v6 = self;
  if (self)
  {
    self = self->_configuration;
  }

  v7 = [(NSPConfigurationManager *)self proxyTrafficState];
  v8 = [v7 unsignedLongLongValue];

  v9 = v8 & ~a3 | a4 & a3;
  if (v6)
  {
    configuration = v6->_configuration;
  }

  else
  {
    configuration = 0;
  }

  v11 = [(NSPConfiguration *)configuration proxyTrafficState];
  v12 = [v11 unsignedLongLongValue];

  if (v12 != v9)
  {
    if (v6)
    {
      v13 = v6->_configuration;
    }

    else
    {
      v13 = 0;
    }

    v19 = [(NSPConfiguration *)v13 copy];
    if ((v9 & 0x20000) != 0)
    {
      v14 = v6 ? v6->_configuration : 0;
      v15 = [(NSPConfiguration *)v14 proxyTrafficState];
      v16 = [v15 unsignedLongLongValue];

      if ((v16 & 0x20000) == 0)
      {
        v17 = +[NSDate now];
        [v19 setAnyAppEnabledDate:v17];
      }
    }

    v18 = [NSNumber numberWithUnsignedLongLong:v9];
    [v19 setProxyTrafficState:v18];

    [(NSPConfigurationManager *)v6 updateConfiguration:v19];
  }
}

- (void)refreshConfigurationWithReason:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  if (self)
  {
    configuration = self->_configuration;
  }

  else
  {
    configuration = 0;
  }

  v8 = configuration;
  v9 = [(NSPConfiguration *)v8 enabled];
  if (([v9 BOOLValue] & 1) == 0)
  {
    goto LABEL_15;
  }

  if (self)
  {
    v10 = self->_configuration;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [(NSPConfiguration *)v11 configServerEnabled];
  if (![v12 BOOLValue])
  {

LABEL_15:
    goto LABEL_16;
  }

  if (self)
  {
    v13 = self->_configuration;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [(NSPConfiguration *)v14 resurrectionDate];
  if (v15)
  {
    v16 = v15;
    if (self)
    {
      v17 = self->_configuration;
    }

    else
    {
      v17 = 0;
    }

    v18 = [(NSPConfiguration *)v17 resurrectionDate];
    [v18 timeIntervalSinceNow];
    v20 = v19;

    if (v20 >= 0.0)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v21 = nplog_obj();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Refresh configuration", buf, 2u);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100091860;
  v22[3] = &unk_10010A880;
  v23 = v6;
  sub_1000875D4(self, a3, v22);

LABEL_16:
}

- (unint64_t)configurationSubscriberPoliciesCount
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  if (self)
  {
    self = self->_configuration;
  }

  v2 = [(NSPConfigurationManager *)self proxyConfiguration];
  v3 = [v2 policyTierMaps];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 tier] == 2)
        {
          v8 = [v7 policy];
          v4 = [v8 conditionsCount];

          goto LABEL_13;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v4;
}

- (void)handlePathChange:(id)a3
{
  v5 = a3;
  if (self)
  {
    objc_storeStrong(&self->_path, a3);
    path = self->_path;
  }

  else
  {
    path = 0;
  }

  v7 = [NPUtilities copyCurrentNetworkCharacteristicsForPath:path];
  v8 = [v7 objectForKeyedSubscript:@"Signature"];
  if (self)
  {
    networkCharacteristics = self->_networkCharacteristics;
  }

  else
  {
    networkCharacteristics = 0;
  }

  v10 = [(NSDictionary *)networkCharacteristics objectForKeyedSubscript:@"Signature"];
  v11 = v8;
  v12 = v10;
  v13 = v12;
  if (v11 | v12 && (v11 ? (v14 = v12 == 0) : (v14 = 1), v14 || ![v11 isEqual:v12]))
  {

    v15 = nplog_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "config manager: network signature changed", buf, 2u);
    }

    if (self)
    {
      objc_storeStrong(&self->_networkCharacteristics, v7);
      if ([v5 status] == 1 && self->_configFetchOnNetworkChange)
      {
        v16 = nplog_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Retry fetching configuration", buf, 2u);
        }

        configFetchRetryAttempt = self->_configFetchRetryAttempt;
        sub_100087FD4(self);
        self->_configFetchRetryAttempt = configFetchRetryAttempt;
        *buf = 0;
        v20 = buf;
        v21 = 0x3032000000;
        v22 = sub_100001F74;
        v23 = sub_1000875B8;
        v24 = os_transaction_create();
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100091650;
        v18[3] = &unk_10010A058;
        v18[4] = buf;
        sub_1000875D4(self, 0xA, v18);
        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
      [v5 status];
    }
  }

  else
  {
  }
}

- (void)setup
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v13 = sub_100092298;
  v14 = &unk_100109910;
  v15 = self;
  v3 = v12;
  if (self)
  {
    if (os_variant_has_internal_content())
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v5 = [WeakRetained getSavedPrivateCloudComputeEnvironment];

      if (!v5)
      {
        v16 = 0;
        v17 = &v16;
        v18 = 0x2050000000;
        v7 = qword_100129848;
        v19 = qword_100129848;
        if (!qword_100129848)
        {
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v21 = sub_1000950CC;
          v22 = &unk_100109650;
          v23 = &v16;
          sub_1000950CC(&buf);
          v7 = v17[3];
        }

        v8 = v7;
        _Block_object_dispose(&v16, 8);
        v9 = objc_alloc_init(v7);
        if (v9)
        {
          *&buf = _NSConcreteStackBlock;
          *(&buf + 1) = 3221225472;
          v21 = sub_100091CB0;
          v22 = &unk_10010A8F8;
          v10 = v3;
          v23 = self;
          v24 = v10;
          [v9 selectedEnvironmentNameWithCompletionHandler:&buf];

          goto LABEL_8;
        }

        v11 = nplog_obj();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create PCCServerEnvironment", &buf, 2u);
        }
      }

      v6 = nplog_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Has saved private cloud compute environment %@", &buf, 0xCu);
      }
    }

    v13(v3, 0);
  }

LABEL_8:
}

- (void)dealloc
{
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v6 = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Dealloc: \nConfiguration: %@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = NSPConfigurationManager;
  [(NSPConfigurationManager *)&v4 dealloc];
}

- (NSPConfigurationManager)initWithDelegate:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v17 = nplog_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
LABEL_12:

      v14 = 0;
      goto LABEL_8;
    }

    *buf = 136315138;
    v21 = "[NSPConfigurationManager initWithDelegate:configuration:]";
    v18 = "%s called with null delegate";
LABEL_14:
    _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v18, buf, 0xCu);
    goto LABEL_12;
  }

  if (!v7)
  {
    v17 = nplog_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_12;
    }

    *buf = 136315138;
    v21 = "[NSPConfigurationManager initWithDelegate:configuration:]";
    v18 = "%s called with null configuration";
    goto LABEL_14;
  }

  v19.receiver = self;
  v19.super_class = NSPConfigurationManager;
  v9 = [(NSPConfigurationManager *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v6);
    objc_storeStrong((v10 + 32), a4);
    *(v10 + 16) = sub_100090458(v10);
    ++*(v10 + 56);
    sub_1000892C0(v10);
    v11 = +[NPUtilities copyTrueClientIPAddressFromPreferences];
    v12 = *(v10 + 120);
    *(v10 + 120) = v11;

    v13 = nplog_large_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(v10 + 32);
      *buf = 138412290;
      v21 = v16;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Configuration state: %@", buf, 0xCu);
    }
  }

  self = v10;
  v14 = self;
LABEL_8:

  return v14;
}

- (void)publishDailyConfigurationStats
{
  v18 = objc_alloc_init(NSPConfigurationStats);
  if (self)
  {
    v3 = [(NSPConfiguration *)self->_configuration proxyConfiguration];
    -[NSPConfigurationStats setConfigurationVersion:](v18, "setConfigurationVersion:", [v3 version]);

    configuration = self->_configuration;
  }

  else
  {
    v17 = [0 proxyConfiguration];
    -[NSPConfigurationStats setConfigurationVersion:](v18, "setConfigurationVersion:", [v17 version]);

    configuration = 0;
  }

  v5 = configuration;
  v6 = [(NSPConfiguration *)v5 enabled];
  -[NSPConfigurationStats setConfigurationEnabled:](v18, "setConfigurationEnabled:", [v6 BOOLValue]);

  if (self)
  {
    v7 = self->_configuration;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [(NSPConfiguration *)v8 proxyConfiguration];
  -[NSPConfigurationStats setTokenFetchEnabled:](v18, "setTokenFetchEnabled:", [v9 enabled]);

  v10 = [(NSPConfigurationManager *)self effectiveUserTier];
  if (v10 >= 3)
  {
    v11 = [NSString stringWithFormat:@"(unknown: %i)", v10];
  }

  else
  {
    v11 = *(&off_10010AAE8 + (v10 & 3));
  }

  [(NSPConfigurationStats *)v18 setTierType:v11];

  if (self)
  {
    v12 = self->_configuration;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [(NSPConfiguration *)v13 proxyTrafficState];
  v15 = [v14 unsignedLongLongValue];

  if (v15)
  {
    [(NSPConfigurationStats *)v18 setSafariUnencryptedEnabled:1];
  }

  v16 = v18;
  if ((v15 & 2) != 0)
  {
    [(NSPConfigurationStats *)v18 setSafariDNSEnabled:1];
    v16 = v18;
    if ((v15 & 4) == 0)
    {
LABEL_14:
      if ((v15 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_44;
    }
  }

  else if ((v15 & 4) == 0)
  {
    goto LABEL_14;
  }

  [(NSPConfigurationStats *)v18 setSafariTrackersEnabled:1];
  v16 = v18;
  if ((v15 & 8) == 0)
  {
LABEL_15:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  [(NSPConfigurationStats *)v18 setSafariAllEnabled:1];
  v16 = v18;
  if ((v15 & 0x10) == 0)
  {
LABEL_16:
    if ((v15 & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  [(NSPConfigurationStats *)v18 setSafariHTTPEnabled:1];
  v16 = v18;
  if ((v15 & 0x40000) == 0)
  {
LABEL_17:
    if ((v15 & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  [(NSPConfigurationStats *)v18 setSafariPrivateUnencryptedEnabled:1];
  v16 = v18;
  if ((v15 & 0x80000) == 0)
  {
LABEL_18:
    if ((v15 & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  [(NSPConfigurationStats *)v18 setSafariPrivateDNSEnabled:1];
  v16 = v18;
  if ((v15 & 0x100000) == 0)
  {
LABEL_19:
    if ((v15 & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  [(NSPConfigurationStats *)v18 setSafariPrivateAllEnabled:1];
  v16 = v18;
  if ((v15 & 0x200000) == 0)
  {
LABEL_20:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  [(NSPConfigurationStats *)v18 setSafariMetricsEnabled:1];
  v16 = v18;
  if ((v15 & 0x20) == 0)
  {
LABEL_21:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  [(NSPConfigurationStats *)v18 setMailTrackersEnabled:1];
  v16 = v18;
  if ((v15 & 0x40) == 0)
  {
LABEL_22:
    if ((v15 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  [(NSPConfigurationStats *)v18 setUnencryptedEnabled:1];
  v16 = v18;
  if ((v15 & 0x80) == 0)
  {
LABEL_23:
    if ((v15 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  [(NSPConfigurationStats *)v18 setDnsEnabled:1];
  v16 = v18;
  if ((v15 & 0x100) == 0)
  {
LABEL_24:
    if ((v15 & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  [(NSPConfigurationStats *)v18 setKnownTrackersEnabled:1];
  v16 = v18;
  if ((v15 & 0x200) == 0)
  {
LABEL_25:
    if ((v15 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  [(NSPConfigurationStats *)v18 setAppTrackersEnabled:1];
  v16 = v18;
  if ((v15 & 0x400) == 0)
  {
LABEL_26:
    if ((v15 & 0x10000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  [(NSPConfigurationStats *)v18 setNewsURLResolutionEnabled:1];
  v16 = v18;
  if ((v15 & 0x10000) == 0)
  {
LABEL_27:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  [(NSPConfigurationStats *)v18 setNewsEmbeddedContentEnabled:1];
  v16 = v18;
  if ((v15 & 0x800) == 0)
  {
LABEL_28:
    if ((v15 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  [(NSPConfigurationStats *)v18 setExposureNotificationsEnabled:1];
  v16 = v18;
  if ((v15 & 0x1000) == 0)
  {
LABEL_29:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  [(NSPConfigurationStats *)v18 setAppleCertificatesEnabled:1];
  v16 = v18;
  if ((v15 & 0x2000) == 0)
  {
LABEL_30:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  [(NSPConfigurationStats *)v18 setNetworkToolsEnabled:1];
  v16 = v18;
  if ((v15 & 0x4000) == 0)
  {
LABEL_31:
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

LABEL_60:
  [(NSPConfigurationStats *)v18 setMetricsUploadEnabled:1];
  v16 = v18;
  if ((v15 & 0x8000) == 0)
  {
LABEL_32:
    if ((v15 & 0x20000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_62;
  }

LABEL_61:
  [(NSPConfigurationStats *)v18 setBrandedCallingEnabled:1];
  v16 = v18;
  if ((v15 & 0x20000) == 0)
  {
LABEL_33:
    if ((v15 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_63;
  }

LABEL_62:
  [(NSPConfigurationStats *)v18 setAppMetricsEnabled:1];
  v16 = v18;
  if ((v15 & 0x400000) == 0)
  {
LABEL_34:
    if ((v15 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_64;
  }

LABEL_63:
  [(NSPConfigurationStats *)v18 setPromotedContentEnabled:1];
  v16 = v18;
  if ((v15 & 0x800000) == 0)
  {
LABEL_35:
    if ((v15 & 0x1000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

LABEL_64:
  [(NSPConfigurationStats *)v18 setPostbackFetchEnabled:1];
  v16 = v18;
  if ((v15 & 0x1000000) == 0)
  {
LABEL_36:
    if ((v15 & 0x2000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_66;
  }

LABEL_65:
  [(NSPConfigurationStats *)v18 setPasswordManagerIconFetchEnabled:1];
  v16 = v18;
  if ((v15 & 0x2000000) == 0)
  {
LABEL_37:
    if ((v15 & 0x4000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_66:
  [(NSPConfigurationStats *)v18 setLaunchWarningDetailsEnabled:1];
  v16 = v18;
  if ((v15 & 0x4000000) != 0)
  {
LABEL_38:
    [(NSPConfigurationStats *)v18 setPodcastsLinkPresentationEnabled:1];
    v16 = v18;
  }

LABEL_39:
  [(NSPProxyAnalytics *)v16 sendAnalytics];
}

- (void)copyProxyInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self)
    {
      [v4 setConfigFetchedSuccessCount:self->_configFetchSuccessCount];
      configFetchFailedCount = self->_configFetchFailedCount;
    }

    else
    {
      [v4 setConfigFetchedSuccessCount:0];
      configFetchFailedCount = 0;
    }

    [v5 setConfigFetchedFailedCount:configFetchFailedCount];
  }

  else
  {
    v7 = nplog_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[NSPConfigurationManager copyProxyInfo:]";
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s called with null proxyInfo", &v8, 0xCu);
    }
  }
}

- (id)diagnostics
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(NSPConfigurationManager *)self effectiveUserTier];
  if (v4 >= 3)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", v4];
  }

  else
  {
    v5 = *(&off_10010AAE8 + (v4 & 3));
  }

  [v3 setObject:v5 forKeyedSubscript:@"EffectiveUserTier"];

  return v3;
}

@end