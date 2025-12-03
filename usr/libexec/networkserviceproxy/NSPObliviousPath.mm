@interface NSPObliviousPath
- (BOOL)allowFallback;
- (BOOL)matchIngress:(id)ingress;
- (BOOL)pathReady;
- (BOOL)shouldBePenalized;
- (BOOL)validateTransparencyIfNecessaryWithCompletion:(id)completion;
- (NSPObliviousPath)initWithCoder:(id)coder;
- (NSPObliviousPath)initWithDelegate:(id)delegate obliviousConfig:(id)config obliviousHTTPType:(int)type transparencyKeyBundle:(id)bundle transparencyProof:(id)proof obliviousTarget:(id)target proxyInfo:(id)info allowFailOpen:(BOOL)self0 networkCharacteristics:(id)self1;
- (NSPObliviousPathDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent options:(unint64_t)options;
- (id)shortName;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleNetworkCharacteristicsChange:(id)change;
- (void)removeProxyAgents;
- (void)resetError;
- (void)resetFallbackProxyAgent;
- (void)resetQUICProxyAgentForceUpdateDelegate:(BOOL)delegate;
- (void)resetStats;
@end

@implementation NSPObliviousPath

- (NSPObliviousPath)initWithDelegate:(id)delegate obliviousConfig:(id)config obliviousHTTPType:(int)type transparencyKeyBundle:(id)bundle transparencyProof:(id)proof obliviousTarget:(id)target proxyInfo:(id)info allowFailOpen:(BOOL)self0 networkCharacteristics:(id)self1
{
  delegateCopy = delegate;
  configCopy = config;
  bundleCopy = bundle;
  proofCopy = proof;
  targetCopy = target;
  infoCopy = info;
  characteristicsCopy = characteristics;
  v36.receiver = self;
  v36.super_class = NSPObliviousPath;
  v20 = [(NSPObliviousPath *)&v36 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_delegate, delegateCopy);
    objc_storeStrong(&v21->_obliviousConfig, config);
    v21->_obliviousHTTPType = type;
    objc_storeStrong(&v21->_obliviousTarget, target);
    objc_storeStrong(&v21->_transparencyKeyBundle, bundle);
    objc_storeStrong(&v21->_transparencyProof, proof);
    objc_storeStrong(&v21->_proxyInfo, info);
    v21->_allowFailOpen = open;
    v22 = objc_alloc_init(NSPProxyAgentNetworkStatistics);
    statistics = v21->_statistics;
    v21->_statistics = v22;

    sub_10000A4F0(v21->_statistics, characteristicsCopy);
    v21->_transparencyState = 0;
    v24 = +[NSUUID UUID];
    quicAgentUUID = v21->_quicAgentUUID;
    v21->_quicAgentUUID = v24;

    if ([(NSPObliviousPath *)v21 allowFallback])
    {
      v26 = +[NSUUID UUID];
      fallbackAgentUUID = v21->_fallbackAgentUUID;
      v21->_fallbackAgentUUID = v26;
    }

    v28 = v21;
  }

  else
  {
    v30 = nplog_obj();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }
  }

  return v21;
}

- (id)descriptionWithIndent:(int)indent options:(unint64_t)options
{
  v7 = [[NSMutableString alloc] initWithCapacity:0];
  obliviousTarget = [(NSPObliviousPath *)self obliviousTarget];
  sub_1000417D0(v7, obliviousTarget, @"Oblivious target", indent, options);

  proxyInfo = [(NSPObliviousPath *)self proxyInfo];
  sub_1000417D0(v7, proxyInfo, @"Proxy", indent, options);

  quicAgentUUID = [(NSPObliviousPath *)self quicAgentUUID];
  sub_1000417D0(v7, quicAgentUUID, @"QUIC Agent UUID", indent, options);

  fallbackAgentUUID = [(NSPObliviousPath *)self fallbackAgentUUID];
  sub_1000417D0(v7, fallbackAgentUUID, @"Fallback Agent UUID", indent, options);

  sub_100042020(v7, [(NSPObliviousPath *)self allowFailOpen], @"Allow fail open", indent, options);
  sub_10004208C(v7, [(NSPObliviousPath *)self transparencyState], @"Transparency state", indent, options);
  obliviousHTTPType = [(NSPObliviousPath *)self obliviousHTTPType];
  if (obliviousHTTPType >= 3)
  {
    v13 = [NSString stringWithFormat:@"(unknown: %i)", obliviousHTTPType];
  }

  else
  {
    v13 = *(&off_100109A40 + obliviousHTTPType);
  }

  sub_1000417D0(v7, v13, @"Oblivious HTTP type", indent, options);

  return v7;
}

- (NSPObliviousPath)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = NSPObliviousPath;
  v5 = [(NSPObliviousPath *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"obliviousPathProxy"];
    proxyInfo = v5->_proxyInfo;
    v5->_proxyInfo = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"obliviousPathQUICAgentUUID"];
    quicAgentUUID = v5->_quicAgentUUID;
    v5->_quicAgentUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"obliviousPathFallbackAgentUUID"];
    fallbackAgentUUID = v5->_fallbackAgentUUID;
    v5->_fallbackAgentUUID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"obliviousPathConfig"];
    obliviousConfig = v5->_obliviousConfig;
    v5->_obliviousConfig = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"obliviousPathTarget"];
    obliviousTarget = v5->_obliviousTarget;
    v5->_obliviousTarget = v14;

    v5->_allowFailOpen = [coderCopy decodeBoolForKey:@"obliviousPathAllowFailOpen"];
    v5->_obliviousHTTPType = [coderCopy decodeIntegerForKey:@"obliviousPathType"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"obliviousPathTransparencyKeyBundle"];
    transparencyKeyBundle = v5->_transparencyKeyBundle;
    v5->_transparencyKeyBundle = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"obliviousPathTransparencyProof"];
    transparencyProof = v5->_transparencyProof;
    v5->_transparencyProof = v18;

    v20 = [coderCopy decodeIntegerForKey:@"obliviousPathTransparencyState"];
    if (v20 == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }

    v5->_transparencyState = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  proxyInfo = [(NSPObliviousPath *)self proxyInfo];
  [coderCopy encodeObject:proxyInfo forKey:@"obliviousPathProxy"];

  quicAgentUUID = [(NSPObliviousPath *)self quicAgentUUID];
  [coderCopy encodeObject:quicAgentUUID forKey:@"obliviousPathQUICAgentUUID"];

  fallbackAgentUUID = [(NSPObliviousPath *)self fallbackAgentUUID];
  [coderCopy encodeObject:fallbackAgentUUID forKey:@"obliviousPathFallbackAgentUUID"];

  obliviousConfig = [(NSPObliviousPath *)self obliviousConfig];
  [coderCopy encodeObject:obliviousConfig forKey:@"obliviousPathConfig"];

  obliviousTarget = [(NSPObliviousPath *)self obliviousTarget];
  [coderCopy encodeObject:obliviousTarget forKey:@"obliviousPathTarget"];

  [coderCopy encodeBool:-[NSPObliviousPath allowFailOpen](self forKey:{"allowFailOpen"), @"obliviousPathAllowFailOpen"}];
  [coderCopy encodeInteger:-[NSPObliviousPath obliviousHTTPType](self forKey:{"obliviousHTTPType"), @"obliviousPathType"}];
  transparencyKeyBundle = [(NSPObliviousPath *)self transparencyKeyBundle];
  [coderCopy encodeObject:transparencyKeyBundle forKey:@"obliviousPathTransparencyKeyBundle"];

  transparencyProof = [(NSPObliviousPath *)self transparencyProof];
  [coderCopy encodeObject:transparencyProof forKey:@"obliviousPathTransparencyProof"];

  if ([(NSPObliviousPath *)self transparencyState]!= 1)
  {
    [coderCopy encodeInteger:-[NSPObliviousPath transparencyState](self forKey:{"transparencyState"), @"obliviousPathTransparencyState"}];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NSPObliviousPath allocWithZone:?]];
  obliviousConfig = [(NSPObliviousPath *)self obliviousConfig];
  [(NSPObliviousPath *)v4 setObliviousConfig:obliviousConfig];

  obliviousTarget = [(NSPObliviousPath *)self obliviousTarget];
  [(NSPObliviousPath *)v4 setObliviousTarget:obliviousTarget];

  proxyInfo = [(NSPObliviousPath *)self proxyInfo];
  [(NSPObliviousPath *)v4 setProxyInfo:proxyInfo];

  quicAgentUUID = [(NSPObliviousPath *)self quicAgentUUID];
  [(NSPObliviousPath *)v4 setQuicAgentUUID:quicAgentUUID];

  fallbackAgentUUID = [(NSPObliviousPath *)self fallbackAgentUUID];
  [(NSPObliviousPath *)v4 setFallbackAgentUUID:fallbackAgentUUID];

  quicRegistration = [(NSPObliviousPath *)self quicRegistration];
  [(NSPObliviousPath *)v4 setQuicRegistration:quicRegistration];

  fallbackRegistration = [(NSPObliviousPath *)self fallbackRegistration];
  [(NSPObliviousPath *)v4 setFallbackRegistration:fallbackRegistration];

  [(NSPObliviousPath *)v4 setObliviousAgentRegistered:[(NSPObliviousPath *)self obliviousAgentRegistered]];
  [(NSPObliviousPath *)v4 setAllowFailOpen:[(NSPObliviousPath *)self allowFailOpen]];
  [(NSPObliviousPath *)v4 setObliviousHTTPType:[(NSPObliviousPath *)self obliviousHTTPType]];
  statistics = [(NSPObliviousPath *)self statistics];
  [(NSPObliviousPath *)v4 setStatistics:statistics];

  transparencyKeyBundle = [(NSPObliviousPath *)self transparencyKeyBundle];
  [(NSPObliviousPath *)v4 setTransparencyKeyBundle:transparencyKeyBundle];

  transparencyProof = [(NSPObliviousPath *)self transparencyProof];
  [(NSPObliviousPath *)v4 setTransparencyProof:transparencyProof];

  [(NSPObliviousPath *)v4 setTransparencyState:[(NSPObliviousPath *)self transparencyState]];
  return v4;
}

- (id)shortName
{
  obliviousTarget = [(NSPObliviousPath *)self obliviousTarget];
  targetHost = [obliviousTarget targetHost];

  return targetHost;
}

- (BOOL)matchIngress:(id)ingress
{
  ingressCopy = ingress;
  if (ingressCopy)
  {
    proxyInfo = [(NSPObliviousPath *)self proxyInfo];

    if (proxyInfo)
    {
      proxyInfo2 = [(NSPObliviousPath *)self proxyInfo];
      v7 = proxyInfo2;
      if (proxyInfo2)
      {
        v8 = *(proxyInfo2 + 24);
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      proxyURL = [v9 proxyURL];
      proxyURL2 = [ingressCopy[3] proxyURL];
      LOBYTE(proxyInfo) = [proxyURL isEqualToString:proxyURL2];
    }
  }

  else
  {
    v13 = nplog_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = 136315138;
      v15 = "[NSPObliviousPath matchIngress:]";
      _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "%s called with null proxyTokenInfo", &v14, 0xCu);
    }

    LOBYTE(proxyInfo) = 0;
  }

  return proxyInfo;
}

- (void)handleNetworkCharacteristicsChange:(id)change
{
  changeCopy = change;
  statistics = [(NSPObliviousPath *)self statistics];
  sub_10000A4F0(statistics, changeCopy);

  statistics2 = [(NSPObliviousPath *)self statistics];
  if (statistics2)
  {
    statistics2[6] = 0u;
    statistics2[7] = 0u;
    statistics2[4] = 0u;
    statistics2[5] = 0u;
    statistics2[2] = 0u;
    statistics2[3] = 0u;
    statistics2[1] = 0u;
  }
}

- (void)resetStats
{
  statistics = [(NSPObliviousPath *)self statistics];
  if (statistics)
  {
    statistics[6] = 0u;
    statistics[7] = 0u;
    statistics[4] = 0u;
    statistics[5] = 0u;
    statistics[2] = 0u;
    statistics[3] = 0u;
    statistics[1] = 0u;
  }
}

- (void)resetError
{
  quicRegistration = [(NSPObliviousPath *)self quicRegistration];
  v4 = quicRegistration;
  if (quicRegistration)
  {
    [*(quicRegistration + 24) resetError];
  }

  fallbackRegistration = [(NSPObliviousPath *)self fallbackRegistration];
  if (fallbackRegistration)
  {
    v6 = fallbackRegistration;
    [fallbackRegistration[3] resetError];
    fallbackRegistration = v6;
  }
}

- (BOOL)shouldBePenalized
{
  statistics = [(NSPObliviousPath *)self statistics];
  v4 = statistics;
  if (statistics && *(statistics + 80) > 2uLL)
  {
    v7 = 1;
  }

  else
  {
    statistics2 = [(NSPObliviousPath *)self statistics];
    v6 = statistics2;
    if (statistics2 && *(statistics2 + 72) > 2uLL)
    {
      v7 = 1;
    }

    else
    {
      statistics3 = [(NSPObliviousPath *)self statistics];
      v9 = statistics3;
      if (statistics3 && *(statistics3 + 24) > 9uLL)
      {
        v7 = 1;
      }

      else
      {
        statistics4 = [(NSPObliviousPath *)self statistics];
        v11 = statistics4;
        if (statistics4 && *(statistics4 + 64) > 2uLL)
        {
          v7 = 1;
        }

        else
        {
          statistics5 = [(NSPObliviousPath *)self statistics];
          v13 = statistics5;
          if (statistics5 && *(statistics5 + 56) > 9uLL)
          {
            v7 = 1;
          }

          else
          {
            statistics6 = [(NSPObliviousPath *)self statistics];
            if (statistics6)
            {
              v7 = statistics6[4] > 2uLL;
            }

            else
            {
              v7 = 0;
            }
          }
        }
      }
    }
  }

  return v7;
}

- (BOOL)validateTransparencyIfNecessaryWithCompletion:(id)completion
{
  completionCopy = completion;
  transparencyKeyBundle = [(NSPObliviousPath *)self transparencyKeyBundle];

  if (transparencyKeyBundle)
  {
    v6 = [NSPPrivacyProxyTransparencyOHTTPEntry alloc];
    transparencyKeyBundle2 = [(NSPObliviousPath *)self transparencyKeyBundle];
    v8 = [v6 initWithData:transparencyKeyBundle2];

    if (v8)
    {
      keyConfiguration = [v8 keyConfiguration];
      obliviousConfig = [(NSPObliviousPath *)self obliviousConfig];
      v11 = [keyConfiguration isEqualToData:obliviousConfig];

      if (v11)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        targetInformations = [v8 targetInformations];
        v13 = [targetInformations countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v13)
        {
          v14 = v13;
          v34 = v8;
          v35 = completionCopy;
          v15 = 0;
          v16 = *v39;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v39 != v16)
              {
                objc_enumerationMutation(targetInformations);
              }

              targetHost = [*(*(&v38 + 1) + 8 * i) targetHost];
              obliviousTarget = [(NSPObliviousPath *)self obliviousTarget];
              targetHost2 = [obliviousTarget targetHost];
              v21 = [targetHost isEqualToString:targetHost2];

              v15 |= v21;
            }

            v14 = [targetInformations countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v14);

          v8 = v34;
          completionCopy = v35;
          if (v15)
          {
            v22 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v34 configurationDeliveryStart]);
            v23 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v34 configurationDeliveryEnd]);
            delegate = [(NSPObliviousPath *)self delegate];
            v25 = [delegate configurationFetchDateIsWithinStart:v22 end:v23];

            if (v25)
            {
              v26 = [[SoftwareTransparency alloc] initWithApplication:0];
              v27 = v26 == 0;
              if (v26)
              {
                transparencyProof = [(NSPObliviousPath *)self transparencyProof];
                transparencyKeyBundle3 = [(NSPObliviousPath *)self transparencyKeyBundle];
                v36[0] = _NSConcreteStackBlock;
                v36[1] = 3221225472;
                v36[2] = sub_10000BA88;
                v36[3] = &unk_100109600;
                v37 = v35;
                [v26 verifyExpiringProofs:transparencyProof for:transparencyKeyBundle3 completion:v36];
              }

              else
              {
                v35[2](v35, 0);
              }
            }

            else
            {
              v33 = nplog_obj();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v43 = v22;
                v44 = 2112;
                v45 = v23;
                _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Configuration start time (%@) and end time (%@) are not valid, blocking installing oblivious config", buf, 0x16u);
              }

              v35[2](v35, 3);
              v27 = 1;
            }

            goto LABEL_25;
          }
        }

        else
        {
        }

        v30 = nplog_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v31 = "Failed to find target info in transparency blob for oblivious config, blocking";
          goto LABEL_23;
        }

LABEL_24:

        (*(completionCopy + 2))(completionCopy, 3);
        v27 = 1;
LABEL_25:

        goto LABEL_26;
      }

      v30 = nplog_obj();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v31 = "Failed to match key configuration in transparency blob for oblivious config, blocking";
    }

    else
    {
      v30 = nplog_obj();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v31 = "Failed to parse transparency blob for oblivious config, blocking";
    }

LABEL_23:
    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, v31, buf, 2u);
    goto LABEL_24;
  }

  v27 = 1;
  (*(completionCopy + 2))(completionCopy, 1);
LABEL_26:

  return v27;
}

- (BOOL)pathReady
{
  proxyInfo = [(NSPObliviousPath *)self proxyInfo];
  if (sub_100004F70(proxyInfo))
  {
    proxyInfo2 = [(NSPObliviousPath *)self proxyInfo];
    v5 = sub_1000071A0(proxyInfo2);
    proxyInfo3 = [(NSPObliviousPath *)self proxyInfo];
    v7 = sub_100006674(proxyInfo3);

    if (v5 <= v7)
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        shortName = [(NSPObliviousPath *)self shortName];
        proxyInfo4 = [(NSPObliviousPath *)self proxyInfo];
        v11 = sub_1000071A0(proxyInfo4);
        proxyInfo5 = [(NSPObliviousPath *)self proxyInfo];
        *buf = 134218754;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = shortName;
        *&buf[22] = 2048;
        v28 = v11;
        v29 = 2048;
        v30 = sub_100006674(proxyInfo5);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%p oblivious path [%@] is not ready due to insufficient ingress proxy tokens (cache+agent: %lu), (ingress proxy low-water mark: %lu)", buf, 0x2Au);
      }

      return 0;
    }
  }

  else
  {
  }

  transparencyKeyBundle = [(NSPObliviousPath *)self transparencyKeyBundle];
  if (transparencyKeyBundle)
  {
    transparencyState = [(NSPObliviousPath *)self transparencyState];

    if (transparencyState != 2)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v28) = 1;
      if ([(NSPObliviousPath *)self transparencyState]|| ([(NSPObliviousPath *)self setTransparencyState:1], v22[0] = _NSConcreteStackBlock, v22[1] = 3221225472, v22[2] = sub_10000C18C, v22[3] = &unk_100109628, v22[4] = self, v22[5] = buf, [(NSPObliviousPath *)self validateTransparencyIfNecessaryWithCompletion:v22]))
      {
        if ([(NSPObliviousPath *)self transparencyState]== 3)
        {
          v18 = nplog_obj();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            shortName2 = [(NSPObliviousPath *)self shortName];
            *v23 = 134218242;
            selfCopy3 = self;
            v25 = 2112;
            v26 = shortName2;
            _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%p oblivious path [%@] is not ready due to invalid transparency status", v23, 0x16u);
          }
        }

        else
        {
          if ([(NSPObliviousPath *)self transparencyState]!= 1)
          {
            _Block_object_dispose(buf, 8);
            goto LABEL_9;
          }

          v18 = nplog_obj();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            shortName3 = [(NSPObliviousPath *)self shortName];
            *v23 = 134218242;
            selfCopy3 = self;
            v25 = 2112;
            v26 = shortName3;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%p oblivious path [%@] is not ready due to pending transparency status", v23, 0x16u);
          }
        }
      }

      else
      {
        *(*&buf[8] + 24) = 0;
        v18 = nplog_obj();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          shortName4 = [(NSPObliviousPath *)self shortName];
          *v23 = 134218242;
          selfCopy3 = self;
          v25 = 2112;
          v26 = shortName4;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%p oblivious path [%@] is not ready due to unknown transparency status", v23, 0x16u);
        }
      }

      _Block_object_dispose(buf, 8);
      return 0;
    }
  }

LABEL_9:
  v15 = nplog_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    shortName5 = [(NSPObliviousPath *)self shortName];
    *buf = 134218242;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = shortName5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%p oblivious path [%@] is ready", buf, 0x16u);
  }

  return 1;
}

- (BOOL)allowFallback
{
  proxyInfo = [(NSPObliviousPath *)self proxyInfo];
  v3 = proxyInfo;
  if (proxyInfo)
  {
    proxyInfo = proxyInfo[3];
  }

  supportsFallback = [proxyInfo supportsFallback];

  return supportsFallback;
}

- (void)resetQUICProxyAgentForceUpdateDelegate:(BOOL)delegate
{
  proxyInfo = [(NSPObliviousPath *)self proxyInfo];
  if (!proxyInfo)
  {
    return;
  }

  v90 = proxyInfo;
  obliviousConfig = [(NSPObliviousPath *)self obliviousConfig];
  if (!obliviousConfig)
  {
    v23 = v90;
LABEL_42:

    return;
  }

  v7 = obliviousConfig;
  obliviousTarget = [(NSPObliviousPath *)self obliviousTarget];

  if (!obliviousTarget)
  {
    return;
  }

  quicAgentUUID = [(NSPObliviousPath *)self quicAgentUUID];

  if (!quicAgentUUID)
  {
    v10 = +[NSUUID UUID];
    [(NSPObliviousPath *)self setQuicAgentUUID:v10];
  }

  quicRegistration = [(NSPObliviousPath *)self quicRegistration];

  if (quicRegistration)
  {
    goto LABEL_8;
  }

  v12 = [NSPPrivacyProxyObliviousHopsNetworkRegistration alloc];
  quicAgentUUID2 = [(NSPObliviousPath *)self quicAgentUUID];
  obliviousTarget2 = [(NSPObliviousPath *)self obliviousTarget];
  targetHost = [obliviousTarget2 targetHost];
  v16 = sub_100044458(&v12->super.super, quicAgentUUID2, targetHost, self);
  [(NSPObliviousPath *)self setQuicRegistration:v16];

  quicRegistration2 = [(NSPObliviousPath *)self quicRegistration];

  if (quicRegistration2)
  {
LABEL_8:
    fallbackAgentUUID = [(NSPObliviousPath *)self fallbackAgentUUID];
    if (fallbackAgentUUID)
    {
      fallbackRegistration2 = fallbackAgentUUID;
      fallbackRegistration = [(NSPObliviousPath *)self fallbackRegistration];
      if (!fallbackRegistration)
      {
        fallbackAgentUUID2 = 0;
        v91 = 0;
        goto LABEL_12;
      }

      v21 = fallbackRegistration;
      isRegistered = [*(fallbackRegistration + 24) isRegistered];

      if (isRegistered)
      {
        fallbackAgentUUID2 = [(NSPObliviousPath *)self fallbackAgentUUID];
        fallbackRegistration2 = [(NSPObliviousPath *)self fallbackRegistration];
        v91 = sub_100042F70(fallbackRegistration2);
LABEL_12:

LABEL_15:
        quicRegistration3 = [(NSPObliviousPath *)self quicRegistration];
        proxyInfo2 = [(NSPObliviousPath *)self proxyInfo];
        v86 = proxyInfo2;
        if (proxyInfo2)
        {
          v26 = *(proxyInfo2 + 24);
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;
        proxyURL = [v27 proxyURL];
        proxyInfo3 = [(NSPObliviousPath *)self proxyInfo];
        v83 = proxyInfo3;
        if (proxyInfo3)
        {
          v29 = *(proxyInfo3 + 24);
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;
        proxyKeyInfos = [v30 proxyKeyInfos];
        proxyInfo4 = [(NSPObliviousPath *)self proxyInfo];
        v80 = proxyInfo4;
        if (proxyInfo4)
        {
          v32 = *(proxyInfo4 + 24);
        }

        else
        {
          v32 = 0;
        }

        v33 = v32;
        proxyVersion = [v33 proxyVersion];
        proxyInfo5 = [(NSPObliviousPath *)self proxyInfo];
        v78 = proxyInfo5;
        if (proxyInfo5)
        {
          v35 = *(proxyInfo5 + 24);
        }

        else
        {
          v35 = 0;
        }

        v36 = v35;
        supportsResumption = [v36 supportsResumption];
        proxyInfo6 = [(NSPObliviousPath *)self proxyInfo];
        v76 = proxyInfo6;
        v74 = supportsResumption;
        if (proxyInfo6)
        {
          v39 = *(proxyInfo6 + 24);
        }

        else
        {
          v39 = 0;
        }

        v40 = v39;
        usesX25519 = [v40 usesX25519];
        proxyInfo7 = [(NSPObliviousPath *)self proxyInfo];
        v75 = proxyInfo7;
        v71 = usesX25519;
        if (proxyInfo7)
        {
          v43 = *(proxyInfo7 + 24);
        }

        else
        {
          v43 = 0;
        }

        v44 = v43;
        usesPQTLS = [v44 usesPQTLS];
        proxyInfo8 = [(NSPObliviousPath *)self proxyInfo];
        v70 = sub_100004F70(proxyInfo8);
        if (v70)
        {
          proxyInfo9 = [(NSPObliviousPath *)self proxyInfo];
          v66 = proxyInfo9;
          if (proxyInfo9)
          {
            v46 = *(proxyInfo9 + 48);
          }

          else
          {
            v46 = 0;
          }

          v68 = v46;
        }

        else
        {
          v68 = 0;
        }

        proxyInfo10 = [(NSPObliviousPath *)self proxyInfo];
        v48 = proxyInfo10;
        delegateCopy = delegate;
        v85 = v27;
        v82 = v30;
        v79 = v33;
        v77 = v36;
        v73 = v44;
        v49 = quicRegistration3;
        if (proxyInfo10)
        {
          v50 = *(proxyInfo10 + 24);
        }

        else
        {
          v50 = 0;
        }

        v51 = v50;
        tokenChallenge = [v51 tokenChallenge];
        allowFailOpen = [(NSPObliviousPath *)self allowFailOpen];
        obliviousConfig2 = [(NSPObliviousPath *)self obliviousConfig];
        obliviousTarget3 = [(NSPObliviousPath *)self obliviousTarget];
        proxyURLPath = [obliviousTarget3 proxyURLPath];
        LOBYTE(v65) = allowFailOpen;
        LOBYTE(v64) = tokenChallenge != 0;
        v67 = v49;
        sub_100044518(v49, proxyURL, proxyKeyInfos, proxyVersion, v74, v71, usesPQTLS, v68, v64, fallbackAgentUUID2, v65, obliviousConfig2, proxyURLPath, [(NSPObliviousPath *)self obliviousHTTPType], v91);

        if (v70)
        {
        }

        if (v49 && [*(v49 + 24) isRegistered] && (delegateCopy || !-[NSPObliviousPath obliviousAgentRegistered](self, "obliviousAgentRegistered")))
        {
          [(NSPObliviousPath *)self setObliviousAgentRegistered:1];
          delegate = [(NSPObliviousPath *)self delegate];
          obliviousTarget4 = [(NSPObliviousPath *)self obliviousTarget];
          targetHost2 = [obliviousTarget4 targetHost];
          obliviousTarget5 = [(NSPObliviousPath *)self obliviousTarget];
          processes = [obliviousTarget5 processes];
          quicAgentUUID3 = [(NSPObliviousPath *)self quicAgentUUID];
          [delegate obliviousHopAgentRegistered:self hostname:targetHost2 processes:processes agentUUID:quicAgentUUID3];
        }

        v23 = fallbackAgentUUID2;
        goto LABEL_42;
      }
    }

    fallbackAgentUUID2 = 0;
    v91 = 0;
    goto LABEL_15;
  }

  v63 = nplog_obj();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v93 = "[NSPObliviousPath resetQUICProxyAgentForceUpdateDelegate:]";
    _os_log_fault_impl(&_mh_execute_header, v63, OS_LOG_TYPE_FAULT, "%s called with null self.quicRegistration", buf, 0xCu);
  }
}

- (void)resetFallbackProxyAgent
{
  proxyInfo = [(NSPObliviousPath *)self proxyInfo];
  if (!proxyInfo)
  {
    return;
  }

  fallbackRegistration3 = proxyInfo;
  obliviousConfig = [(NSPObliviousPath *)self obliviousConfig];
  if (!obliviousConfig)
  {
    goto LABEL_31;
  }

  v5 = obliviousConfig;
  obliviousTarget = [(NSPObliviousPath *)self obliviousTarget];

  if (!obliviousTarget || ![(NSPObliviousPath *)self allowFallback])
  {
    return;
  }

  fallbackAgentUUID = [(NSPObliviousPath *)self fallbackAgentUUID];

  if (!fallbackAgentUUID)
  {
    v8 = +[NSUUID UUID];
    [(NSPObliviousPath *)self setFallbackAgentUUID:v8];
  }

  fallbackRegistration = [(NSPObliviousPath *)self fallbackRegistration];

  if (fallbackRegistration)
  {
    goto LABEL_9;
  }

  v10 = [NSPPrivacyProxyObliviousHopsFallbackNetworkRegistration alloc];
  fallbackAgentUUID2 = [(NSPObliviousPath *)self fallbackAgentUUID];
  obliviousTarget2 = [(NSPObliviousPath *)self obliviousTarget];
  targetHost = [obliviousTarget2 targetHost];
  v14 = sub_100045C5C(&v10->super.super, fallbackAgentUUID2, targetHost, self);
  [(NSPObliviousPath *)self setFallbackRegistration:v14];

  fallbackRegistration2 = [(NSPObliviousPath *)self fallbackRegistration];

  if (fallbackRegistration2)
  {
LABEL_9:
    fallbackRegistration3 = [(NSPObliviousPath *)self fallbackRegistration];
    proxyInfo2 = [(NSPObliviousPath *)self proxyInfo];
    v71 = proxyInfo2;
    if (proxyInfo2)
    {
      v17 = *(proxyInfo2 + 24);
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    tcpProxyFqdn = [v18 tcpProxyFqdn];
    proxyInfo3 = [(NSPObliviousPath *)self proxyInfo];
    v69 = proxyInfo3;
    if (proxyInfo3)
    {
      v21 = *(proxyInfo3 + 24);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    proxyKeyInfos = [v22 proxyKeyInfos];
    proxyInfo4 = [(NSPObliviousPath *)self proxyInfo];
    v67 = proxyInfo4;
    if (proxyInfo4)
    {
      v24 = *(proxyInfo4 + 24);
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    proxyVersion = [v25 proxyVersion];
    proxyInfo5 = [(NSPObliviousPath *)self proxyInfo];
    v64 = proxyInfo5;
    if (proxyInfo5)
    {
      v27 = *(proxyInfo5 + 24);
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    supportsResumption = [v28 supportsResumption];
    proxyInfo6 = [(NSPObliviousPath *)self proxyInfo];
    v62 = proxyInfo6;
    v59 = supportsResumption;
    if (proxyInfo6)
    {
      v31 = *(proxyInfo6 + 24);
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    usesX25519 = [v32 usesX25519];
    proxyInfo7 = [(NSPObliviousPath *)self proxyInfo];
    v60 = proxyInfo7;
    v56 = usesX25519;
    if (proxyInfo7)
    {
      v35 = *(proxyInfo7 + 24);
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;
    usesPQTLS = [v36 usesPQTLS];
    proxyInfo8 = [(NSPObliviousPath *)self proxyInfo];
    v55 = sub_100004F70(proxyInfo8);
    if (v55)
    {
      proxyInfo9 = [(NSPObliviousPath *)self proxyInfo];
      v52 = proxyInfo9;
      if (proxyInfo9)
      {
        v39 = *(proxyInfo9 + 48);
      }

      else
      {
        v39 = 0;
      }

      v53 = v39;
    }

    else
    {
      v53 = 0;
    }

    proxyInfo10 = [(NSPObliviousPath *)self proxyInfo];
    v41 = proxyInfo10;
    v70 = v18;
    v66 = v25;
    v63 = v28;
    v61 = v32;
    v57 = proxyInfo8;
    v58 = v36;
    v42 = tcpProxyFqdn;
    if (proxyInfo10)
    {
      v43 = *(proxyInfo10 + 24);
    }

    else
    {
      v43 = 0;
    }

    v44 = v43;
    tokenChallenge = [v44 tokenChallenge];
    allowFailOpen = [(NSPObliviousPath *)self allowFailOpen];
    obliviousConfig2 = [(NSPObliviousPath *)self obliviousConfig];
    obliviousTarget3 = [(NSPObliviousPath *)self obliviousTarget];
    proxyURLPath = [obliviousTarget3 proxyURLPath];
    BYTE1(v51) = allowFailOpen;
    LOBYTE(v51) = tokenChallenge != 0;
    sub_100045D1C(fallbackRegistration3, v42, proxyKeyInfos, proxyVersion, v59, v56, usesPQTLS, v53, v51, obliviousConfig2, proxyURLPath, [(NSPObliviousPath *)self obliviousHTTPType]);

    if (v55)
    {
    }

LABEL_31:

    return;
  }

  v50 = nplog_obj();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v74 = "[NSPObliviousPath resetFallbackProxyAgent]";
    _os_log_fault_impl(&_mh_execute_header, v50, OS_LOG_TYPE_FAULT, "%s called with null self.fallbackRegistration", buf, 0xCu);
  }
}

- (void)removeProxyAgents
{
  quicAgentUUID = [(NSPObliviousPath *)self quicAgentUUID];
  quicRegistration = [(NSPObliviousPath *)self quicRegistration];
  sub_100042E8C(quicRegistration);

  fallbackRegistration = [(NSPObliviousPath *)self fallbackRegistration];
  sub_100042E8C(fallbackRegistration);

  if ([(NSPObliviousPath *)self obliviousAgentRegistered])
  {
    [(NSPObliviousPath *)self setObliviousAgentRegistered:0];
    delegate = [(NSPObliviousPath *)self delegate];
    obliviousTarget = [(NSPObliviousPath *)self obliviousTarget];
    targetHost = [obliviousTarget targetHost];
    [delegate obliviousHopAgentUnregistered:self hostname:targetHost agentUUID:quicAgentUUID];
  }

  [(NSPObliviousPath *)self setQuicAgentUUID:0];
  [(NSPObliviousPath *)self setFallbackAgentUUID:0];
  [(NSPObliviousPath *)self setQuicRegistration:0];
  [(NSPObliviousPath *)self setFallbackRegistration:0];
}

- (void)dealloc
{
  [(NSPObliviousPath *)self removeProxyAgents];
  v3.receiver = self;
  v3.super_class = NSPObliviousPath;
  [(NSPObliviousPath *)&v3 dealloc];
}

- (NSPObliviousPathDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end