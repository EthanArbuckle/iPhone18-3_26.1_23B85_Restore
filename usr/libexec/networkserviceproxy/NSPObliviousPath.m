@interface NSPObliviousPath
- (BOOL)allowFallback;
- (BOOL)matchIngress:(id)a3;
- (BOOL)pathReady;
- (BOOL)shouldBePenalized;
- (BOOL)validateTransparencyIfNecessaryWithCompletion:(id)a3;
- (NSPObliviousPath)initWithCoder:(id)a3;
- (NSPObliviousPath)initWithDelegate:(id)a3 obliviousConfig:(id)a4 obliviousHTTPType:(int)a5 transparencyKeyBundle:(id)a6 transparencyProof:(id)a7 obliviousTarget:(id)a8 proxyInfo:(id)a9 allowFailOpen:(BOOL)a10 networkCharacteristics:(id)a11;
- (NSPObliviousPathDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithIndent:(int)a3 options:(unint64_t)a4;
- (id)shortName;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)handleNetworkCharacteristicsChange:(id)a3;
- (void)removeProxyAgents;
- (void)resetError;
- (void)resetFallbackProxyAgent;
- (void)resetQUICProxyAgentForceUpdateDelegate:(BOOL)a3;
- (void)resetStats;
@end

@implementation NSPObliviousPath

- (NSPObliviousPath)initWithDelegate:(id)a3 obliviousConfig:(id)a4 obliviousHTTPType:(int)a5 transparencyKeyBundle:(id)a6 transparencyProof:(id)a7 obliviousTarget:(id)a8 proxyInfo:(id)a9 allowFailOpen:(BOOL)a10 networkCharacteristics:(id)a11
{
  v17 = a3;
  v18 = a4;
  v34 = a6;
  v33 = a7;
  v32 = a8;
  v31 = a9;
  v19 = a11;
  v36.receiver = self;
  v36.super_class = NSPObliviousPath;
  v20 = [(NSPObliviousPath *)&v36 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_delegate, v17);
    objc_storeStrong(&v21->_obliviousConfig, a4);
    v21->_obliviousHTTPType = a5;
    objc_storeStrong(&v21->_obliviousTarget, a8);
    objc_storeStrong(&v21->_transparencyKeyBundle, a6);
    objc_storeStrong(&v21->_transparencyProof, a7);
    objc_storeStrong(&v21->_proxyInfo, a9);
    v21->_allowFailOpen = a10;
    v22 = objc_alloc_init(NSPProxyAgentNetworkStatistics);
    statistics = v21->_statistics;
    v21->_statistics = v22;

    sub_10000A4F0(v21->_statistics, v19);
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

- (id)descriptionWithIndent:(int)a3 options:(unint64_t)a4
{
  v7 = [[NSMutableString alloc] initWithCapacity:0];
  v8 = [(NSPObliviousPath *)self obliviousTarget];
  sub_1000417D0(v7, v8, @"Oblivious target", a3, a4);

  v9 = [(NSPObliviousPath *)self proxyInfo];
  sub_1000417D0(v7, v9, @"Proxy", a3, a4);

  v10 = [(NSPObliviousPath *)self quicAgentUUID];
  sub_1000417D0(v7, v10, @"QUIC Agent UUID", a3, a4);

  v11 = [(NSPObliviousPath *)self fallbackAgentUUID];
  sub_1000417D0(v7, v11, @"Fallback Agent UUID", a3, a4);

  sub_100042020(v7, [(NSPObliviousPath *)self allowFailOpen], @"Allow fail open", a3, a4);
  sub_10004208C(v7, [(NSPObliviousPath *)self transparencyState], @"Transparency state", a3, a4);
  v12 = [(NSPObliviousPath *)self obliviousHTTPType];
  if (v12 >= 3)
  {
    v13 = [NSString stringWithFormat:@"(unknown: %i)", v12];
  }

  else
  {
    v13 = *(&off_100109A40 + v12);
  }

  sub_1000417D0(v7, v13, @"Oblivious HTTP type", a3, a4);

  return v7;
}

- (NSPObliviousPath)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NSPObliviousPath;
  v5 = [(NSPObliviousPath *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"obliviousPathProxy"];
    proxyInfo = v5->_proxyInfo;
    v5->_proxyInfo = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"obliviousPathQUICAgentUUID"];
    quicAgentUUID = v5->_quicAgentUUID;
    v5->_quicAgentUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"obliviousPathFallbackAgentUUID"];
    fallbackAgentUUID = v5->_fallbackAgentUUID;
    v5->_fallbackAgentUUID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"obliviousPathConfig"];
    obliviousConfig = v5->_obliviousConfig;
    v5->_obliviousConfig = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"obliviousPathTarget"];
    obliviousTarget = v5->_obliviousTarget;
    v5->_obliviousTarget = v14;

    v5->_allowFailOpen = [v4 decodeBoolForKey:@"obliviousPathAllowFailOpen"];
    v5->_obliviousHTTPType = [v4 decodeIntegerForKey:@"obliviousPathType"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"obliviousPathTransparencyKeyBundle"];
    transparencyKeyBundle = v5->_transparencyKeyBundle;
    v5->_transparencyKeyBundle = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"obliviousPathTransparencyProof"];
    transparencyProof = v5->_transparencyProof;
    v5->_transparencyProof = v18;

    v20 = [v4 decodeIntegerForKey:@"obliviousPathTransparencyState"];
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

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(NSPObliviousPath *)self proxyInfo];
  [v11 encodeObject:v4 forKey:@"obliviousPathProxy"];

  v5 = [(NSPObliviousPath *)self quicAgentUUID];
  [v11 encodeObject:v5 forKey:@"obliviousPathQUICAgentUUID"];

  v6 = [(NSPObliviousPath *)self fallbackAgentUUID];
  [v11 encodeObject:v6 forKey:@"obliviousPathFallbackAgentUUID"];

  v7 = [(NSPObliviousPath *)self obliviousConfig];
  [v11 encodeObject:v7 forKey:@"obliviousPathConfig"];

  v8 = [(NSPObliviousPath *)self obliviousTarget];
  [v11 encodeObject:v8 forKey:@"obliviousPathTarget"];

  [v11 encodeBool:-[NSPObliviousPath allowFailOpen](self forKey:{"allowFailOpen"), @"obliviousPathAllowFailOpen"}];
  [v11 encodeInteger:-[NSPObliviousPath obliviousHTTPType](self forKey:{"obliviousHTTPType"), @"obliviousPathType"}];
  v9 = [(NSPObliviousPath *)self transparencyKeyBundle];
  [v11 encodeObject:v9 forKey:@"obliviousPathTransparencyKeyBundle"];

  v10 = [(NSPObliviousPath *)self transparencyProof];
  [v11 encodeObject:v10 forKey:@"obliviousPathTransparencyProof"];

  if ([(NSPObliviousPath *)self transparencyState]!= 1)
  {
    [v11 encodeInteger:-[NSPObliviousPath transparencyState](self forKey:{"transparencyState"), @"obliviousPathTransparencyState"}];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NSPObliviousPath allocWithZone:?]];
  v5 = [(NSPObliviousPath *)self obliviousConfig];
  [(NSPObliviousPath *)v4 setObliviousConfig:v5];

  v6 = [(NSPObliviousPath *)self obliviousTarget];
  [(NSPObliviousPath *)v4 setObliviousTarget:v6];

  v7 = [(NSPObliviousPath *)self proxyInfo];
  [(NSPObliviousPath *)v4 setProxyInfo:v7];

  v8 = [(NSPObliviousPath *)self quicAgentUUID];
  [(NSPObliviousPath *)v4 setQuicAgentUUID:v8];

  v9 = [(NSPObliviousPath *)self fallbackAgentUUID];
  [(NSPObliviousPath *)v4 setFallbackAgentUUID:v9];

  v10 = [(NSPObliviousPath *)self quicRegistration];
  [(NSPObliviousPath *)v4 setQuicRegistration:v10];

  v11 = [(NSPObliviousPath *)self fallbackRegistration];
  [(NSPObliviousPath *)v4 setFallbackRegistration:v11];

  [(NSPObliviousPath *)v4 setObliviousAgentRegistered:[(NSPObliviousPath *)self obliviousAgentRegistered]];
  [(NSPObliviousPath *)v4 setAllowFailOpen:[(NSPObliviousPath *)self allowFailOpen]];
  [(NSPObliviousPath *)v4 setObliviousHTTPType:[(NSPObliviousPath *)self obliviousHTTPType]];
  v12 = [(NSPObliviousPath *)self statistics];
  [(NSPObliviousPath *)v4 setStatistics:v12];

  v13 = [(NSPObliviousPath *)self transparencyKeyBundle];
  [(NSPObliviousPath *)v4 setTransparencyKeyBundle:v13];

  v14 = [(NSPObliviousPath *)self transparencyProof];
  [(NSPObliviousPath *)v4 setTransparencyProof:v14];

  [(NSPObliviousPath *)v4 setTransparencyState:[(NSPObliviousPath *)self transparencyState]];
  return v4;
}

- (id)shortName
{
  v2 = [(NSPObliviousPath *)self obliviousTarget];
  v3 = [v2 targetHost];

  return v3;
}

- (BOOL)matchIngress:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSPObliviousPath *)self proxyInfo];

    if (v5)
    {
      v6 = [(NSPObliviousPath *)self proxyInfo];
      v7 = v6;
      if (v6)
      {
        v8 = *(v6 + 24);
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      v10 = [v9 proxyURL];
      v11 = [v4[3] proxyURL];
      LOBYTE(v5) = [v10 isEqualToString:v11];
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

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)handleNetworkCharacteristicsChange:(id)a3
{
  v4 = a3;
  v5 = [(NSPObliviousPath *)self statistics];
  sub_10000A4F0(v5, v4);

  v6 = [(NSPObliviousPath *)self statistics];
  if (v6)
  {
    v6[6] = 0u;
    v6[7] = 0u;
    v6[4] = 0u;
    v6[5] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    v6[1] = 0u;
  }
}

- (void)resetStats
{
  v2 = [(NSPObliviousPath *)self statistics];
  if (v2)
  {
    v2[6] = 0u;
    v2[7] = 0u;
    v2[4] = 0u;
    v2[5] = 0u;
    v2[2] = 0u;
    v2[3] = 0u;
    v2[1] = 0u;
  }
}

- (void)resetError
{
  v3 = [(NSPObliviousPath *)self quicRegistration];
  v4 = v3;
  if (v3)
  {
    [*(v3 + 24) resetError];
  }

  v5 = [(NSPObliviousPath *)self fallbackRegistration];
  if (v5)
  {
    v6 = v5;
    [v5[3] resetError];
    v5 = v6;
  }
}

- (BOOL)shouldBePenalized
{
  v3 = [(NSPObliviousPath *)self statistics];
  v4 = v3;
  if (v3 && *(v3 + 80) > 2uLL)
  {
    v7 = 1;
  }

  else
  {
    v5 = [(NSPObliviousPath *)self statistics];
    v6 = v5;
    if (v5 && *(v5 + 72) > 2uLL)
    {
      v7 = 1;
    }

    else
    {
      v8 = [(NSPObliviousPath *)self statistics];
      v9 = v8;
      if (v8 && *(v8 + 24) > 9uLL)
      {
        v7 = 1;
      }

      else
      {
        v10 = [(NSPObliviousPath *)self statistics];
        v11 = v10;
        if (v10 && *(v10 + 64) > 2uLL)
        {
          v7 = 1;
        }

        else
        {
          v12 = [(NSPObliviousPath *)self statistics];
          v13 = v12;
          if (v12 && *(v12 + 56) > 9uLL)
          {
            v7 = 1;
          }

          else
          {
            v14 = [(NSPObliviousPath *)self statistics];
            if (v14)
            {
              v7 = v14[4] > 2uLL;
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

- (BOOL)validateTransparencyIfNecessaryWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(NSPObliviousPath *)self transparencyKeyBundle];

  if (v5)
  {
    v6 = [NSPPrivacyProxyTransparencyOHTTPEntry alloc];
    v7 = [(NSPObliviousPath *)self transparencyKeyBundle];
    v8 = [v6 initWithData:v7];

    if (v8)
    {
      v9 = [v8 keyConfiguration];
      v10 = [(NSPObliviousPath *)self obliviousConfig];
      v11 = [v9 isEqualToData:v10];

      if (v11)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v12 = [v8 targetInformations];
        v13 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v13)
        {
          v14 = v13;
          v34 = v8;
          v35 = v4;
          v15 = 0;
          v16 = *v39;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v39 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v18 = [*(*(&v38 + 1) + 8 * i) targetHost];
              v19 = [(NSPObliviousPath *)self obliviousTarget];
              v20 = [v19 targetHost];
              v21 = [v18 isEqualToString:v20];

              v15 |= v21;
            }

            v14 = [v12 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v14);

          v8 = v34;
          v4 = v35;
          if (v15)
          {
            v22 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v34 configurationDeliveryStart]);
            v23 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v34 configurationDeliveryEnd]);
            v24 = [(NSPObliviousPath *)self delegate];
            v25 = [v24 configurationFetchDateIsWithinStart:v22 end:v23];

            if (v25)
            {
              v26 = [[SoftwareTransparency alloc] initWithApplication:0];
              v27 = v26 == 0;
              if (v26)
              {
                v28 = [(NSPObliviousPath *)self transparencyProof];
                v29 = [(NSPObliviousPath *)self transparencyKeyBundle];
                v36[0] = _NSConcreteStackBlock;
                v36[1] = 3221225472;
                v36[2] = sub_10000BA88;
                v36[3] = &unk_100109600;
                v37 = v35;
                [v26 verifyExpiringProofs:v28 for:v29 completion:v36];
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

        (*(v4 + 2))(v4, 3);
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
  (*(v4 + 2))(v4, 1);
LABEL_26:

  return v27;
}

- (BOOL)pathReady
{
  v3 = [(NSPObliviousPath *)self proxyInfo];
  if (sub_100004F70(v3))
  {
    v4 = [(NSPObliviousPath *)self proxyInfo];
    v5 = sub_1000071A0(v4);
    v6 = [(NSPObliviousPath *)self proxyInfo];
    v7 = sub_100006674(v6);

    if (v5 <= v7)
    {
      v8 = nplog_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [(NSPObliviousPath *)self shortName];
        v10 = [(NSPObliviousPath *)self proxyInfo];
        v11 = sub_1000071A0(v10);
        v12 = [(NSPObliviousPath *)self proxyInfo];
        *buf = 134218754;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v9;
        *&buf[22] = 2048;
        v28 = v11;
        v29 = 2048;
        v30 = sub_100006674(v12);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%p oblivious path [%@] is not ready due to insufficient ingress proxy tokens (cache+agent: %lu), (ingress proxy low-water mark: %lu)", buf, 0x2Au);
      }

      return 0;
    }
  }

  else
  {
  }

  v13 = [(NSPObliviousPath *)self transparencyKeyBundle];
  if (v13)
  {
    v14 = [(NSPObliviousPath *)self transparencyState];

    if (v14 != 2)
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
            v21 = [(NSPObliviousPath *)self shortName];
            *v23 = 134218242;
            v24 = self;
            v25 = 2112;
            v26 = v21;
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
            v19 = [(NSPObliviousPath *)self shortName];
            *v23 = 134218242;
            v24 = self;
            v25 = 2112;
            v26 = v19;
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
          v20 = [(NSPObliviousPath *)self shortName];
          *v23 = 134218242;
          v24 = self;
          v25 = 2112;
          v26 = v20;
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
    v16 = [(NSPObliviousPath *)self shortName];
    *buf = 134218242;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%p oblivious path [%@] is ready", buf, 0x16u);
  }

  return 1;
}

- (BOOL)allowFallback
{
  v2 = [(NSPObliviousPath *)self proxyInfo];
  v3 = v2;
  if (v2)
  {
    v2 = v2[3];
  }

  v4 = [v2 supportsFallback];

  return v4;
}

- (void)resetQUICProxyAgentForceUpdateDelegate:(BOOL)a3
{
  v5 = [(NSPObliviousPath *)self proxyInfo];
  if (!v5)
  {
    return;
  }

  v90 = v5;
  v6 = [(NSPObliviousPath *)self obliviousConfig];
  if (!v6)
  {
    v23 = v90;
LABEL_42:

    return;
  }

  v7 = v6;
  v8 = [(NSPObliviousPath *)self obliviousTarget];

  if (!v8)
  {
    return;
  }

  v9 = [(NSPObliviousPath *)self quicAgentUUID];

  if (!v9)
  {
    v10 = +[NSUUID UUID];
    [(NSPObliviousPath *)self setQuicAgentUUID:v10];
  }

  v11 = [(NSPObliviousPath *)self quicRegistration];

  if (v11)
  {
    goto LABEL_8;
  }

  v12 = [NSPPrivacyProxyObliviousHopsNetworkRegistration alloc];
  v13 = [(NSPObliviousPath *)self quicAgentUUID];
  v14 = [(NSPObliviousPath *)self obliviousTarget];
  v15 = [v14 targetHost];
  v16 = sub_100044458(&v12->super.super, v13, v15, self);
  [(NSPObliviousPath *)self setQuicRegistration:v16];

  v17 = [(NSPObliviousPath *)self quicRegistration];

  if (v17)
  {
LABEL_8:
    v18 = [(NSPObliviousPath *)self fallbackAgentUUID];
    if (v18)
    {
      v19 = v18;
      v20 = [(NSPObliviousPath *)self fallbackRegistration];
      if (!v20)
      {
        v88 = 0;
        v91 = 0;
        goto LABEL_12;
      }

      v21 = v20;
      v22 = [*(v20 + 24) isRegistered];

      if (v22)
      {
        v88 = [(NSPObliviousPath *)self fallbackAgentUUID];
        v19 = [(NSPObliviousPath *)self fallbackRegistration];
        v91 = sub_100042F70(v19);
LABEL_12:

LABEL_15:
        v24 = [(NSPObliviousPath *)self quicRegistration];
        v25 = [(NSPObliviousPath *)self proxyInfo];
        v86 = v25;
        if (v25)
        {
          v26 = *(v25 + 24);
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;
        v84 = [v27 proxyURL];
        v28 = [(NSPObliviousPath *)self proxyInfo];
        v83 = v28;
        if (v28)
        {
          v29 = *(v28 + 24);
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;
        v81 = [v30 proxyKeyInfos];
        v31 = [(NSPObliviousPath *)self proxyInfo];
        v80 = v31;
        if (v31)
        {
          v32 = *(v31 + 24);
        }

        else
        {
          v32 = 0;
        }

        v33 = v32;
        v89 = [v33 proxyVersion];
        v34 = [(NSPObliviousPath *)self proxyInfo];
        v78 = v34;
        if (v34)
        {
          v35 = *(v34 + 24);
        }

        else
        {
          v35 = 0;
        }

        v36 = v35;
        v37 = [v36 supportsResumption];
        v38 = [(NSPObliviousPath *)self proxyInfo];
        v76 = v38;
        v74 = v37;
        if (v38)
        {
          v39 = *(v38 + 24);
        }

        else
        {
          v39 = 0;
        }

        v40 = v39;
        v41 = [v40 usesX25519];
        v42 = [(NSPObliviousPath *)self proxyInfo];
        v75 = v42;
        v71 = v41;
        if (v42)
        {
          v43 = *(v42 + 24);
        }

        else
        {
          v43 = 0;
        }

        v44 = v43;
        v69 = [v44 usesPQTLS];
        v72 = [(NSPObliviousPath *)self proxyInfo];
        v70 = sub_100004F70(v72);
        if (v70)
        {
          v45 = [(NSPObliviousPath *)self proxyInfo];
          v66 = v45;
          if (v45)
          {
            v46 = *(v45 + 48);
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

        v47 = [(NSPObliviousPath *)self proxyInfo];
        v48 = v47;
        v87 = a3;
        v85 = v27;
        v82 = v30;
        v79 = v33;
        v77 = v36;
        v73 = v44;
        v49 = v24;
        if (v47)
        {
          v50 = *(v47 + 24);
        }

        else
        {
          v50 = 0;
        }

        v51 = v50;
        v52 = [v51 tokenChallenge];
        v53 = [(NSPObliviousPath *)self allowFailOpen];
        v54 = [(NSPObliviousPath *)self obliviousConfig];
        v55 = [(NSPObliviousPath *)self obliviousTarget];
        v56 = [v55 proxyURLPath];
        LOBYTE(v65) = v53;
        LOBYTE(v64) = v52 != 0;
        v67 = v49;
        sub_100044518(v49, v84, v81, v89, v74, v71, v69, v68, v64, v88, v65, v54, v56, [(NSPObliviousPath *)self obliviousHTTPType], v91);

        if (v70)
        {
        }

        if (v49 && [*(v49 + 24) isRegistered] && (v87 || !-[NSPObliviousPath obliviousAgentRegistered](self, "obliviousAgentRegistered")))
        {
          [(NSPObliviousPath *)self setObliviousAgentRegistered:1];
          v57 = [(NSPObliviousPath *)self delegate];
          v58 = [(NSPObliviousPath *)self obliviousTarget];
          v59 = [v58 targetHost];
          v60 = [(NSPObliviousPath *)self obliviousTarget];
          v61 = [v60 processes];
          v62 = [(NSPObliviousPath *)self quicAgentUUID];
          [v57 obliviousHopAgentRegistered:self hostname:v59 processes:v61 agentUUID:v62];
        }

        v23 = v88;
        goto LABEL_42;
      }
    }

    v88 = 0;
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
  v3 = [(NSPObliviousPath *)self proxyInfo];
  if (!v3)
  {
    return;
  }

  v72 = v3;
  v4 = [(NSPObliviousPath *)self obliviousConfig];
  if (!v4)
  {
    goto LABEL_31;
  }

  v5 = v4;
  v6 = [(NSPObliviousPath *)self obliviousTarget];

  if (!v6 || ![(NSPObliviousPath *)self allowFallback])
  {
    return;
  }

  v7 = [(NSPObliviousPath *)self fallbackAgentUUID];

  if (!v7)
  {
    v8 = +[NSUUID UUID];
    [(NSPObliviousPath *)self setFallbackAgentUUID:v8];
  }

  v9 = [(NSPObliviousPath *)self fallbackRegistration];

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = [NSPPrivacyProxyObliviousHopsFallbackNetworkRegistration alloc];
  v11 = [(NSPObliviousPath *)self fallbackAgentUUID];
  v12 = [(NSPObliviousPath *)self obliviousTarget];
  v13 = [v12 targetHost];
  v14 = sub_100045C5C(&v10->super.super, v11, v13, self);
  [(NSPObliviousPath *)self setFallbackRegistration:v14];

  v15 = [(NSPObliviousPath *)self fallbackRegistration];

  if (v15)
  {
LABEL_9:
    v72 = [(NSPObliviousPath *)self fallbackRegistration];
    v16 = [(NSPObliviousPath *)self proxyInfo];
    v71 = v16;
    if (v16)
    {
      v17 = *(v16 + 24);
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v19 = [v18 tcpProxyFqdn];
    v20 = [(NSPObliviousPath *)self proxyInfo];
    v69 = v20;
    if (v20)
    {
      v21 = *(v20 + 24);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v68 = [v22 proxyKeyInfos];
    v23 = [(NSPObliviousPath *)self proxyInfo];
    v67 = v23;
    if (v23)
    {
      v24 = *(v23 + 24);
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    v65 = [v25 proxyVersion];
    v26 = [(NSPObliviousPath *)self proxyInfo];
    v64 = v26;
    if (v26)
    {
      v27 = *(v26 + 24);
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    v29 = [v28 supportsResumption];
    v30 = [(NSPObliviousPath *)self proxyInfo];
    v62 = v30;
    v59 = v29;
    if (v30)
    {
      v31 = *(v30 + 24);
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
    v33 = [v32 usesX25519];
    v34 = [(NSPObliviousPath *)self proxyInfo];
    v60 = v34;
    v56 = v33;
    if (v34)
    {
      v35 = *(v34 + 24);
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;
    v54 = [v36 usesPQTLS];
    v37 = [(NSPObliviousPath *)self proxyInfo];
    v55 = sub_100004F70(v37);
    if (v55)
    {
      v38 = [(NSPObliviousPath *)self proxyInfo];
      v52 = v38;
      if (v38)
      {
        v39 = *(v38 + 48);
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

    v40 = [(NSPObliviousPath *)self proxyInfo];
    v41 = v40;
    v70 = v18;
    v66 = v25;
    v63 = v28;
    v61 = v32;
    v57 = v37;
    v58 = v36;
    v42 = v19;
    if (v40)
    {
      v43 = *(v40 + 24);
    }

    else
    {
      v43 = 0;
    }

    v44 = v43;
    v45 = [v44 tokenChallenge];
    v46 = [(NSPObliviousPath *)self allowFailOpen];
    v47 = [(NSPObliviousPath *)self obliviousConfig];
    v48 = [(NSPObliviousPath *)self obliviousTarget];
    v49 = [v48 proxyURLPath];
    BYTE1(v51) = v46;
    LOBYTE(v51) = v45 != 0;
    sub_100045D1C(v72, v42, v68, v65, v59, v56, v54, v53, v51, v47, v49, [(NSPObliviousPath *)self obliviousHTTPType]);

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
  v8 = [(NSPObliviousPath *)self quicAgentUUID];
  v3 = [(NSPObliviousPath *)self quicRegistration];
  sub_100042E8C(v3);

  v4 = [(NSPObliviousPath *)self fallbackRegistration];
  sub_100042E8C(v4);

  if ([(NSPObliviousPath *)self obliviousAgentRegistered])
  {
    [(NSPObliviousPath *)self setObliviousAgentRegistered:0];
    v5 = [(NSPObliviousPath *)self delegate];
    v6 = [(NSPObliviousPath *)self obliviousTarget];
    v7 = [v6 targetHost];
    [v5 obliviousHopAgentUnregistered:self hostname:v7 agentUUID:v8];
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