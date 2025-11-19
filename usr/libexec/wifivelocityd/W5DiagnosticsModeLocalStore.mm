@interface W5DiagnosticsModeLocalStore
- (BOOL)_updateCachedLocalStore:(id)a3 error:(id)a4;
- (W5DiagnosticsModeLocalStore)init;
- (id)_getCachedLocalStore:(id)a3;
- (id)infoMatchingDiagnosticMode:(id)a3;
- (void)addToStore:(id)a3 newInfo:(id)a4;
- (void)updateStoreWithInfo:(id)a3 info:(id)a4;
@end

@implementation W5DiagnosticsModeLocalStore

- (W5DiagnosticsModeLocalStore)init
{
  v8.receiver = self;
  v8.super_class = W5DiagnosticsModeLocalStore;
  v2 = [(W5DiagnosticsModeLocalStore *)&v8 init];
  v3 = [(W5DiagnosticsModeLocalStore *)v2 _getCachedLocalStore:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(NSMutableDictionary);
  }

  localDiagnosticsStore = v2->_localDiagnosticsStore;
  v2->_localDiagnosticsStore = v5;

  return v2;
}

- (id)_getCachedLocalStore:(id)a3
{
  v20 = a3;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 persistentDomainForName:@"com.apple.wifi.diagnosticsMode"];

  v5 = [v4 objectForKey:@"CachedDiagnosticsModeLocalStore"];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v19 = objc_opt_class();
  v12 = v5;
  v13 = [NSSet setWithObjects:v6, v7, v8, v9, v10, v11, v19, objc_opt_class(), 0];
  v21 = v20;
  v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v13 fromData:v5 error:&v21];
  v15 = v21;

  if (!v14)
  {
    v17 = v4;
    v18 = sub_100098A04();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 136316418;
      v23 = "[W5DiagnosticsModeLocalStore _getCachedLocalStore:]";
      v24 = 2080;
      v25 = "W5DiagnosticsModeManager.m";
      v26 = 1024;
      v27 = 1636;
      v28 = 2114;
      v29 = 0;
      v30 = 2114;
      v31 = v12;
      v32 = 2114;
      v33 = v15;
      _os_log_send_and_compose_impl();
    }

    v4 = v17;
  }

  return v14;
}

- (id)infoMatchingDiagnosticMode:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(W5DiagnosticsModeLocalStore *)self localDiagnosticsStore];
    v6 = [v4 uuid];
    v7 = [v5 objectForKey:v6];
  }

  else
  {
    v8 = sub_100098A04();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    v7 = 0;
  }

  return v7;
}

- (void)updateStoreWithInfo:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v19 = sub_100098A04();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (!v7)
  {
    v19 = sub_100098A04();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:
      _os_log_send_and_compose_impl();
    }

LABEL_14:

    goto LABEL_15;
  }

  v9 = [(W5DiagnosticsModeLocalStore *)self localDiagnosticsStore];
  v10 = [v6 uuid];
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    v12 = [(W5DiagnosticsModeLocalStore *)self localDiagnosticsStore];
    v13 = [v6 uuid];
    [v12 removeObjectForKey:v13];
  }

  v14 = [(W5DiagnosticsModeLocalStore *)self localDiagnosticsStore];
  v15 = [v6 uuid];
  [v14 setObject:v8 forKey:v15];

  v16 = sub_100098A04();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v6 uuid];
    _os_log_send_and_compose_impl();
  }

  v17 = [(W5DiagnosticsModeLocalStore *)self localDiagnosticsStore];
  v18 = [(W5DiagnosticsModeLocalStore *)self _updateCachedLocalStore:v17 error:0];

  if ((v18 & 1) == 0)
  {
    v19 = sub_100098A04();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)addToStore:(id)a3 newInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(W5DiagnosticsModeLocalStore *)self localDiagnosticsStore];
  v9 = [v6 uuid];
  v10 = [v8 objectForKey:v9];

  if (!v10)
  {
    v10 = +[NSMutableDictionary dictionary];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000F6C8;
  v12[3] = &unk_1000E1388;
  v13 = v10;
  v11 = v10;
  [v7 enumerateKeysAndObjectsUsingBlock:v12];
  [(W5DiagnosticsModeLocalStore *)self updateStoreWithInfo:v6 info:v11];
}

- (BOOL)_updateCachedLocalStore:(id)a3 error:(id)a4
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 persistentDomainForName:@"com.apple.wifi.diagnosticsMode"];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136316162;
    v18 = "[W5DiagnosticsModeLocalStore _updateCachedLocalStore:error:]";
    v19 = 2080;
    v20 = "W5DiagnosticsModeManager.m";
    v21 = 1024;
    v22 = 1691;
    v23 = 2080;
    v24 = "[W5DiagnosticsModeLocalStore _updateCachedLocalStore:error:]";
    v25 = 2114;
    v26 = v4;
    LODWORD(v15) = 48;
    v14 = &v17;
    _os_log_send_and_compose_impl();
  }

  if (!v4)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  v16 = 0;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v16];
  v10 = v16;
  if (v9)
  {
    [v7 setObject:v9 forKeyedSubscript:@"CachedDiagnosticsModeLocalStore"];
LABEL_7:
    v11 = [NSUserDefaults standardUserDefaults:v14];
    [v11 setPersistentDomain:v7 forName:@"com.apple.wifi.diagnosticsMode"];

    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136316162;
      v18 = "[W5DiagnosticsModeLocalStore _updateCachedLocalStore:error:]";
      v19 = 2080;
      v20 = "W5DiagnosticsModeManager.m";
      v21 = 1024;
      v22 = 1706;
      v23 = 2080;
      v24 = "[W5DiagnosticsModeLocalStore _updateCachedLocalStore:error:]";
      v25 = 2114;
      v26 = v10;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_10;
  }

  v9 = sub_100098A04();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315906;
    v18 = "[W5DiagnosticsModeLocalStore _updateCachedLocalStore:error:]";
    v19 = 2080;
    v20 = "W5DiagnosticsModeManager.m";
    v21 = 1024;
    v22 = 1700;
    v23 = 2114;
    v24 = v10;
    _os_log_send_and_compose_impl();
  }

LABEL_10:

  return v10 == 0;
}

@end