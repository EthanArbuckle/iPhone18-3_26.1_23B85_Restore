@interface TransparencyPeerOverrides
- (TransparencyPeerOverrides)init;
- (id)listPeerOverrides;
- (void)applyPeerOverrides:(id)overrides peer:(id)peer;
- (void)clearPeerOverride:(id)override application:(id)application;
- (void)setPeerOverride:(id)override application:(id)application state:(id)state;
@end

@implementation TransparencyPeerOverrides

- (TransparencyPeerOverrides)init
{
  v5.receiver = self;
  v5.super_class = TransparencyPeerOverrides;
  v2 = [(TransparencyPeerOverrides *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    [(TransparencyPeerOverrides *)v2 setStorage:v3];
  }

  return v2;
}

- (void)setPeerOverride:(id)override application:(id)application state:(id)state
{
  overrideCopy = override;
  applicationCopy = application;
  stateCopy = state;
  if (qword_10039CDC8 != -1)
  {
    sub_10025F908();
  }

  v11 = qword_10039CDD0;
  if (os_log_type_enabled(qword_10039CDD0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    *buf = 138412802;
    v18 = overrideCopy;
    v19 = 2112;
    v20 = applicationCopy;
    v21 = 2048;
    uiStatus = [stateCopy uiStatus];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "setPeerOverride %@ %@ %lu", buf, 0x20u);
  }

  storage = [(TransparencyPeerOverrides *)self storage];
  objc_sync_enter(storage);
  storage2 = [(TransparencyPeerOverrides *)self storage];
  v16[0] = overrideCopy;
  v16[1] = applicationCopy;
  v15 = [NSArray arrayWithObjects:v16 count:2];
  [storage2 setObject:stateCopy forKeyedSubscript:v15];

  objc_sync_exit(storage);
}

- (void)clearPeerOverride:(id)override application:(id)application
{
  overrideCopy = override;
  applicationCopy = application;
  if (qword_10039CDC8 != -1)
  {
    sub_10025F91C();
  }

  v8 = qword_10039CDD0;
  if (os_log_type_enabled(qword_10039CDD0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = overrideCopy;
    v15 = 2112;
    v16 = applicationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "clearPeerOverride %@ %@", buf, 0x16u);
  }

  storage = [(TransparencyPeerOverrides *)self storage];
  objc_sync_enter(storage);
  storage2 = [(TransparencyPeerOverrides *)self storage];
  v12[0] = overrideCopy;
  v12[1] = applicationCopy;
  v11 = [NSArray arrayWithObjects:v12 count:2];
  [storage2 removeObjectForKey:v11];

  objc_sync_exit(storage);
}

- (id)listPeerOverrides
{
  storage = [(TransparencyPeerOverrides *)self storage];
  objc_sync_enter(storage);
  storage2 = [(TransparencyPeerOverrides *)self storage];
  objc_sync_exit(storage);

  return storage2;
}

- (void)applyPeerOverrides:(id)overrides peer:(id)peer
{
  overridesCopy = overrides;
  peerCopy = peer;
  v8 = os_variant_allows_internal_security_policies();
  if (peerCopy)
  {
    if (v8)
    {
      v9 = [peerCopy uri];
      if (v9)
      {
        application = [peerCopy application];

        if (application)
        {
          v11 = [peerCopy uri];
          v30[0] = v11;
          application2 = [peerCopy application];
          v30[1] = application2;
          v13 = [NSArray arrayWithObjects:v30 count:2];

          storage = [(TransparencyPeerOverrides *)self storage];
          objc_sync_enter(storage);
          storage2 = [(TransparencyPeerOverrides *)self storage];
          v16 = [storage2 objectForKey:v13];
          v17 = v16 == 0;

          if (!v17)
          {
            storage3 = [(TransparencyPeerOverrides *)self storage];
            v19 = [storage3 objectForKeyedSubscript:v13];

            if (qword_10039CDC8 != -1)
            {
              sub_10025F930();
            }

            v20 = qword_10039CDD0;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              uiStatus = [v19 uiStatus];
              v22 = [peerCopy uri];
              application3 = [peerCopy application];
              v24 = 134218498;
              v25 = uiStatus;
              v26 = 2112;
              v27 = v22;
              v28 = 2112;
              v29 = application3;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "applyPeerOverrides setting UI status %lu for %@, %@", &v24, 0x20u);
            }

            [overridesCopy setUiStatus:{objc_msgSend(v19, "uiStatus")}];
          }

          objc_sync_exit(storage);
        }
      }
    }
  }
}

@end