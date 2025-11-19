@interface NSPProxyTokenInfo
- (NSPProxyTokenInfo)init;
- (NSPProxyTokenInfo)initWithCoder:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)reportErrorForTokenRegistration:(id)a3 error:(int)a4 withOptions:(id)a5;
- (void)tokenLowWaterMarkReached;
@end

@implementation NSPProxyTokenInfo

- (NSString)description
{
  if (self)
  {
    v3 = [[NSMutableString alloc] initWithCapacity:0];
    v4 = [(NSPPrivacyProxyProxyInfo *)self->_proxyInfo proxyURL];
    sub_1000417D0(v3, v4, @"Proxy URL", 0, 14);

    sub_10004208C(v3, self->_tokenCount, @"Proxy tokens count", 0, 14);
    sub_1000417D0(v3, self->_tokenAgentUUID, @"Proxy token Agent UUID", 0, 14);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  v3 = nplog_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (self)
    {
      proxyInfo = self->_proxyInfo;
    }

    else
    {
      proxyInfo = 0;
    }

    v5 = proxyInfo;
    v6 = [(NSPPrivacyProxyProxyInfo *)v5 vendor];
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Dealloc: Proxy Token Info : %@", buf, 0xCu);
  }

  sub_100004FBC(self);
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained mergeTokenStats:self];

    tokenRegistration = self->_tokenRegistration;
  }

  else
  {
    [0 mergeTokenStats:0];
    tokenRegistration = 0;
  }

  sub_1000035F4(&tokenRegistration->super.isa);
  sub_100005238(self);
  v9.receiver = self;
  v9.super_class = NSPProxyTokenInfo;
  [(NSPProxyTokenInfo *)&v9 dealloc];
}

- (NSPProxyTokenInfo)init
{
  v6.receiver = self;
  v6.super_class = NSPProxyTokenInfo;
  v2 = [(NSPProxyTokenInfo *)&v6 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    tokenAgentUUID = v2->_tokenAgentUUID;
    v2->_tokenAgentUUID = v3;
  }

  return v2;
}

- (NSPProxyTokenInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NSPProxyTokenInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyInfo"];
    proxyInfo = v5->_proxyInfo;
    v5->_proxyInfo = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyTokenAgentUUID"];
    tokenAgentUUID = v5->_tokenAgentUUID;
    v5->_tokenAgentUUID = v8;

    v5->_tokenFetchRetryAttempt = [v4 decodeIntegerForKey:@"proxyTokenFetchRetryAttempt"];
    v5->_tokenFetchRetryOnKeyOrNetworkChange = [v4 decodeBoolForKey:@"proxyTokenFetchRetryOnNetworkOrKeyChange"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyTokenFetchRetryDate"];
    tokenFetchRetryDate = v5->_tokenFetchRetryDate;
    v5->_tokenFetchRetryDate = v10;

    v5->_useDefaultInterface = [v4 decodeBoolForKey:@"proxyTokenUseDefaultInterface"];
    v5->_subscriber = [v4 decodeBoolForKey:@"proxyTokenSubscriber"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxyTokenNetworkSignature"];
    networkSignature = v5->_networkSignature;
    v5->_networkSignature = v12;

    if (sub_100004F70(v5))
    {
      v14 = [NSPPrivacyProxyTokenRegistration alloc];
      v15 = v5->_tokenAgentUUID;
      v16 = v5->_proxyInfo;
      v17 = v15;
      v18 = [(NSPPrivacyProxyProxyInfo *)v16 vendor];
      v19 = sub_100002834(v14, v17, v18, v5, 1);
      tokenRegistration = v5->_tokenRegistration;
      v5->_tokenRegistration = v19;

      v21 = v5->_tokenRegistration;
      if (v5->_subscriber)
      {
        if ([(NSPPrivacyProxyProxyInfo *)v5->_proxyInfo proxyHop]== 1)
        {
          v22 = 15;
        }

        else
        {
          v22 = 5;
        }
      }

      else
      {
        v22 = 5;
      }

      sub_100003094(v21, v22);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (self)
  {
    [v5 encodeObject:self->_proxyInfo forKey:@"proxyInfo"];
    [v5 encodeObject:self->_tokenAgentUUID forKey:@"proxyTokenAgentUUID"];
    [v5 encodeInteger:self->_tokenFetchRetryAttempt forKey:@"proxyTokenFetchRetryAttempt"];
    [v5 encodeBool:self->_tokenFetchRetryOnKeyOrNetworkChange forKey:@"proxyTokenFetchRetryOnNetworkOrKeyChange"];
    [v5 encodeObject:self->_tokenFetchRetryDate forKey:@"proxyTokenFetchRetryDate"];
    [v5 encodeBool:self->_useDefaultInterface forKey:@"proxyTokenUseDefaultInterface"];
    [v5 encodeBool:self->_subscriber forKey:@"proxyTokenSubscriber"];
    networkSignature = self->_networkSignature;
  }

  else
  {
    [v5 encodeObject:0 forKey:@"proxyInfo"];
    [v5 encodeObject:0 forKey:@"proxyTokenAgentUUID"];
    [v5 encodeInteger:0 forKey:@"proxyTokenFetchRetryAttempt"];
    [v5 encodeBool:0 forKey:@"proxyTokenFetchRetryOnNetworkOrKeyChange"];
    [v5 encodeObject:0 forKey:@"proxyTokenFetchRetryDate"];
    [v5 encodeBool:0 forKey:@"proxyTokenUseDefaultInterface"];
    [v5 encodeBool:0 forKey:@"proxyTokenSubscriber"];
    networkSignature = 0;
  }

  [v5 encodeObject:networkSignature forKey:@"proxyTokenNetworkSignature"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NSPProxyTokenInfo allocWithZone:?]];
  v5 = v4;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  WeakRetained = 0;
  if (v4)
  {
LABEL_3:
    objc_storeWeak((v5 + 16), WeakRetained);
  }

LABEL_4:

  if (self)
  {
    sub_100006B14(v5, self->_proxyInfo);
    tokenCount = self->_tokenCount;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_100006B14(v5, 0);
  tokenCount = 0;
  if (v5)
  {
LABEL_6:
    *(v5 + 32) = tokenCount;
  }

LABEL_7:
  if (self)
  {
    sub_100006664(v5, self->_tokenRegistration);
    tokenAgentUUID = self->_tokenAgentUUID;
  }

  else
  {
    sub_100006664(v5, 0);
    tokenAgentUUID = 0;
  }

  v9 = tokenAgentUUID;
  if (v5)
  {
    objc_storeStrong((v5 + 48), tokenAgentUUID);
  }

  if (self)
  {
    sub_100006B24(v5, self->_tokenPath);
    tokenRequestPending = self->_tokenRequestPending;
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  sub_100006B24(v5, 0);
  tokenRequestPending = 0;
  if (v5)
  {
LABEL_13:
    *(v5 + 8) = tokenRequestPending;
  }

LABEL_14:
  if (self)
  {
    sub_1000050DC(v5, self->_tokenFetchRetryTimer);
    tokenFetchRetryAttempt = self->_tokenFetchRetryAttempt;
    if (!v5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  sub_1000050DC(v5, 0);
  tokenFetchRetryAttempt = 0;
  if (v5)
  {
LABEL_16:
    *(v5 + 72) = tokenFetchRetryAttempt;
  }

LABEL_17:
  if (self)
  {
    tokenFetchRetryOnKeyOrNetworkChange = self->_tokenFetchRetryOnKeyOrNetworkChange;
    if (!v5)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  tokenFetchRetryOnKeyOrNetworkChange = 0;
  if (v5)
  {
LABEL_19:
    *(v5 + 9) = tokenFetchRetryOnKeyOrNetworkChange;
  }

LABEL_20:
  if (self)
  {
    sub_1000050EC(v5, self->_tokenFetchRetryDate);
    useDefaultInterface = self->_useDefaultInterface;
    if (!v5)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  sub_1000050EC(v5, 0);
  useDefaultInterface = 0;
  if (v5)
  {
LABEL_22:
    *(v5 + 10) = useDefaultInterface;
  }

LABEL_23:
  if (self)
  {
    subscriber = self->_subscriber;
    if (!v5)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  subscriber = 0;
  if (v5)
  {
LABEL_25:
    *(v5 + 11) = subscriber;
  }

LABEL_26:
  if (self)
  {
    tokenFetchSuccessCount = self->_tokenFetchSuccessCount;
    if (!v5)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  tokenFetchSuccessCount = 0;
  if (v5)
  {
LABEL_28:
    *(v5 + 88) = tokenFetchSuccessCount;
  }

LABEL_29:
  if (self)
  {
    tokenConsumedCount = self->_tokenConsumedCount;
    if (!v5)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  tokenConsumedCount = 0;
  if (v5)
  {
LABEL_31:
    *(v5 + 96) = tokenConsumedCount;
  }

LABEL_32:
  if (self)
  {
    tokenExpiredCount = self->_tokenExpiredCount;
    if (!v5)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  tokenExpiredCount = 0;
  if (v5)
  {
LABEL_34:
    *(v5 + 104) = tokenExpiredCount;
  }

LABEL_35:
  if (self)
  {
    tokenFetchFailedCount = self->_tokenFetchFailedCount;
    if (!v5)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  tokenFetchFailedCount = 0;
  if (v5)
  {
LABEL_37:
    *(v5 + 112) = tokenFetchFailedCount;
  }

LABEL_38:
  if (self)
  {
    agentLowWaterMarkHitCount = self->_agentLowWaterMarkHitCount;
    if (!v5)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  agentLowWaterMarkHitCount = 0;
  if (v5)
  {
LABEL_40:
    *(v5 + 120) = agentLowWaterMarkHitCount;
  }

LABEL_41:
  if (self)
  {
    cacheLowWaterMarkHitCount = self->_cacheLowWaterMarkHitCount;
    if (!v5)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  cacheLowWaterMarkHitCount = 0;
  if (v5)
  {
LABEL_43:
    *(v5 + 128) = cacheLowWaterMarkHitCount;
  }

LABEL_44:
  if (self)
  {
    badTokenCount = self->_badTokenCount;
    if (!v5)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  badTokenCount = 0;
  if (v5)
  {
LABEL_46:
    *(v5 + 136) = badTokenCount;
  }

LABEL_47:
  if (self)
  {
    missingTokenCount = self->_missingTokenCount;
    if (!v5)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  missingTokenCount = 0;
  if (v5)
  {
LABEL_49:
    *(v5 + 144) = missingTokenCount;
  }

LABEL_50:
  if (self)
  {
    self = self->_networkSignature;
  }

  v23 = self;
  if (v5)
  {
    objc_storeStrong((v5 + 152), self);
  }

  v24 = v5;
  return v24;
}

- (void)tokenLowWaterMarkReached
{
  if (self)
  {
    ++self->_agentLowWaterMarkHitCount;
  }

  v3 = +[NSDate date];
  if (self)
  {
    proxyInfo = self->_proxyInfo;
  }

  else
  {
    proxyInfo = 0;
  }

  v5 = proxyInfo;
  v6 = [(NSPPrivacyProxyProxyInfo *)v5 vendor];
  v7 = sub_1000071A0(self);

  [NSPCoreData saveTokenEvent:v3 eventType:0 vendor:v6 tokenCount:v7];
  sub_100005F60(self);

  sub_100008198(self);
}

- (void)reportErrorForTokenRegistration:(id)a3 error:(int)a4 withOptions:(id)a5
{
  v8 = a3;
  buffer = 0u;
  memset(v31, 0, sizeof(v31));
  v9 = [a5 objectForKeyedSubscript:NWNetworkAgentStartOptionClientUUID];
  if (!v9)
  {
    v16 = 0;
    goto LABEL_14;
  }

  v10 = [NWPath pathForClientID:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 interface];
    v13 = [v11 parameters];
    v14 = [v13 pid];
    if (v14)
    {
      v15 = v14;
      if (proc_pidinfo(v14, 13, 1uLL, &buffer, 64) == 64)
      {
        v16 = v31;
LABEL_12:

        goto LABEL_13;
      }

      v17 = nplog_obj();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v28 = 67109120;
        *v29 = v15;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to convert from PID (%d) to process name", &v28, 8u);
      }
    }

    v16 = 0;
    goto LABEL_12;
  }

  v16 = 0;
LABEL_13:

LABEL_14:
  v18 = nplog_obj();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
  if (a4)
  {
    if (v19)
    {
      if (!v16)
      {
        v16 = "none";
      }

      if (self)
      {
        proxyInfo = self->_proxyInfo;
      }

      else
      {
        proxyInfo = 0;
      }

      v21 = proxyInfo;
      v22 = [(NSPPrivacyProxyProxyInfo *)v21 vendor];
      v28 = 67109634;
      *v29 = a4;
      *&v29[4] = 2080;
      *&v29[6] = v16;
      *&v29[14] = 2112;
      *&v29[16] = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Received error (%d) from %s for %@ agent", &v28, 0x1Cu);
    }

    if (a4 == 81)
    {
      if (self)
      {
        ++self->_missingTokenCount;
      }

      sub_100005F60(self);
      sub_100008198(self);
      sub_100007414(self);
    }

    else if (a4 == 80)
    {
      if (self)
      {
        ++self->_badTokenCount;
        if (v8)
        {
          [v8[3] flushTokens];
        }

        sub_10000724C(self);
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
      }

      else
      {
        if (v8)
        {
          [v8[3] flushTokens];
        }

        WeakRetained = 0;
      }

      [WeakRetained tokenInfoInvalid:self];
    }
  }

  else
  {
    if (v19)
    {
      if (v16)
      {
        v24 = v16;
      }

      else
      {
        v24 = "none";
      }

      if (self)
      {
        v25 = self->_proxyInfo;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;
      v27 = [(NSPPrivacyProxyProxyInfo *)v26 vendor];
      v28 = 136315394;
      *v29 = v24;
      *&v29[8] = 2112;
      *&v29[10] = v27;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Received success indication from %s for %@ agent", &v28, 0x16u);
    }
  }
}

@end