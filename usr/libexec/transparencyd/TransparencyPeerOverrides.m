@interface TransparencyPeerOverrides
- (TransparencyPeerOverrides)init;
- (id)listPeerOverrides;
- (void)applyPeerOverrides:(id)a3 peer:(id)a4;
- (void)clearPeerOverride:(id)a3 application:(id)a4;
- (void)setPeerOverride:(id)a3 application:(id)a4 state:(id)a5;
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

- (void)setPeerOverride:(id)a3 application:(id)a4 state:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_10039CDC8 != -1)
  {
    sub_10025F908();
  }

  v11 = qword_10039CDD0;
  if (os_log_type_enabled(qword_10039CDD0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    *buf = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2048;
    v22 = [v10 uiStatus];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "setPeerOverride %@ %@ %lu", buf, 0x20u);
  }

  v13 = [(TransparencyPeerOverrides *)self storage];
  objc_sync_enter(v13);
  v14 = [(TransparencyPeerOverrides *)self storage];
  v16[0] = v8;
  v16[1] = v9;
  v15 = [NSArray arrayWithObjects:v16 count:2];
  [v14 setObject:v10 forKeyedSubscript:v15];

  objc_sync_exit(v13);
}

- (void)clearPeerOverride:(id)a3 application:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_10039CDC8 != -1)
  {
    sub_10025F91C();
  }

  v8 = qword_10039CDD0;
  if (os_log_type_enabled(qword_10039CDD0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "clearPeerOverride %@ %@", buf, 0x16u);
  }

  v9 = [(TransparencyPeerOverrides *)self storage];
  objc_sync_enter(v9);
  v10 = [(TransparencyPeerOverrides *)self storage];
  v12[0] = v6;
  v12[1] = v7;
  v11 = [NSArray arrayWithObjects:v12 count:2];
  [v10 removeObjectForKey:v11];

  objc_sync_exit(v9);
}

- (id)listPeerOverrides
{
  v3 = [(TransparencyPeerOverrides *)self storage];
  objc_sync_enter(v3);
  v4 = [(TransparencyPeerOverrides *)self storage];
  objc_sync_exit(v3);

  return v4;
}

- (void)applyPeerOverrides:(id)a3 peer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_variant_allows_internal_security_policies();
  if (v7)
  {
    if (v8)
    {
      v9 = [v7 uri];
      if (v9)
      {
        v10 = [v7 application];

        if (v10)
        {
          v11 = [v7 uri];
          v30[0] = v11;
          v12 = [v7 application];
          v30[1] = v12;
          v13 = [NSArray arrayWithObjects:v30 count:2];

          v14 = [(TransparencyPeerOverrides *)self storage];
          objc_sync_enter(v14);
          v15 = [(TransparencyPeerOverrides *)self storage];
          v16 = [v15 objectForKey:v13];
          v17 = v16 == 0;

          if (!v17)
          {
            v18 = [(TransparencyPeerOverrides *)self storage];
            v19 = [v18 objectForKeyedSubscript:v13];

            if (qword_10039CDC8 != -1)
            {
              sub_10025F930();
            }

            v20 = qword_10039CDD0;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v19 uiStatus];
              v22 = [v7 uri];
              v23 = [v7 application];
              v24 = 134218498;
              v25 = v21;
              v26 = 2112;
              v27 = v22;
              v28 = 2112;
              v29 = v23;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "applyPeerOverrides setting UI status %lu for %@, %@", &v24, 0x20u);
            }

            [v6 setUiStatus:{objc_msgSend(v19, "uiStatus")}];
          }

          objc_sync_exit(v14);
        }
      }
    }
  }
}

@end