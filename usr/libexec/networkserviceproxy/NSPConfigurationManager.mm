@interface NSPConfigurationManager
- (BOOL)getGeohashSharingPreference;
- (BOOL)getPrivateAccessTokensEnabled;
- (BOOL)policyIncludesUnlimited;
- (BOOL)setUserTier:(unint64_t)tier resetDate:(id)date clearResetDate:(BOOL)resetDate changeSource:(unint64_t)source;
- (NSPConfigurationManager)initWithDelegate:(id)delegate configuration:(id)configuration;
- (id)currentConfiguration;
- (id)diagnostics;
- (id)mergeProxyTrafficStateWithCurrentPolicy;
- (unint64_t)configurationSubscriberPoliciesCount;
- (unint64_t)getPrivacyProxyAccountType;
- (void)clearResetDate;
- (void)copyProxyInfo:(id)info;
- (void)dealloc;
- (void)handlePathChange:(id)change;
- (void)publishDailyConfigurationStats;
- (void)refreshConfigurationWithReason:(unint64_t)reason completionHandler:(id)handler;
- (void)resetConfigurationManager;
- (void)setConfigurationTrialVersion:(int64_t)version;
- (void)setGeohashOverride:(id)override;
- (void)setProxyTrafficState:(unint64_t)state proxyTraffic:(unint64_t)traffic;
- (void)setResetDate:(id)date;
- (void)setup;
- (void)updateConfiguration:(id)configuration;
@end

@implementation NSPConfigurationManager

- (void)resetConfigurationManager
{
  selfCopy = self;
  if (self)
  {
    self = self->_configuration;
  }

  geohashSharingEnabledStatus = [(NSPConfigurationManager *)self geohashSharingEnabledStatus];
  if (selfCopy)
  {
    configuration = selfCopy->_configuration;
  }

  else
  {
    configuration = 0;
  }

  geohashOverride = [(NSPConfiguration *)configuration geohashOverride];
  if (selfCopy)
  {
    v4 = selfCopy->_configuration;
  }

  else
  {
    v4 = 0;
  }

  preferredPathRoutingEnabledStatus = [(NSPConfiguration *)v4 preferredPathRoutingEnabledStatus];
  if (selfCopy)
  {
    v5 = selfCopy->_configuration;
  }

  else
  {
    v5 = 0;
  }

  privateAccessTokensEnabledStatus = [(NSPConfiguration *)v5 privateAccessTokensEnabledStatus];
  if (selfCopy)
  {
    v7 = selfCopy->_configuration;
  }

  else
  {
    v7 = 0;
  }

  privateAccessTokensAllowTools = [(NSPConfiguration *)v7 privateAccessTokensAllowTools];
  if (selfCopy)
  {
    v9 = selfCopy->_configuration;
  }

  else
  {
    v9 = 0;
  }

  inProcessFlowDivert = [(NSPConfiguration *)v9 inProcessFlowDivert];
  if (selfCopy)
  {
    v11 = selfCopy->_configuration;
  }

  else
  {
    v11 = 0;
  }

  proxyTrafficState = [(NSPConfiguration *)v11 proxyTrafficState];
  if (selfCopy)
  {
    v13 = selfCopy->_configuration;
  }

  else
  {
    v13 = 0;
  }

  userTier = [(NSPConfiguration *)v13 userTier];
  if (selfCopy)
  {
    v15 = selfCopy->_configuration;
  }

  else
  {
    v15 = 0;
  }

  proxyAccountType = [(NSPConfiguration *)v15 proxyAccountType];
  if (selfCopy)
  {
    v17 = selfCopy->_configuration;
  }

  else
  {
    v17 = 0;
  }

  proxyAccountUnlimited = [(NSPConfiguration *)v17 proxyAccountUnlimited];
  if (selfCopy)
  {
    v19 = selfCopy->_configuration;
  }

  else
  {
    v19 = 0;
  }

  userPreferredTier = [(NSPConfiguration *)v19 userPreferredTier];
  if (selfCopy)
  {
    v21 = selfCopy->_configuration;
  }

  else
  {
    v21 = 0;
  }

  subscriberEnabledFromNonSettingsApp = [(NSPConfiguration *)v21 subscriberEnabledFromNonSettingsApp];
  if (selfCopy)
  {
    v23 = selfCopy->_configuration;
  }

  else
  {
    v23 = 0;
  }

  lastPrivateCloudComputeEnvironment = [(NSPConfiguration *)v23 lastPrivateCloudComputeEnvironment];
  sub_100088994(selfCopy);
  if (selfCopy)
  {
    [(NSPConfiguration *)selfCopy->_configuration setGeohashSharingEnabledStatus:geohashSharingEnabledStatus];
    [(NSPConfiguration *)selfCopy->_configuration setGeohashOverride:geohashOverride];
    [(NSPConfiguration *)selfCopy->_configuration setPreferredPathRoutingEnabledStatus:preferredPathRoutingEnabledStatus];
    [(NSPConfiguration *)selfCopy->_configuration setPrivateAccessTokensEnabledStatus:privateAccessTokensEnabledStatus];
    [(NSPConfiguration *)selfCopy->_configuration setPrivateAccessTokensAllowTools:privateAccessTokensAllowTools];
    [(NSPConfiguration *)selfCopy->_configuration setInProcessFlowDivert:inProcessFlowDivert];
    [(NSPConfiguration *)selfCopy->_configuration setProxyTrafficState:proxyTrafficState];
    [(NSPConfiguration *)selfCopy->_configuration setUserTier:userTier];
    [(NSPConfiguration *)selfCopy->_configuration setProxyAccountType:proxyAccountType];
    [(NSPConfiguration *)selfCopy->_configuration setProxyAccountUnlimited:proxyAccountUnlimited];
    [(NSPConfiguration *)selfCopy->_configuration setUserPreferredTier:userPreferredTier];
    [(NSPConfiguration *)selfCopy->_configuration setSubscriberEnabledFromNonSettingsApp:subscriberEnabledFromNonSettingsApp];
    v24 = selfCopy->_configuration;
  }

  else
  {
    [0 setGeohashSharingEnabledStatus:geohashSharingEnabledStatus];
    [0 setGeohashOverride:geohashOverride];
    [0 setPreferredPathRoutingEnabledStatus:preferredPathRoutingEnabledStatus];
    [0 setPrivateAccessTokensEnabledStatus:privateAccessTokensEnabledStatus];
    [0 setPrivateAccessTokensAllowTools:privateAccessTokensAllowTools];
    [0 setInProcessFlowDivert:inProcessFlowDivert];
    [0 setProxyTrafficState:proxyTrafficState];
    [0 setUserTier:userTier];
    [0 setProxyAccountType:proxyAccountType];
    [0 setProxyAccountUnlimited:proxyAccountUnlimited];
    [0 setUserPreferredTier:userPreferredTier];
    [0 setSubscriberEnabledFromNonSettingsApp:subscriberEnabledFromNonSettingsApp];
    v24 = 0;
  }

  [(NSPConfiguration *)v24 setLastPrivateCloudComputeEnvironment:lastPrivateCloudComputeEnvironment];
  sub_100088D7C(selfCopy);
}

- (BOOL)policyIncludesUnlimited
{
  selfCopy = self;
  if (self)
  {
    self = self->_configuration;
  }

  proxyTrafficState = [(NSPConfigurationManager *)self proxyTrafficState];
  unsignedLongLongValue = [proxyTrafficState unsignedLongLongValue];

  if ((unsignedLongLongValue & 0x20000) != 0)
  {
    v6 = sub_10008A834(&selfCopy->super.isa);
    v7 = sub_10008A61C(selfCopy, v6);
    v8 = v7;
    if (v7 && [v7 containsObject:&off_100114038])
    {
      if (selfCopy)
      {
        configuration = selfCopy->_configuration;
      }

      else
      {
        configuration = 0;
      }

      v10 = configuration;
      proxyAccountUnlimited = [(NSPConfiguration *)v10 proxyAccountUnlimited];
      if ([proxyAccountUnlimited BOOLValue])
      {
        v5 = 1;
      }

      else
      {
        if (selfCopy)
        {
          v12 = selfCopy->_configuration;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;
        cloudSubscriptionCheckEnabled = [(NSPConfiguration *)v13 cloudSubscriptionCheckEnabled];
        if (cloudSubscriptionCheckEnabled)
        {
          if (selfCopy)
          {
            v15 = selfCopy->_configuration;
          }

          else
          {
            v15 = 0;
          }

          cloudSubscriptionCheckEnabled2 = [(NSPConfiguration *)v15 cloudSubscriptionCheckEnabled];
          bOOLValue = [cloudSubscriptionCheckEnabled2 BOOLValue];

          v5 = bOOLValue ^ 1;
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
  proxyTrafficState = [(NSPConfiguration *)v5 proxyTrafficState];

  if (proxyTrafficState)
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
        selfCopy4 = self;
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
      proxyTrafficState2 = [(NSPConfiguration *)v26 proxyTrafficState];
      unsignedLongLongValue = [proxyTrafficState2 unsignedLongLongValue];

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
        proxyTrafficState3 = [(NSPConfiguration *)v31 proxyTrafficState];
        v33 = [NSPConfiguration proxyTrafficStateToString:proxyTrafficState3];
        v34 = [v7 description];
        *buf = 138412802;
        selfCopy4 = self;
        v51 = 2112;
        v52 = v33;
        v53 = 2112;
        v54 = v34;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "%@ merging proxy traffic state [%@] with current proxy policy [%@]", buf, 0x20u);
      }

      if ((unsignedLongLongValue & 1) == 0 && [v9 containsObject:&off_100114050])
      {
        [v9 removeObject:&off_100114050];
      }

      if ((unsignedLongLongValue & 2) == 0 && [v9 containsObject:&off_100114068])
      {
        [v9 removeObject:&off_100114068];
      }

      if ((unsignedLongLongValue & 4) == 0 && [v9 containsObject:&off_100114080])
      {
        [v9 removeObject:&off_100114080];
      }

      if ((unsignedLongLongValue & 8) == 0 && [v9 containsObject:&off_100114098])
      {
        [v9 removeObject:&off_100114098];
      }

      if ((unsignedLongLongValue & 0x10) == 0 && [v9 containsObject:&off_1001140B0])
      {
        [v9 removeObject:&off_1001140B0];
      }

      if ((unsignedLongLongValue & 0x40000) == 0 && [v9 containsObject:&off_1001140C8])
      {
        [v9 removeObject:&off_1001140C8];
      }

      if ((unsignedLongLongValue & 0x80000) == 0 && [v9 containsObject:&off_1001140E0])
      {
        [v9 removeObject:&off_1001140E0];
      }

      if ((unsignedLongLongValue & 0x100000) == 0 && [v9 containsObject:&off_1001140F8])
      {
        [v9 removeObject:&off_1001140F8];
      }

      if ((unsignedLongLongValue & 0x200000) == 0 && [v9 containsObject:&off_100114110])
      {
        [v9 removeObject:&off_100114110];
      }

      if ((unsignedLongLongValue & 0x20) == 0 && [v9 containsObject:&off_100114128])
      {
        [v9 removeObject:&off_100114128];
      }

      if ((unsignedLongLongValue & 0x40) == 0 && [v9 containsObject:&off_100114140])
      {
        [v9 removeObject:&off_100114140];
      }

      if ((unsignedLongLongValue & 0x80) == 0 && [v9 containsObject:&off_100114158])
      {
        [v9 removeObject:&off_100114158];
      }

      if ((unsignedLongLongValue & 0x100) == 0 && [v9 containsObject:&off_100114170])
      {
        [v9 removeObject:&off_100114170];
      }

      if ((unsignedLongLongValue & 0x200) == 0 && [v9 containsObject:&off_100114188])
      {
        [v9 removeObject:&off_100114188];
      }

      if ((unsignedLongLongValue & 0x400) == 0 && [v9 containsObject:&off_1001141A0])
      {
        [v9 removeObject:&off_1001141A0];
      }

      if ((unsignedLongLongValue & 0x10000) == 0 && [v9 containsObject:&off_1001141B8])
      {
        [v9 removeObject:&off_1001141B8];
      }

      if ((unsignedLongLongValue & 0x800) == 0 && [v9 containsObject:&off_1001141D0])
      {
        [v9 removeObject:&off_1001141D0];
      }

      if ((unsignedLongLongValue & 0x1000) == 0 && [v9 containsObject:&off_1001141E8])
      {
        [v9 removeObject:&off_1001141E8];
      }

      if ((unsignedLongLongValue & 0x2000) == 0 && [v9 containsObject:&off_100114200])
      {
        [v9 removeObject:&off_100114200];
      }

      if ((unsignedLongLongValue & 0x4000) == 0 && [v9 containsObject:&off_100114218])
      {
        [v9 removeObject:&off_100114218];
      }

      if ((unsignedLongLongValue & 0x8000) == 0 && [v9 containsObject:&off_100114230])
      {
        [v9 removeObject:&off_100114230];
      }

      if ((unsignedLongLongValue & 0x20000) == 0 && [v9 containsObject:&off_100114038])
      {
        [v9 removeObject:&off_100114038];
      }

      if ((unsignedLongLongValue & 0x400000) == 0 && [v9 containsObject:&off_100114248])
      {
        [v9 removeObject:&off_100114248];
      }

      if ((unsignedLongLongValue & 0x800000) == 0 && [v9 containsObject:&off_100114260])
      {
        [v9 removeObject:&off_100114260];
      }

      if ((unsignedLongLongValue & 0x1000000) == 0 && [v9 containsObject:&off_100114278])
      {
        [v9 removeObject:&off_100114278];
      }

      if ((unsignedLongLongValue & 0x2000000) == 0 && [v9 containsObject:&off_100114290])
      {
        [v9 removeObject:&off_100114290];
      }

      if ((unsignedLongLongValue & 0x4000000) == 0 && [v9 containsObject:&off_1001142A8])
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
        selfCopy4 = self;
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
    proxyAccountUnlimited = [(NSPConfiguration *)v11 proxyAccountUnlimited];
    if ([proxyAccountUnlimited BOOLValue])
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
    cloudSubscriptionCheckEnabled = [(NSPConfiguration *)v16 cloudSubscriptionCheckEnabled];
    if (cloudSubscriptionCheckEnabled)
    {
      v18 = cloudSubscriptionCheckEnabled;
      if (self)
      {
        v19 = self->_configuration;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      cloudSubscriptionCheckEnabled2 = [(NSPConfiguration *)v20 cloudSubscriptionCheckEnabled];
      bOOLValue = [cloudSubscriptionCheckEnabled2 BOOLValue];

      if ((bOOLValue & 1) == 0)
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
    selfCopy4 = self;
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

- (void)updateConfiguration:(id)configuration
{
  v3 = __chkstk_darwin(self, a2, configuration);
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

  effectiveUserTier = [v3 effectiveUserTier];
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
  proxyConfigurationData = [v540 proxyConfigurationData];
  proxyConfigurationData2 = [v539 proxyConfigurationData];
  v14 = proxyConfigurationData;
  v15 = proxyConfigurationData2;
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

  enabled = [v540 enabled];
  enabled2 = [v539 enabled];
  v20 = enabled;
  v21 = enabled2;
  v22 = v21;
  if (v20 | v21 && (!v20 || !v21 || ![v20 isEqual:v21]))
  {

    v33 = nplog_obj();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      enabled3 = [v540 enabled];
      bOOLValue = [enabled3 BOOLValue];
      v36 = @"disabled";
      if (bOOLValue)
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
      enabled4 = [v37 enabled];
      bOOLValue2 = [enabled4 BOOLValue];

      if (bOOLValue2)
      {
        v40 = *(v541 + 32);
        [v40 setConfigServerEnabled:&__kCFBooleanTrue];

        sub_1000892C0(v541);
        sub_10008720C(v541);
        sub_100088604(v541);
        v41 = *(v541 + 32);
        configServerHost = [v41 configServerHost];
        *(v541 + 10) = [configServerHost isEqualToString:@"mask-api.icloud.com"] ^ 1;

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

  enabled5 = [v540 enabled];
  bOOLValue3 = [enabled5 BOOLValue];

  if ((bOOLValue3 & 1) == 0)
  {
    goto LABEL_146;
  }

  configServerHost2 = [v540 configServerHost];
  configServerHost3 = [v539 configServerHost];
  v27 = [configServerHost2 isEqualToString:configServerHost3];

  if ((v27 & 1) == 0)
  {
    v45 = nplog_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      configServerHost4 = [v540 configServerHost];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = configServerHost4;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "configuration server host changed to %@", &buf, 0xCu);
    }

    goto LABEL_34;
  }

  overrideConfigServerPath = [v540 overrideConfigServerPath];
  overrideConfigServerPath2 = [v539 overrideConfigServerPath];
  v30 = overrideConfigServerPath;
  v31 = overrideConfigServerPath2;
  v32 = v31;
  if (!(v30 | v31) || v30 && v31 && [v30 isEqual:v31])
  {
  }

  else
  {

    v30 = nplog_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      overrideConfigServerPath3 = [v540 overrideConfigServerPath];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = overrideConfigServerPath3;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "user-configured server path changed to %@", &buf, 0xCu);
    }

    v534 = 1;
  }

  configServerHeaders = [v540 configServerHeaders];
  configServerHeaders2 = [v539 configServerHeaders];
  v50 = [configServerHeaders isEqualToString:configServerHeaders2];

  if ((v50 & 1) == 0)
  {
    v51 = nplog_obj();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      configServerHeaders3 = [v540 configServerHeaders];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = configServerHeaders3;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "configuration server headers changed to %@", &buf, 0xCu);
    }

    v534 = 1;
  }

  ignoreInvalidCerts = [v540 ignoreInvalidCerts];
  if (ignoreInvalidCerts != [v539 ignoreInvalidCerts])
  {
    v45 = nplog_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      ignoreInvalidCerts2 = [v540 ignoreInvalidCerts];
      v55 = "no";
      if (ignoreInvalidCerts2)
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
    saveToPreferences = [v165 saveToPreferences];

    if (saveToPreferences)
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

  ignoreSignature = [v540 ignoreSignature];
  if (ignoreSignature != [v539 ignoreSignature])
  {
    v57 = nplog_obj();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      ignoreSignature2 = [v540 ignoreSignature];
      LODWORD(buf) = 67109120;
      DWORD1(buf) = ignoreSignature2;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "ignore configuration signature %d", &buf, 8u);
    }

    v534 = 1;
  }

  ignorePlatformBinary = [v540 ignorePlatformBinary];
  if (ignorePlatformBinary != [v539 ignorePlatformBinary])
  {
    v60 = nplog_obj();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      ignorePlatformBinary2 = [v540 ignorePlatformBinary];
      LODWORD(buf) = 67109120;
      DWORD1(buf) = ignorePlatformBinary2;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "ignore platform binary %d", &buf, 8u);
    }

    v534 = 1;
  }

  cloudSubscriptionCheckEnabled = [v540 cloudSubscriptionCheckEnabled];
  cloudSubscriptionCheckEnabled2 = [v539 cloudSubscriptionCheckEnabled];
  v64 = cloudSubscriptionCheckEnabled;
  v65 = cloudSubscriptionCheckEnabled2;
  v66 = v65;
  if (!(v64 | v65) || v64 && v65 && [v64 isEqual:v65])
  {
  }

  else
  {

    v67 = nplog_obj();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      cloudSubscriptionCheckEnabled3 = [v540 cloudSubscriptionCheckEnabled];
      bOOLValue4 = [cloudSubscriptionCheckEnabled3 BOOLValue];
      v70 = "no";
      if (bOOLValue4)
      {
        v70 = "yes";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v70;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "cloud subscription check changed to %s", &buf, 0xCu);
    }

    if (v541)
    {
      cloudSubscriptionCheckEnabled4 = [*(v541 + 32) cloudSubscriptionCheckEnabled];
      bOOLValue5 = [cloudSubscriptionCheckEnabled4 BOOLValue];

      if ((bOOLValue5 & 1) == 0)
      {
        [*(v541 + 32) setProxyAccountType:0];
        [*(v541 + 32) setProxyAccountUnlimited:0];
      }

      cloudSubscriptionCheckEnabled5 = [*(v541 + 32) cloudSubscriptionCheckEnabled];
      bOOLValue6 = [cloudSubscriptionCheckEnabled5 BOOLValue];

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
      v706 = bOOLValue6;
      v704 = v541;
      v705 = &block;
      dispatch_async(v75, &buf);

      _Block_object_dispose(&block, 8);
    }

    v534 = 1;
  }

  trialConfigVersion = [v540 trialConfigVersion];
  trialConfigVersion2 = [v539 trialConfigVersion];
  v78 = trialConfigVersion;
  v79 = trialConfigVersion2;
  v80 = v79;
  if (!(v78 | v79) || v78 && v79 && [v78 isEqual:v79])
  {
  }

  else
  {

    v81 = nplog_obj();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      trialConfigVersion3 = [v540 trialConfigVersion];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = trialConfigVersion3;
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

  resurrectionDate = [v540 resurrectionDate];
  resurrectionDate2 = [v539 resurrectionDate];
  v85 = resurrectionDate;
  v86 = resurrectionDate2;
  v87 = v86;
  if (v85 | v86 && (!v85 || !v86 || ![v85 isEqual:v86]))
  {

    resurrectionDate3 = [v540 resurrectionDate];
    v96 = [NSDateFormatter localizedStringFromDate:resurrectionDate3 dateStyle:1 timeStyle:2];

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
      resurrectionDate4 = [v98 resurrectionDate];
      v100 = resurrectionDate4 == 0;

      v101 = *(v541 + 32);
      v102 = v101;
      if (v100)
      {
        [v101 setConfigServerEnabled:&__kCFBooleanTrue];

        sub_10008720C(v541);
        sub_100088604(v541);
        resurrectionDate5 = NPGetInternalQueue();
        block = _NSConcreteStackBlock;
        p_block = 3221225472;
        v677 = sub_100089738;
        v678 = &unk_100109450;
        v679 = v541;
        p_buf = &buf;
        dispatch_async(resurrectionDate5, &block);
      }

      else
      {
        resurrectionDate5 = [v101 resurrectionDate];

        sub_100088294(v541);
        sub_100087FD4(v541);
        sub_100088994(v541);
        v104 = *(v541 + 32);
        [v104 setResurrectionDate:resurrectionDate5];

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

  userTier = [v540 userTier];
  unsignedIntValue = [userTier unsignedIntValue];
  userTier2 = [v539 userTier];
  LOBYTE(unsignedIntValue) = unsignedIntValue == [userTier2 unsignedIntValue];

  if ((unsignedIntValue & 1) == 0)
  {
    v91 = nplog_obj();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      userTier3 = [v540 userTier];
      unsignedIntValue2 = [userTier3 unsignedIntValue];
      if (unsignedIntValue2 >= 3)
      {
        v94 = [NSString stringWithFormat:@"(unknown: %i)", unsignedIntValue2];
      }

      else
      {
        v94 = *(&off_10010AAE8 + unsignedIntValue2);
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

  userPreferredTier = [v540 userPreferredTier];
  unsignedIntValue3 = [userPreferredTier unsignedIntValue];
  userPreferredTier2 = [v539 userPreferredTier];
  LOBYTE(unsignedIntValue3) = unsignedIntValue3 == [userPreferredTier2 unsignedIntValue];

  if ((unsignedIntValue3 & 1) == 0)
  {
    v111 = nplog_obj();
    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      userTier4 = [v540 userTier];
      unsignedIntValue4 = [userTier4 unsignedIntValue];
      if (unsignedIntValue4 >= 3)
      {
        v113 = [NSString stringWithFormat:@"(unknown: %i)", unsignedIntValue4];
      }

      else
      {
        v113 = *(&off_10010AAE8 + unsignedIntValue4);
      }

      v115 = v113;
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

  if (effectiveUserTier != [v541 effectiveUserTier])
  {
    v117 = nplog_obj();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      effectiveUserTier2 = [v541 effectiveUserTier];
      if (effectiveUserTier2 >= 3)
      {
        v118 = [NSString stringWithFormat:@"(unknown: %i)", effectiveUserTier2];
      }

      else
      {
        v118 = *(&off_10010AAE8 + (effectiveUserTier2 & 3));
      }

      v120 = v118;
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

  willResetSubscriberTierTomorrow = [v540 willResetSubscriberTierTomorrow];
  willResetSubscriberTierTomorrow2 = [v539 willResetSubscriberTierTomorrow];
  if (willResetSubscriberTierTomorrow == willResetSubscriberTierTomorrow2)
  {
    resetTomorrowDate = [v540 resetTomorrowDate];
    resetTomorrowDate2 = [v539 resetTomorrowDate];
    v127 = resetTomorrowDate != resetTomorrowDate2;

    v124 = v127 | v534;
  }

  else
  {
    v124 = 1;
  }

  v534 = v124;

  proxyConfiguration = [v540 proxyConfiguration];
  enabled6 = [proxyConfiguration enabled];
  proxyConfiguration2 = [v539 proxyConfiguration];
  enabled7 = [proxyConfiguration2 enabled];

  if (enabled6 != enabled7)
  {
    v132 = nplog_obj();
    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
    {
      proxyConfiguration3 = [v540 proxyConfiguration];
      enabled8 = [proxyConfiguration3 enabled];
      v135 = "disabled";
      if (enabled8)
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
      proxyConfiguration4 = [v136 proxyConfiguration];
      enabled9 = [proxyConfiguration4 enabled];

      v139 = NPGetInternalQueue();
      v140 = v139;
      block = _NSConcreteStackBlock;
      p_block = 3221225472;
      if (enabled9)
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

  proxyConfiguration5 = [v540 proxyConfiguration];
  enabled10 = [proxyConfiguration5 enabled];

  if (!enabled10)
  {
LABEL_146:
    if ((v534 & 1) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_147;
  }

  proxyAccountType = [v540 proxyAccountType];
  proxyAccountType2 = [v539 proxyAccountType];
  v146 = sub_1000904EC(proxyAccountType, proxyAccountType2);

  if (v146)
  {
    v147 = nplog_obj();
    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
    {
      proxyAccountType3 = [v540 proxyAccountType];
      v149 = [NSPConfiguration proxyAccountTypeToString:proxyAccountType3];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v149;
      _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "proxy account type changed to %@", &buf, 0xCu);
    }

    v534 = 1;
  }

  proxyAccountUnlimited = [v540 proxyAccountUnlimited];
  proxyAccountUnlimited2 = [v539 proxyAccountUnlimited];
  v152 = sub_1000904EC(proxyAccountUnlimited, proxyAccountUnlimited2);

  if (v152)
  {
    v153 = nplog_obj();
    if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
    {
      proxyAccountUnlimited3 = [v540 proxyAccountUnlimited];
      bOOLValue7 = [proxyAccountUnlimited3 BOOLValue];
      v156 = "false";
      if (bOOLValue7)
      {
        v156 = "true";
      }

      LODWORD(buf) = 136446210;
      *(&buf + 4) = v156;
      _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "proxy account unlimited changed to %{public}s", &buf, 0xCu);
    }

    v534 = 1;
  }

  proxyConfiguration6 = [v540 proxyConfiguration];
  authInfo = [proxyConfiguration6 authInfo];
  authURL = [authInfo authURL];
  proxyConfiguration7 = [v539 proxyConfiguration];
  authInfo2 = [proxyConfiguration7 authInfo];
  authURL2 = [authInfo2 authURL];
  if (sub_1000904EC(authURL, authURL2))
  {
  }

  else
  {
    obj = [v540 proxyConfiguration];
    authInfo3 = [obj authInfo];
    accessTokenURL = [authInfo3 accessTokenURL];
    proxyConfiguration8 = [v539 proxyConfiguration];
    authInfo4 = [proxyConfiguration8 authInfo];
    accessTokenURL2 = [authInfo4 accessTokenURL];
    if (sub_1000904EC(accessTokenURL, accessTokenURL2))
    {
      v171 = 1;
    }

    else
    {
      proxyConfiguration9 = [v540 proxyConfiguration];
      authInfo5 = [proxyConfiguration9 authInfo];
      proxyConfiguration10 = [v539 proxyConfiguration];
      authInfo6 = [proxyConfiguration10 authInfo];
      if (sub_10008B3A0(v541, authInfo5, authInfo6))
      {
        proxyConfiguration11 = [v540 proxyConfiguration];
        authInfo7 = [proxyConfiguration11 authInfo];
        accessTokenKnownOrigins = [authInfo7 accessTokenKnownOrigins];
        proxyConfiguration12 = [v539 proxyConfiguration];
        authInfo8 = [proxyConfiguration12 authInfo];
        accessTokenKnownOrigins2 = [authInfo8 accessTokenKnownOrigins];
        if (sub_1000904EC(accessTokenKnownOrigins, accessTokenKnownOrigins2))
        {
          v171 = 1;
        }

        else
        {
          proxyConfiguration13 = [v540 proxyConfiguration];
          authInfo9 = [proxyConfiguration13 authInfo];
          accessTokenBlockedIssuers = [authInfo9 accessTokenBlockedIssuers];
          proxyConfiguration14 = [v539 proxyConfiguration];
          authInfo10 = [proxyConfiguration14 authInfo];
          accessTokenBlockedIssuers2 = [authInfo10 accessTokenBlockedIssuers];
          if (sub_1000904EC(accessTokenBlockedIssuers, accessTokenBlockedIssuers2))
          {
            v171 = 1;
          }

          else
          {
            proxyConfiguration15 = [v540 proxyConfiguration];
            authInfo11 = [proxyConfiguration15 authInfo];
            authType = [authInfo11 authType];
            proxyConfiguration16 = [v539 proxyConfiguration];
            authInfo12 = [proxyConfiguration16 authInfo];
            if (authType == [authInfo12 authType])
            {
              proxyConfiguration17 = [v540 proxyConfiguration];
              authInfo13 = [proxyConfiguration17 authInfo];
              nonDefaultAttesters = [authInfo13 nonDefaultAttesters];
              proxyConfiguration18 = [v539 proxyConfiguration];
              authInfo14 = [proxyConfiguration18 authInfo];
              nonDefaultAttesters2 = [authInfo14 nonDefaultAttesters];
              v171 = sub_1000904EC(nonDefaultAttesters, nonDefaultAttesters2);
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
    proxyConfiguration19 = [v540 proxyConfiguration];
    authInfo15 = [proxyConfiguration19 authInfo];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = authInfo15;
    _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "authentication info updated to %@", &buf, 0xCu);
  }

  sub_100089A74(v541);
  v534 = 1;
LABEL_181:
  proxyConfiguration20 = [v540 proxyConfiguration];
  proxies = [proxyConfiguration20 proxies];

  proxyConfiguration21 = [v539 proxyConfiguration];
  proxies2 = [proxyConfiguration21 proxies];

  v181 = [proxies count];
  if (v181 != [proxies2 count])
  {
    v261 = nplog_obj();
    if (os_log_type_enabled(v261, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = proxies;
      _os_log_impl(&_mh_execute_header, v261, OS_LOG_TYPE_DEFAULT, "proxy info updated to %@", &buf, 0xCu);
    }

    sub_100089D94(v541);
    goto LABEL_308;
  }

  if (![proxies count])
  {
    goto LABEL_246;
  }

  v674 = 0u;
  v673 = 0u;
  v672 = 0u;
  v671 = 0u;
  obja = proxies;
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

      proxyConfiguration8 = v183;
      v185 = *(*(&v671 + 1) + 8 * v183);
      v667 = 0u;
      v668 = 0u;
      v669 = 0u;
      v670 = 0u;
      v186 = proxies2;
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
        proxyHop = [v185 proxyHop];
        if (proxyHop != [v190 proxyHop])
        {
          goto LABEL_240;
        }

        proxyURL = [v185 proxyURL];
        proxyURL2 = [v190 proxyURL];
        v194 = proxyURL;
        v195 = proxyURL2;
        v196 = v195;
        if (!(v194 | v195) || v194 && v195 && [v194 isEqual:v195])
        {

          tcpProxyFqdn = [v185 tcpProxyFqdn];
          tcpProxyFqdn2 = [v190 tcpProxyFqdn];
          v194 = tcpProxyFqdn;
          v199 = tcpProxyFqdn2;
          v196 = v199;
          if (!(v194 | v199) || v194 && v199 && [v194 isEqual:v199])
          {

            proxyKeyInfos = [v185 proxyKeyInfos];
            proxyKeyInfos2 = [v190 proxyKeyInfos];
            v194 = proxyKeyInfos;
            v202 = proxyKeyInfos2;
            v196 = v202;
            if (!(v194 | v202) || v194 && v202 && [v194 isEqual:v202])
            {

              tokenKeyInfo = [v185 tokenKeyInfo];
              tokenKeyInfo2 = [v190 tokenKeyInfo];
              v194 = tokenKeyInfo;
              v205 = tokenKeyInfo2;
              v196 = v205;
              if (!(v194 | v205) || v194 && v205 && [v194 isEqual:v205])
              {

                preferredPathConfigUri = [v185 preferredPathConfigUri];
                preferredPathConfigUri2 = [v190 preferredPathConfigUri];
                v194 = preferredPathConfigUri;
                v208 = preferredPathConfigUri2;
                v196 = v208;
                if (!(v194 | v208) || v194 && v208 && [v194 isEqual:v208])
                {

                  tokenChallenge = [v185 tokenChallenge];
                  tokenChallenge2 = [v190 tokenChallenge];
                  v194 = tokenChallenge;
                  v211 = tokenChallenge2;
                  v196 = v211;
                  if (!(v194 | v211) || v194 && v211 && [v194 isEqual:v211])
                  {

                    bootstrapAddresses = [v185 bootstrapAddresses];
                    bootstrapAddresses2 = [v190 bootstrapAddresses];
                    v194 = bootstrapAddresses;
                    v214 = bootstrapAddresses2;
                    v196 = v214;
                    if (!(v194 | v214) || v194 && v214 && [v194 isEqual:v214])
                    {

                      allowedNextHops = [v185 allowedNextHops];
                      allowedNextHops2 = [v190 allowedNextHops];
                      v194 = allowedNextHops;
                      v217 = allowedNextHops2;
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

      preferredPathPatterns = [v185 preferredPathPatterns];
      preferredPathPatterns2 = [v190 preferredPathPatterns];
      v220 = sub_1000904EC(preferredPathPatterns, preferredPathPatterns2);

      if (v220)
      {
        goto LABEL_240;
      }

      proxyVersion = [v185 proxyVersion];
      proxyVersion2 = [v190 proxyVersion];
      v223 = sub_1000904EC(proxyVersion, proxyVersion2);

      if (v223)
      {
        goto LABEL_240;
      }

      fallbackSupportsUDPProxying = [v185 fallbackSupportsUDPProxying];
      if (fallbackSupportsUDPProxying != [v190 fallbackSupportsUDPProxying])
      {
        goto LABEL_240;
      }

      algorithm = [v185 algorithm];
      if (algorithm != [v190 algorithm])
      {
        goto LABEL_240;
      }

      proxyIndex = [v185 proxyIndex];
      if (proxyIndex != [v190 proxyIndex])
      {
        goto LABEL_240;
      }

      v183 = proxyConfiguration8 + 1;
      v182 = v568;
    }

    while (proxyConfiguration8 + 1 != v576);
    v576 = [obja countByEnumeratingWithState:&v671 objects:v700 count:16];
    v182 = v568;
  }

  while (v576);
LABEL_245:

LABEL_246:
  proxyConfiguration22 = [v540 proxyConfiguration];
  pathWeights = [proxyConfiguration22 pathWeights];

  proxyConfiguration23 = [v539 proxyConfiguration];
  pathWeights2 = [proxyConfiguration23 pathWeights];

  v229 = [pathWeights count];
  if (v229 != [pathWeights2 count])
  {
    v263 = nplog_obj();
    if (os_log_type_enabled(v263, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = pathWeights;
      _os_log_impl(&_mh_execute_header, v263, OS_LOG_TYPE_DEFAULT, "proxy path list updated to %@", &buf, 0xCu);
    }

    sub_100089D94(v541);
LABEL_308:
    v534 = 1;
    goto LABEL_309;
  }

  if (![pathWeights count])
  {
    goto LABEL_271;
  }

  v666 = 0u;
  v665 = 0u;
  v664 = 0u;
  v663 = 0u;
  v546 = pathWeights;
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

      proxyConfiguration8 = v230;
      v232 = *(*(&v663 + 1) + 8 * v230);
      v659 = 0u;
      v660 = 0u;
      v661 = 0u;
      v662 = 0u;
      v577 = pathWeights2;
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
        weight = [v232 weight];
        if (weight != [v235 weight] || (v237 = objc_msgSend(v232, "proxiesCount"), v237 != objc_msgSend(v235, "proxiesCount")))
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
          v239 = [proxies objectAtIndex:{*(objc_msgSend(v232, "proxies") + v238)}];
          v240 = [proxies2 objectAtIndex:{*(objc_msgSend(v235, "proxies") + v238)}];
          proxyURL3 = [v239 proxyURL];
          proxyURL4 = [v240 proxyURL];
          v243 = [proxyURL3 isEqualToString:proxyURL4];

          if ((v243 & 1) == 0)
          {
            goto LABEL_265;
          }
        }

        while (++v238 < [v232 proxiesCount]);
      }

      v230 = proxyConfiguration8 + 1;
      if (proxyConfiguration8 + 1 != v563)
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
  proxyConfiguration24 = [v540 proxyConfiguration];
  fallbackPathWeights = [proxyConfiguration24 fallbackPathWeights];

  proxyConfiguration25 = [v539 proxyConfiguration];
  fallbackPathWeights2 = [proxyConfiguration25 fallbackPathWeights];

  v246 = [fallbackPathWeights count];
  if (v246 == [fallbackPathWeights2 count])
  {
    if (![fallbackPathWeights count])
    {
      goto LABEL_646;
    }

    v658 = 0u;
    v657 = 0u;
    v656 = 0u;
    v655 = 0u;
    v547 = fallbackPathWeights;
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

      proxyConfiguration8 = v247;
      v249 = *(*(&v655 + 1) + 8 * v247);
      v651 = 0u;
      v652 = 0u;
      v653 = 0u;
      v654 = 0u;
      v578 = fallbackPathWeights2;
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
        weight2 = [v249 weight];
        if (weight2 == [v252 weight])
        {
          proxiesCount = [v249 proxiesCount];
          if (proxiesCount == [v252 proxiesCount])
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

      v247 = proxyConfiguration8 + 1;
      if (proxyConfiguration8 + 1 != v564)
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
      v256 = [proxies objectAtIndex:{*(objc_msgSend(v249, "proxies") + v255)}];
      v257 = [proxies2 objectAtIndex:{*(objc_msgSend(v252, "proxies") + v255)}];
      proxyURL5 = [v256 proxyURL];
      proxyURL6 = [v257 proxyURL];
      v260 = [proxyURL5 isEqualToString:proxyURL6];

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
    *(&buf + 4) = fallbackPathWeights;
    _os_log_impl(&_mh_execute_header, v365, OS_LOG_TYPE_DEFAULT, "fallback proxy path list updated to %@", &buf, 0xCu);
  }

  sub_100089D94(v541);
  v534 = 1;
LABEL_646:

LABEL_309:
  proxyConfiguration26 = [v540 proxyConfiguration];
  resolvers = [proxyConfiguration26 resolvers];

  proxyConfiguration27 = [v539 proxyConfiguration];
  resolvers2 = [proxyConfiguration27 resolvers];

  v267 = [resolvers count];
  if (v267 == [resolvers2 count])
  {
    if ([resolvers count])
    {
      v650 = 0u;
      v649 = 0u;
      v648 = 0u;
      v647 = 0u;
      proxyConfiguration8 = resolvers;
      objd = [proxyConfiguration8 countByEnumeratingWithState:&v647 objects:v694 count:16];
      if (objd)
      {
        v579 = *v648;
        while (2)
        {
          for (i = 0; i != objd; i = i + 1)
          {
            if (*v648 != v579)
            {
              objc_enumerationMutation(proxyConfiguration8);
            }

            v269 = *(*(&v647 + 1) + 8 * i);
            v643 = 0u;
            v644 = 0u;
            v645 = 0u;
            v646 = 0u;
            v270 = resolvers2;
            v271 = [v270 countByEnumeratingWithState:&v643 objects:v693 count:16];
            if (!v271)
            {

LABEL_379:
              v308 = nplog_obj();
              if (os_log_type_enabled(v308, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = proxyConfiguration8;
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
                dohURL = [v269 dohURL];
                dohURL2 = [v275 dohURL];
                v278 = dohURL;
                v279 = dohURL2;
                v280 = v279;
                if (v278 | v279 && (!v278 || !v279 || ![v278 isEqual:v279]))
                {
                  goto LABEL_331;
                }

                obliviousDoHConfig = [v269 obliviousDoHConfig];
                obliviousDoHConfig2 = [v275 obliviousDoHConfig];
                v278 = obliviousDoHConfig;
                v283 = obliviousDoHConfig2;
                v280 = v283;
                if (!(v278 | v283) || v278 && v283 && [v278 isEqual:v283])
                {

                  weight3 = [v269 weight];
                  v272 |= weight3 == [v275 weight];
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

          objd = [proxyConfiguration8 countByEnumeratingWithState:&v647 objects:v694 count:16];
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
    proxyConfiguration28 = [v540 proxyConfiguration];
    obje = [proxyConfiguration28 policyTierMaps];

    v580 = [obje countByEnumeratingWithState:&v639 objects:v692 count:16];
    if (v580)
    {
      v286 = 0;
      v287 = 0;
      proxyConfiguration8 = *v640;
      while (1)
      {
        for (k = 0; k != v580; k = k + 1)
        {
          if (*v640 != proxyConfiguration8)
          {
            objc_enumerationMutation(obje);
          }

          v289 = *(*(&v639 + 1) + 8 * k);
          v635 = 0u;
          v636 = 0u;
          v637 = 0u;
          v638 = 0u;
          proxyConfiguration29 = [v539 proxyConfiguration];
          policyTierMaps = [proxyConfiguration29 policyTierMaps];

          v292 = [policyTierMaps countByEnumeratingWithState:&v635 objects:v691 count:16];
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
                objc_enumerationMutation(policyTierMaps);
              }

              v295 = *(*(&v635 + 1) + 8 * m);
              tier = [v289 tier];
              if (tier == [v295 tier])
              {
                policy = [v289 policy];

                policy2 = [v295 policy];

                conditionsCount = [policy conditionsCount];
                if (conditionsCount == [policy2 conditionsCount])
                {
                  if (![policy conditionsCount] || !objc_msgSend(policy, "conditionsCount"))
                  {
LABEL_362:
                    v287 = policy2;
                    v286 = policy;
                    goto LABEL_363;
                  }

                  v300 = 0;
                  while (1)
                  {
                    v301 = *([policy conditions] + v300);
                    if (![policy2 conditionsCount])
                    {
                      break;
                    }

                    v302 = 0;
                    while (*([policy2 conditions] + v302) != v301)
                    {
                      if (++v302 >= [policy2 conditionsCount])
                      {
                        goto LABEL_369;
                      }
                    }

                    if (++v300 >= [policy conditionsCount])
                    {
                      goto LABEL_362;
                    }
                  }

LABEL_369:
                  v304 = nplog_obj();
                  if (os_log_type_enabled(v304, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf) = 138412290;
                    *(&buf + 4) = policy;
                    goto LABEL_371;
                  }
                }

                else
                {
                  v304 = nplog_obj();
                  if (os_log_type_enabled(v304, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf) = 138412290;
                    *(&buf + 4) = policy;
LABEL_371:
                    _os_log_impl(&_mh_execute_header, v304, OS_LOG_TYPE_DEFAULT, "policy information updated to %@", &buf, 0xCu);
                  }
                }

                sub_100089F10(v541, 0);
                v534 = 1;
                goto LABEL_377;
              }
            }

            v292 = [policyTierMaps countByEnumeratingWithState:&v635 objects:v691 count:16];
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

    proxyTrafficState = [v540 proxyTrafficState];
    proxyTrafficState2 = [v539 proxyTrafficState];
    v307 = sub_1000904EC(proxyTrafficState, proxyTrafficState2);

    if (v307)
    {
      sub_100089F10(v541, 0);
      v534 = 1;
    }

    policy2 = v287;
    policy = v286;
LABEL_377:
  }

  else
  {
    v303 = nplog_obj();
    if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = resolvers;
      _os_log_impl(&_mh_execute_header, v303, OS_LOG_TYPE_DEFAULT, "resolver info updated to %@", &buf, 0xCu);
    }

    sub_100089F10(v541, 1);
LABEL_382:
    v534 = 1;
  }

  proxyConfiguration30 = [v540 proxyConfiguration];
  obliviousConfigs = [proxyConfiguration30 obliviousConfigs];

  proxyConfiguration31 = [v539 proxyConfiguration];
  obliviousConfigs2 = [proxyConfiguration31 obliviousConfigs];

  v311 = [obliviousConfigs count];
  if (v311 == [obliviousConfigs2 count])
  {
    if ([obliviousConfigs count])
    {
      v633 = 0u;
      v634 = 0u;
      v631 = 0u;
      v632 = 0u;
      v504 = obliviousConfigs;
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
      v537 = obliviousConfigs2;
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
            obliviousHTTPConfig = [v559 obliviousHTTPConfig];
            obliviousHTTPConfig2 = [v565 obliviousHTTPConfig];
            v318 = obliviousHTTPConfig;
            v319 = obliviousHTTPConfig2;
            v320 = v319;
            obliviousTargets3 = v318;
            proxyConfiguration8 = v319;
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
              v320 = proxyConfiguration8;
              v324 = proxyConfiguration8;
              if (!v363)
              {
                goto LABEL_455;
              }
            }

            transparencyKeyBundle = [v559 transparencyKeyBundle];
            transparencyKeyBundle2 = [v565 transparencyKeyBundle];
            v318 = transparencyKeyBundle;
            v323 = transparencyKeyBundle2;
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

            transparencyProof = [v559 transparencyProof];
            transparencyProof2 = [v565 transparencyProof];
            v327 = transparencyProof;
            v328 = transparencyProof2;
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

            transparencyInternalProof = [v559 transparencyInternalProof];
            transparencyInternalProof2 = [v565 transparencyInternalProof];
            v332 = transparencyInternalProof;
            v333 = transparencyInternalProof2;
            v334 = v333;
            if (v332 | v333 && (!v332 || !v333 || ![v332 isEqual:v333]))
            {

LABEL_453:
LABEL_454:

LABEL_455:
LABEL_456:

              goto LABEL_457;
            }

            obliviousHTTPType = [v559 obliviousHTTPType];
            if (obliviousHTTPType != [v565 obliviousHTTPType])
            {
              goto LABEL_453;
            }

            obliviousTargets = [v559 obliviousTargets];
            v337 = [obliviousTargets count];
            obliviousTargets2 = [v565 obliviousTargets];
            v339 = v337 == [obliviousTargets2 count];

            if (!v339)
            {
              goto LABEL_458;
            }

            v625 = 0u;
            v626 = 0u;
            v623 = 0u;
            v624 = 0u;
            obliviousTargets3 = [v559 obliviousTargets];
            v529 = [obliviousTargets3 countByEnumeratingWithState:&v623 objects:v688 count:16];
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
                  objc_enumerationMutation(obliviousTargets3);
                  v340 = v341;
                }

                v532 = v340;
                v342 = *(*(&v623 + 1) + 8 * v340);
                v619 = 0u;
                v620 = 0u;
                v621 = 0u;
                v622 = 0u;
                proxyConfiguration8 = [v565 obliviousTargets];
                objf = [proxyConfiguration8 countByEnumeratingWithState:&v619 objects:v687 count:16];
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
                    objc_enumerationMutation(proxyConfiguration8);
                  }

                  v344 = *(*(&v619 + 1) + 8 * v343);
                  targetHost = [v342 targetHost];
                  targetHost2 = [v344 targetHost];
                  v347 = targetHost;
                  v348 = targetHost2;
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

                  proxyURLPath = [v342 proxyURLPath];
                  proxyURLPath2 = [v344 proxyURLPath];
                  v352 = proxyURLPath;
                  v353 = proxyURLPath2;
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

                  processes = [v342 processes];
                  processes2 = [v344 processes];
                  v357 = processes;
                  v358 = processes2;
                  v359 = v358;
                  if (v357 | v358 && (!v357 || !v358 || ([v357 isEqual:v358] & 1) == 0))
                  {

LABEL_429:
LABEL_430:

                    goto LABEL_431;
                  }

                  proxyIndex2 = [v342 proxyIndex];
                  if (proxyIndex2 != [v344 proxyIndex])
                  {
                    goto LABEL_429;
                  }

                  weight4 = [v342 weight];
                  v362 = weight4 == [v344 weight];

                  if (v362)
                  {
                    break;
                  }

LABEL_431:
                  if (objf == ++v343)
                  {
                    objf = [proxyConfiguration8 countByEnumeratingWithState:&v619 objects:v687 count:16];
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

              v529 = [obliviousTargets3 countByEnumeratingWithState:&v623 objects:v688 count:16];
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
      *(&buf + 4) = obliviousConfigs;
      _os_log_impl(&_mh_execute_header, v364, OS_LOG_TYPE_DEFAULT, "oblivious configs updated to %@", &buf, 0xCu);
    }

    sub_100089D94(v541);
    v534 = 1;
  }

  proxyConfiguration32 = [v540 proxyConfiguration];
  hasPreferredPathEnabledPercentage = [proxyConfiguration32 hasPreferredPathEnabledPercentage];
  proxyConfiguration33 = [v539 proxyConfiguration];
  if (hasPreferredPathEnabledPercentage == [proxyConfiguration33 hasPreferredPathEnabledPercentage])
  {
    proxyConfiguration34 = [v540 proxyConfiguration];
    preferredPathEnabledPercentage = [proxyConfiguration34 preferredPathEnabledPercentage];
    proxyConfiguration35 = [v539 proxyConfiguration];
    LOBYTE(preferredPathEnabledPercentage) = preferredPathEnabledPercentage == [proxyConfiguration35 preferredPathEnabledPercentage];

    if (preferredPathEnabledPercentage)
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
    proxyConfiguration36 = [v539 proxyConfiguration];
    hasPreferredPathEnabledPercentage2 = [proxyConfiguration36 hasPreferredPathEnabledPercentage];
    LODWORD(buf) = 67109120;
    DWORD1(buf) = hasPreferredPathEnabledPercentage2;
    _os_log_impl(&_mh_execute_header, v373, OS_LOG_TYPE_DEFAULT, "preferred path enabled percentage changed to %u", &buf, 8u);
  }

  v534 = 1;
LABEL_481:
  proxyConfiguration37 = [v540 proxyConfiguration];
  proxiedContentMaps = [proxyConfiguration37 proxiedContentMaps];

  proxyConfiguration38 = [v539 proxyConfiguration];
  proxiedContentMaps2 = [proxyConfiguration38 proxiedContentMaps];

  v378 = [proxiedContentMaps count];
  if (v378 == [proxiedContentMaps2 count])
  {
    if ([proxiedContentMaps count])
    {
      v617 = 0u;
      v618 = 0u;
      v615 = 0u;
      v616 = 0u;
      v554 = proxiedContentMaps;
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

      proxyConfiguration8 = v379;
      v381 = *(*(&v615 + 1) + 8 * v379);
      v611 = 0u;
      v612 = 0u;
      v613 = 0u;
      v614 = 0u;
      objg = proxiedContentMaps2;
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
            identifier = [v381 identifier];
            identifier2 = [v387 identifier];
            v390 = identifier;
            v391 = identifier2;
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

            enabled11 = [v381 enabled];
            if (enabled11 != [v387 enabled])
            {
              goto LABEL_515;
            }

            systemProcessOnly = [v381 systemProcessOnly];
            if (systemProcessOnly != [v387 systemProcessOnly])
            {
              goto LABEL_515;
            }

            matchExactHostnames = [v381 matchExactHostnames];
            if (matchExactHostnames != [v387 matchExactHostnames])
            {
              goto LABEL_515;
            }

            isPrivacyProxy = [v381 isPrivacyProxy];
            if (isPrivacyProxy != [v387 isPrivacyProxy])
            {
              goto LABEL_515;
            }

            proxiesCount2 = [v381 proxiesCount];
            if (proxiesCount2 != [v387 proxiesCount])
            {
              goto LABEL_515;
            }

            hasResolver = [v381 hasResolver];
            if (hasResolver != [v387 hasResolver])
            {
              goto LABEL_515;
            }

            resolver = [v381 resolver];
            if (resolver != [v387 resolver])
            {
              goto LABEL_515;
            }

            hostnames = [v381 hostnames];
            hostnames2 = [v387 hostnames];
            v402 = hostnames;
            v403 = hostnames2;
            v404 = v403;
            if (v402 | v403 && (!v402 || !v403 || ![v402 isEqual:v403]))
            {
              v392 = v404;
              v390 = v402;
              goto LABEL_514;
            }

            processes3 = [v381 processes];
            processes4 = [v387 processes];
            v390 = processes3;
            v407 = processes4;
            v392 = v407;
            if (v390 | v407 && (!v390 || !v407 || ([v390 isEqual:v407] & 1) == 0))
            {

              goto LABEL_514;
            }

            hasPercentEnabled = [v381 hasPercentEnabled];
            if (hasPercentEnabled != [v387 hasPercentEnabled])
            {
              goto LABEL_514;
            }

            percentEnabled = [v381 percentEnabled];
            v584 = percentEnabled == [v387 percentEnabled];

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

            v379 = proxyConfiguration8 + 1;
            if (proxyConfiguration8 + 1 == v572)
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
      *(&buf + 4) = proxiedContentMaps;
      _os_log_impl(&_mh_execute_header, v411, OS_LOG_TYPE_DEFAULT, "proxied content maps updated to %@", &buf, 0xCu);
    }

    sub_100089D94(v541);
    v534 = 1;
  }

  geohashSharingEnabledStatus = [v540 geohashSharingEnabledStatus];
  geohashSharingEnabledStatus2 = [v539 geohashSharingEnabledStatus];
  v415 = sub_1000904EC(geohashSharingEnabledStatus, geohashSharingEnabledStatus2);

  if (v415)
  {
    v416 = nplog_obj();
    if (os_log_type_enabled(v416, OS_LOG_TYPE_DEFAULT))
    {
      geohashSharingEnabledStatus3 = [v540 geohashSharingEnabledStatus];
      bOOLValue8 = [geohashSharingEnabledStatus3 BOOLValue];
      v419 = "disabled";
      if (bOOLValue8)
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

  geohashOverride = [v540 geohashOverride];
  geohashOverride2 = [v539 geohashOverride];
  v422 = geohashOverride2;
  if (geohashOverride == geohashOverride2)
  {
  }

  else
  {
    geohashOverride3 = [v540 geohashOverride];
    geohashOverride4 = [v539 geohashOverride];
    v425 = [geohashOverride3 isEqualToString:geohashOverride4];

    if ((v425 & 1) == 0)
    {
      v426 = nplog_obj();
      if (os_log_type_enabled(v426, OS_LOG_TYPE_DEFAULT))
      {
        geohashOverride5 = [v540 geohashOverride];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = geohashOverride5;
        _os_log_impl(&_mh_execute_header, v426, OS_LOG_TYPE_DEFAULT, "Geohash override changed to %@", &buf, 0xCu);
      }

      sub_10008A0CC(v541);
      v534 = 1;
    }
  }

  epoch = [v540 epoch];
  epoch2 = [v539 epoch];
  v430 = sub_1000904EC(epoch, epoch2);

  if (v430)
  {
    v431 = nplog_obj();
    if (os_log_type_enabled(v431, OS_LOG_TYPE_DEFAULT))
    {
      epoch3 = [v540 epoch];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = epoch3;
      _os_log_impl(&_mh_execute_header, v431, OS_LOG_TYPE_DEFAULT, "Configuration epoch changed to %@", &buf, 0xCu);
    }

    sub_10008A248(v541);
    v534 = 1;
  }

  preferredPathRoutingEnabledStatus = [v540 preferredPathRoutingEnabledStatus];
  preferredPathRoutingEnabledStatus2 = [v539 preferredPathRoutingEnabledStatus];
  v435 = sub_1000904EC(preferredPathRoutingEnabledStatus, preferredPathRoutingEnabledStatus2);

  if (v435)
  {
    v436 = nplog_obj();
    if (os_log_type_enabled(v436, OS_LOG_TYPE_DEFAULT))
    {
      preferredPathRoutingEnabledStatus3 = [v540 preferredPathRoutingEnabledStatus];
      bOOLValue9 = [preferredPathRoutingEnabledStatus3 BOOLValue];
      v439 = "disabled";
      if (bOOLValue9)
      {
        v439 = "enabled";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v439;
      _os_log_impl(&_mh_execute_header, v436, OS_LOG_TYPE_DEFAULT, "Preferred path routing enabled changed to %s", &buf, 0xCu);
    }

    v534 = 1;
  }

  privateAccessTokensEnabledStatus = [v540 privateAccessTokensEnabledStatus];
  privateAccessTokensEnabledStatus2 = [v539 privateAccessTokensEnabledStatus];
  v442 = sub_1000904EC(privateAccessTokensEnabledStatus, privateAccessTokensEnabledStatus2);

  if (v442)
  {
    v443 = nplog_obj();
    if (os_log_type_enabled(v443, OS_LOG_TYPE_DEFAULT))
    {
      privateAccessTokensEnabledStatus3 = [v540 privateAccessTokensEnabledStatus];
      bOOLValue10 = [privateAccessTokensEnabledStatus3 BOOLValue];
      v446 = "disabled";
      if (bOOLValue10)
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

  privateAccessTokensAllowTools = [v540 privateAccessTokensAllowTools];
  privateAccessTokensAllowTools2 = [v539 privateAccessTokensAllowTools];
  v449 = sub_1000904EC(privateAccessTokensAllowTools, privateAccessTokensAllowTools2);

  if (v449)
  {
    v450 = nplog_obj();
    if (os_log_type_enabled(v450, OS_LOG_TYPE_DEFAULT))
    {
      privateAccessTokensAllowTools3 = [v540 privateAccessTokensAllowTools];
      bOOLValue11 = [privateAccessTokensAllowTools3 BOOLValue];
      v453 = "disallowed";
      if (bOOLValue11)
      {
        v453 = "allowed";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v453;
      _os_log_impl(&_mh_execute_header, v450, OS_LOG_TYPE_DEFAULT, "Private access tokens allow tools changed to %s", &buf, 0xCu);
    }

    v534 = 1;
  }

  inProcessFlowDivert = [v540 inProcessFlowDivert];
  inProcessFlowDivert2 = [v539 inProcessFlowDivert];
  v456 = sub_1000904EC(inProcessFlowDivert, inProcessFlowDivert2);

  if (v456)
  {
    v457 = nplog_obj();
    if (os_log_type_enabled(v457, OS_LOG_TYPE_DEFAULT))
    {
      inProcessFlowDivert3 = [v540 inProcessFlowDivert];
      bOOLValue12 = [inProcessFlowDivert3 BOOLValue];
      v460 = "disabled";
      if (bOOLValue12)
      {
        v460 = "enabled";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v460;
      _os_log_impl(&_mh_execute_header, v457, OS_LOG_TYPE_DEFAULT, "In-process flow divert support changed to %s", &buf, 0xCu);
    }

    v534 = 1;
  }

  proxyConfiguration39 = [v540 proxyConfiguration];
  trustedNetworkDiscoveredProxies = [proxyConfiguration39 trustedNetworkDiscoveredProxies];

  proxyConfiguration40 = [v539 proxyConfiguration];
  trustedNetworkDiscoveredProxies2 = [proxyConfiguration40 trustedNetworkDiscoveredProxies];

  v463 = [trustedNetworkDiscoveredProxies count];
  if (v463 == [trustedNetworkDiscoveredProxies2 count])
  {
    if ([trustedNetworkDiscoveredProxies count])
    {
      v609 = 0u;
      v610 = 0u;
      v607 = 0u;
      v608 = 0u;
      v464 = trustedNetworkDiscoveredProxies;
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
          v469 = trustedNetworkDiscoveredProxies2;
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

  proxyConfiguration41 = [v540 proxyConfiguration];
  quotaInfo = [proxyConfiguration41 quotaInfo];
  quotaServices = [quotaInfo quotaServices];

  proxyConfiguration42 = [v539 proxyConfiguration];
  quotaInfo2 = [proxyConfiguration42 quotaInfo];
  quotaServices2 = [quotaInfo2 quotaServices];

  v479 = [quotaServices count];
  if (v479 == [quotaServices2 count])
  {
    if (![quotaServices count])
    {
      goto LABEL_640;
    }

    v601 = 0u;
    v602 = 0u;
    v599 = 0u;
    v600 = 0u;
    v527 = quotaServices;
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
        v585 = quotaServices2;
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
          serviceURL = [v482 serviceURL];
          serviceURL2 = [v485 serviceURL];
          if (![serviceURL isEqualToString:serviceURL2])
          {

            goto LABEL_626;
          }

          supportedUseCaseIdentifiers = [v482 supportedUseCaseIdentifiers];
          if (!supportedUseCaseIdentifiers)
          {
            proxyConfiguration8 = [v485 supportedUseCaseIdentifiers];
            if (!proxyConfiguration8)
            {
              break;
            }
          }

          supportedUseCaseIdentifiers2 = [v482 supportedUseCaseIdentifiers];
          supportedUseCaseIdentifiers3 = [v485 supportedUseCaseIdentifiers];
          v491 = [supportedUseCaseIdentifiers2 isEqualToArray:supportedUseCaseIdentifiers3];

          if (supportedUseCaseIdentifiers)
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

        proxyConfiguration8 = 0;
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
  lastPrivateCloudComputeEnvironment = [v540 lastPrivateCloudComputeEnvironment];
  lastPrivateCloudComputeEnvironment2 = [v539 lastPrivateCloudComputeEnvironment];
  v496 = sub_1000904EC(lastPrivateCloudComputeEnvironment, lastPrivateCloudComputeEnvironment2);

  if ((v496 | v534))
  {
    goto LABEL_147;
  }

LABEL_156:
}

- (void)setConfigurationTrialVersion:(int64_t)version
{
  selfCopy = self;
  if (self)
  {
    self = self->_configuration;
  }

  trialConfigVersion = [(NSPConfigurationManager *)self trialConfigVersion];
  longValue = [trialConfigVersion longValue];

  if (longValue != version)
  {
    if (selfCopy)
    {
      configuration = selfCopy->_configuration;
    }

    else
    {
      configuration = 0;
    }

    v9 = [(NSPConfiguration *)configuration copy];
    v8 = [NSNumber numberWithLong:version];
    [v9 setTrialConfigVersion:v8];

    [(NSPConfigurationManager *)selfCopy updateConfiguration:v9];
  }
}

- (void)setResetDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
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
    willResetSubscriberTierTomorrow = [v6 willResetSubscriberTierTomorrow];

    if (!willResetSubscriberTierTomorrow)
    {
      [v6 setWillResetSubscriberTierTomorrow:&off_1001142C0];
    }

    [v6 setResetTomorrowDate:dateCopy];
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
  selfCopy = self;
  if (self)
  {
    self = self->_configuration;
  }

  v3 = [(NSPConfigurationManager *)self copy];
  [v3 setWillResetSubscriberTierTomorrow:&off_1001142C0];
  [v3 setResetTomorrowDate:0];
  [(NSPConfigurationManager *)selfCopy updateConfiguration:v3];
}

- (BOOL)setUserTier:(unint64_t)tier resetDate:(id)date clearResetDate:(BOOL)resetDate changeSource:(unint64_t)source
{
  resetDateCopy = resetDate;
  dateCopy = date;
  if (self)
  {
    configuration = self->_configuration;
  }

  else
  {
    configuration = 0;
  }

  userTier = [(NSPConfiguration *)configuration userTier];
  unsignedIntegerValue = [userTier unsignedIntegerValue];

  if (unsignedIntegerValue != tier)
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
    cloudSubscriptionCheckEnabled = [(NSPConfiguration *)v20 cloudSubscriptionCheckEnabled];
    if (cloudSubscriptionCheckEnabled)
    {
      v22 = cloudSubscriptionCheckEnabled;
      if (self)
      {
        v23 = self->_configuration;
      }

      else
      {
        v23 = 0;
      }

      cloudSubscriptionCheckEnabled2 = [(NSPConfiguration *)v23 cloudSubscriptionCheckEnabled];
      bOOLValue = [cloudSubscriptionCheckEnabled2 BOOLValue];

      if (!bOOLValue)
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
        v40 = [NSNumber numberWithUnsignedInteger:tier];
        [v39 setUserTier:v40];

        v41 = [NSNumber numberWithUnsignedInteger:tier];
        [v39 setUserPreferredTier:v41];

        if (tier == 2)
        {
          if (source == 1)
          {
            v42 = &off_1001142C0;
            goto LABEL_49;
          }

          if (source == 3)
          {
            v42 = &off_1001142D8;
LABEL_49:
            [v39 setSubscriberEnabledFromNonSettingsApp:v42];
          }
        }

        else if (tier == 1 && dateCopy)
        {
          [v39 setWillResetSubscriberTierTomorrow:&off_1001142D8];
          v43 = v39;
          v44 = dateCopy;
          goto LABEL_52;
        }

        [v39 setWillResetSubscriberTierTomorrow:&off_1001142C0];
        if (!resetDateCopy)
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

    proxyAccountType = [(NSPConfiguration *)v32 proxyAccountType];

    if (proxyAccountType)
    {
      if (self)
      {
        v34 = self->_configuration;
      }

      else
      {
        v34 = 0;
      }

      proxyAccountType2 = [(NSPConfiguration *)v34 proxyAccountType];
      unsignedIntegerValue2 = [proxyAccountType2 unsignedIntegerValue];

      if (tier != 2 || unsignedIntegerValue2 != 1)
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
        if (tier >= 3)
        {
          tier = [NSString stringWithFormat:@"(unknown: %i)", tier];
        }

        else
        {
          tier = *(&off_10010AAE8 + (tier & 3));
        }

        *buf = 138412290;
        v48 = tier;
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

  willResetSubscriberTierTomorrow = [(NSPConfiguration *)v14 willResetSubscriberTierTomorrow];
  bOOLValue2 = [willResetSubscriberTierTomorrow BOOLValue];

  if (!dateCopy && bOOLValue2)
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
    if (resetDateCopy)
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

  willResetSubscriberTierTomorrow2 = [(NSPConfiguration *)v26 willResetSubscriberTierTomorrow];
  bOOLValue3 = [willResetSubscriberTierTomorrow2 BOOLValue];

  v29 = 1;
  if (dateCopy && (bOOLValue3 & 1) == 0)
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
    [v31 setResetTomorrowDate:dateCopy];
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

  geohashSharingEnabledStatus = [(NSPConfigurationManager *)self geohashSharingEnabledStatus];
  bOOLValue = [geohashSharingEnabledStatus BOOLValue];

  return bOOLValue;
}

- (void)setGeohashOverride:(id)override
{
  overrideCopy = override;
  if (self)
  {
    configuration = self->_configuration;
  }

  else
  {
    configuration = 0;
  }

  v5 = configuration;
  geohashOverride = [(NSPConfiguration *)v5 geohashOverride];
  if (geohashOverride == overrideCopy)
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

    geohashOverride2 = [(NSPConfiguration *)v7 geohashOverride];
    v9 = [geohashOverride2 isEqualToString:overrideCopy];

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
    [(NSPConfiguration *)v5 setGeohashOverride:overrideCopy];
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

  privateAccessTokensEnabledStatus = [(NSPConfigurationManager *)self privateAccessTokensEnabledStatus];
  bOOLValue = [privateAccessTokensEnabledStatus BOOLValue];

  return bOOLValue;
}

- (unint64_t)getPrivacyProxyAccountType
{
  if (self)
  {
    self = self->_configuration;
  }

  proxyAccountType = [(NSPConfigurationManager *)self proxyAccountType];
  unsignedIntegerValue = [proxyAccountType unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setProxyTrafficState:(unint64_t)state proxyTraffic:(unint64_t)traffic
{
  selfCopy = self;
  if (self)
  {
    self = self->_configuration;
  }

  proxyTrafficState = [(NSPConfigurationManager *)self proxyTrafficState];
  unsignedLongLongValue = [proxyTrafficState unsignedLongLongValue];

  v9 = unsignedLongLongValue & ~state | traffic & state;
  if (selfCopy)
  {
    configuration = selfCopy->_configuration;
  }

  else
  {
    configuration = 0;
  }

  proxyTrafficState2 = [(NSPConfiguration *)configuration proxyTrafficState];
  unsignedLongLongValue2 = [proxyTrafficState2 unsignedLongLongValue];

  if (unsignedLongLongValue2 != v9)
  {
    if (selfCopy)
    {
      v13 = selfCopy->_configuration;
    }

    else
    {
      v13 = 0;
    }

    v19 = [(NSPConfiguration *)v13 copy];
    if ((v9 & 0x20000) != 0)
    {
      v14 = selfCopy ? selfCopy->_configuration : 0;
      proxyTrafficState3 = [(NSPConfiguration *)v14 proxyTrafficState];
      unsignedLongLongValue3 = [proxyTrafficState3 unsignedLongLongValue];

      if ((unsignedLongLongValue3 & 0x20000) == 0)
      {
        v17 = +[NSDate now];
        [v19 setAnyAppEnabledDate:v17];
      }
    }

    v18 = [NSNumber numberWithUnsignedLongLong:v9];
    [v19 setProxyTrafficState:v18];

    [(NSPConfigurationManager *)selfCopy updateConfiguration:v19];
  }
}

- (void)refreshConfigurationWithReason:(unint64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    configuration = self->_configuration;
  }

  else
  {
    configuration = 0;
  }

  v8 = configuration;
  enabled = [(NSPConfiguration *)v8 enabled];
  if (([enabled BOOLValue] & 1) == 0)
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
  configServerEnabled = [(NSPConfiguration *)v11 configServerEnabled];
  if (![configServerEnabled BOOLValue])
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
  resurrectionDate = [(NSPConfiguration *)v14 resurrectionDate];
  if (resurrectionDate)
  {
    v16 = resurrectionDate;
    if (self)
    {
      v17 = self->_configuration;
    }

    else
    {
      v17 = 0;
    }

    resurrectionDate2 = [(NSPConfiguration *)v17 resurrectionDate];
    [resurrectionDate2 timeIntervalSinceNow];
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
  v23 = handlerCopy;
  sub_1000875D4(self, reason, v22);

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

  proxyConfiguration = [(NSPConfigurationManager *)self proxyConfiguration];
  policyTierMaps = [proxyConfiguration policyTierMaps];

  conditionsCount = [policyTierMaps countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (conditionsCount)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != conditionsCount; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(policyTierMaps);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 tier] == 2)
        {
          policy = [v7 policy];
          conditionsCount = [policy conditionsCount];

          goto LABEL_13;
        }
      }

      conditionsCount = [policyTierMaps countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (conditionsCount)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return conditionsCount;
}

- (void)handlePathChange:(id)change
{
  changeCopy = change;
  if (self)
  {
    objc_storeStrong(&self->_path, change);
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
      if ([changeCopy status] == 1 && self->_configFetchOnNetworkChange)
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
      [changeCopy status];
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
  selfCopy = self;
  v3 = v12;
  if (self)
  {
    if (os_variant_has_internal_content())
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      getSavedPrivateCloudComputeEnvironment = [WeakRetained getSavedPrivateCloudComputeEnvironment];

      if (!getSavedPrivateCloudComputeEnvironment)
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
          selfCopy2 = &v16;
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
          selfCopy2 = self;
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
        *(&buf + 4) = getSavedPrivateCloudComputeEnvironment;
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
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Dealloc: \nConfiguration: %@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = NSPConfigurationManager;
  [(NSPConfigurationManager *)&v4 dealloc];
}

- (NSPConfigurationManager)initWithDelegate:(id)delegate configuration:(id)configuration
{
  delegateCopy = delegate;
  configurationCopy = configuration;
  v8 = configurationCopy;
  if (!delegateCopy)
  {
    v17 = nplog_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
LABEL_12:

      selfCopy = 0;
      goto LABEL_8;
    }

    *buf = 136315138;
    v21 = "[NSPConfigurationManager initWithDelegate:configuration:]";
    v18 = "%s called with null delegate";
LABEL_14:
    _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, v18, buf, 0xCu);
    goto LABEL_12;
  }

  if (!configurationCopy)
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
    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong((v10 + 32), configuration);
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
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (void)publishDailyConfigurationStats
{
  v18 = objc_alloc_init(NSPConfigurationStats);
  if (self)
  {
    proxyConfiguration = [(NSPConfiguration *)self->_configuration proxyConfiguration];
    -[NSPConfigurationStats setConfigurationVersion:](v18, "setConfigurationVersion:", [proxyConfiguration version]);

    configuration = self->_configuration;
  }

  else
  {
    proxyConfiguration2 = [0 proxyConfiguration];
    -[NSPConfigurationStats setConfigurationVersion:](v18, "setConfigurationVersion:", [proxyConfiguration2 version]);

    configuration = 0;
  }

  v5 = configuration;
  enabled = [(NSPConfiguration *)v5 enabled];
  -[NSPConfigurationStats setConfigurationEnabled:](v18, "setConfigurationEnabled:", [enabled BOOLValue]);

  if (self)
  {
    v7 = self->_configuration;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  proxyConfiguration3 = [(NSPConfiguration *)v8 proxyConfiguration];
  -[NSPConfigurationStats setTokenFetchEnabled:](v18, "setTokenFetchEnabled:", [proxyConfiguration3 enabled]);

  effectiveUserTier = [(NSPConfigurationManager *)self effectiveUserTier];
  if (effectiveUserTier >= 3)
  {
    v11 = [NSString stringWithFormat:@"(unknown: %i)", effectiveUserTier];
  }

  else
  {
    v11 = *(&off_10010AAE8 + (effectiveUserTier & 3));
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
  proxyTrafficState = [(NSPConfiguration *)v13 proxyTrafficState];
  unsignedLongLongValue = [proxyTrafficState unsignedLongLongValue];

  if (unsignedLongLongValue)
  {
    [(NSPConfigurationStats *)v18 setSafariUnencryptedEnabled:1];
  }

  v16 = v18;
  if ((unsignedLongLongValue & 2) != 0)
  {
    [(NSPConfigurationStats *)v18 setSafariDNSEnabled:1];
    v16 = v18;
    if ((unsignedLongLongValue & 4) == 0)
    {
LABEL_14:
      if ((unsignedLongLongValue & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_44;
    }
  }

  else if ((unsignedLongLongValue & 4) == 0)
  {
    goto LABEL_14;
  }

  [(NSPConfigurationStats *)v18 setSafariTrackersEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 8) == 0)
  {
LABEL_15:
    if ((unsignedLongLongValue & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  [(NSPConfigurationStats *)v18 setSafariAllEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x10) == 0)
  {
LABEL_16:
    if ((unsignedLongLongValue & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  [(NSPConfigurationStats *)v18 setSafariHTTPEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x40000) == 0)
  {
LABEL_17:
    if ((unsignedLongLongValue & 0x80000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  [(NSPConfigurationStats *)v18 setSafariPrivateUnencryptedEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x80000) == 0)
  {
LABEL_18:
    if ((unsignedLongLongValue & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  [(NSPConfigurationStats *)v18 setSafariPrivateDNSEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x100000) == 0)
  {
LABEL_19:
    if ((unsignedLongLongValue & 0x200000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  [(NSPConfigurationStats *)v18 setSafariPrivateAllEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x200000) == 0)
  {
LABEL_20:
    if ((unsignedLongLongValue & 0x20) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  [(NSPConfigurationStats *)v18 setSafariMetricsEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x20) == 0)
  {
LABEL_21:
    if ((unsignedLongLongValue & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  [(NSPConfigurationStats *)v18 setMailTrackersEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x40) == 0)
  {
LABEL_22:
    if ((unsignedLongLongValue & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  [(NSPConfigurationStats *)v18 setUnencryptedEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x80) == 0)
  {
LABEL_23:
    if ((unsignedLongLongValue & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  [(NSPConfigurationStats *)v18 setDnsEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x100) == 0)
  {
LABEL_24:
    if ((unsignedLongLongValue & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  [(NSPConfigurationStats *)v18 setKnownTrackersEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x200) == 0)
  {
LABEL_25:
    if ((unsignedLongLongValue & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  [(NSPConfigurationStats *)v18 setAppTrackersEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x400) == 0)
  {
LABEL_26:
    if ((unsignedLongLongValue & 0x10000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  [(NSPConfigurationStats *)v18 setNewsURLResolutionEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x10000) == 0)
  {
LABEL_27:
    if ((unsignedLongLongValue & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  [(NSPConfigurationStats *)v18 setNewsEmbeddedContentEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x800) == 0)
  {
LABEL_28:
    if ((unsignedLongLongValue & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  [(NSPConfigurationStats *)v18 setExposureNotificationsEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x1000) == 0)
  {
LABEL_29:
    if ((unsignedLongLongValue & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  [(NSPConfigurationStats *)v18 setAppleCertificatesEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x2000) == 0)
  {
LABEL_30:
    if ((unsignedLongLongValue & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  [(NSPConfigurationStats *)v18 setNetworkToolsEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x4000) == 0)
  {
LABEL_31:
    if ((unsignedLongLongValue & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

LABEL_60:
  [(NSPConfigurationStats *)v18 setMetricsUploadEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x8000) == 0)
  {
LABEL_32:
    if ((unsignedLongLongValue & 0x20000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_62;
  }

LABEL_61:
  [(NSPConfigurationStats *)v18 setBrandedCallingEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x20000) == 0)
  {
LABEL_33:
    if ((unsignedLongLongValue & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_63;
  }

LABEL_62:
  [(NSPConfigurationStats *)v18 setAppMetricsEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x400000) == 0)
  {
LABEL_34:
    if ((unsignedLongLongValue & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_64;
  }

LABEL_63:
  [(NSPConfigurationStats *)v18 setPromotedContentEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x800000) == 0)
  {
LABEL_35:
    if ((unsignedLongLongValue & 0x1000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

LABEL_64:
  [(NSPConfigurationStats *)v18 setPostbackFetchEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x1000000) == 0)
  {
LABEL_36:
    if ((unsignedLongLongValue & 0x2000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_66;
  }

LABEL_65:
  [(NSPConfigurationStats *)v18 setPasswordManagerIconFetchEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x2000000) == 0)
  {
LABEL_37:
    if ((unsignedLongLongValue & 0x4000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_66:
  [(NSPConfigurationStats *)v18 setLaunchWarningDetailsEnabled:1];
  v16 = v18;
  if ((unsignedLongLongValue & 0x4000000) != 0)
  {
LABEL_38:
    [(NSPConfigurationStats *)v18 setPodcastsLinkPresentationEnabled:1];
    v16 = v18;
  }

LABEL_39:
  [(NSPProxyAnalytics *)v16 sendAnalytics];
}

- (void)copyProxyInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    if (self)
    {
      [infoCopy setConfigFetchedSuccessCount:self->_configFetchSuccessCount];
      configFetchFailedCount = self->_configFetchFailedCount;
    }

    else
    {
      [infoCopy setConfigFetchedSuccessCount:0];
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
  effectiveUserTier = [(NSPConfigurationManager *)self effectiveUserTier];
  if (effectiveUserTier >= 3)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", effectiveUserTier];
  }

  else
  {
    v5 = *(&off_10010AAE8 + (effectiveUserTier & 3));
  }

  [v3 setObject:v5 forKeyedSubscript:@"EffectiveUserTier"];

  return v3;
}

@end