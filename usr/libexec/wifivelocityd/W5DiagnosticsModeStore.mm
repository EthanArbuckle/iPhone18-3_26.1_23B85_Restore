@interface W5DiagnosticsModeStore
- (BOOL)_updateCachedDiagnosticsMode:(id)a3 error:(id)a4;
- (W5DiagnosticsModeStore)init;
- (id)_diagnosticsModeFilteredWithPredicate:(id)a3;
- (id)_getCachedDiagnosticsMode:(id)a3;
- (id)diagnosticsModeMatchingPeerID:(id)a3 state:(int64_t)a4;
- (id)diagnosticsModeMatchingPeerID:(id)a3 state:(int64_t)a4 role:(int64_t)a5;
- (id)diagnosticsModeMatchingUUID:(id)a3;
- (void)updateStoreWithDiagnosticsMode:(id)a3;
@end

@implementation W5DiagnosticsModeStore

- (W5DiagnosticsModeStore)init
{
  v9.receiver = self;
  v9.super_class = W5DiagnosticsModeStore;
  v2 = [(W5DiagnosticsModeStore *)&v9 init];
  v3 = [(W5DiagnosticsModeStore *)v2 _getCachedDiagnosticsMode:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
  }

  else
  {
    v5 = +[NSMutableSet set];
  }

  diagnostics = v2->_diagnostics;
  v2->_diagnostics = v5;

  activeTransaction = v2->_activeTransaction;
  v2->_activeTransaction = 0;

  return v2;
}

- (id)diagnosticsModeMatchingPeerID:(id)a3 state:(int64_t)a4 role:(int64_t)a5
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000DB74;
  v12[3] = &unk_1000E12E8;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v8 = v13;
  v9 = [NSPredicate predicateWithBlock:v12];
  v10 = [(W5DiagnosticsModeStore *)self _diagnosticsModeFilteredWithPredicate:v9];

  return v10;
}

- (id)diagnosticsModeMatchingPeerID:(id)a3 state:(int64_t)a4
{
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10000DDDC;
  v13 = &unk_1000E1310;
  v14 = a3;
  v15 = a4;
  v6 = v14;
  v7 = [NSPredicate predicateWithBlock:&v10];
  v8 = [(W5DiagnosticsModeStore *)self _diagnosticsModeFilteredWithPredicate:v7, v10, v11, v12, v13];

  return v8;
}

- (id)diagnosticsModeMatchingUUID:(id)a3
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000E04C;
  v9[3] = &unk_1000E1338;
  v10 = a3;
  v4 = v10;
  v5 = [NSPredicate predicateWithBlock:v9];
  v6 = [(W5DiagnosticsModeStore *)self _diagnosticsModeFilteredWithPredicate:v5];

  if (v6)
  {
    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_diagnosticsModeFilteredWithPredicate:(id)a3
{
  v4 = a3;
  v5 = [(W5DiagnosticsModeStore *)self diagnostics];

  if (v5)
  {
    v6 = [(W5DiagnosticsModeStore *)self diagnostics];
    v7 = [v6 allObjects];
    v8 = [v7 filteredArrayUsingPredicate:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateStoreWithDiagnosticsMode:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    activeTransaction = sub_100098A04();
    if (os_log_type_enabled(activeTransaction, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136315906;
      v29 = "[W5DiagnosticsModeStore updateStoreWithDiagnosticsMode:]";
      v30 = 2080;
      v31 = "W5DiagnosticsModeManager.m";
      v32 = 1024;
      v33 = 1529;
      v34 = 2080;
      v35 = "[W5DiagnosticsModeStore updateStoreWithDiagnosticsMode:]";
      _os_log_send_and_compose_impl();
    }

    goto LABEL_26;
  }

  v5 = [(W5DiagnosticsModeStore *)self diagnostics];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(W5DiagnosticsModeStore *)self diagnostics];
    [v7 removeObject:v4];
  }

  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136315906;
    v29 = "[W5DiagnosticsModeStore updateStoreWithDiagnosticsMode:]";
    v30 = 2080;
    v31 = "W5DiagnosticsModeManager.m";
    v32 = 1024;
    v33 = 1537;
    v34 = 2112;
    v35 = v4;
    LODWORD(v21) = 38;
    v20 = &v28;
    _os_log_send_and_compose_impl();
  }

  v9 = [(W5DiagnosticsModeStore *)self diagnostics];
  [v9 addObject:v4];

  v10 = [(W5DiagnosticsModeStore *)self diagnostics];
  v11 = [(W5DiagnosticsModeStore *)self _updateCachedDiagnosticsMode:v10 error:0];

  if ((v11 & 1) == 0)
  {
    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136316162;
      v29 = "[W5DiagnosticsModeStore updateStoreWithDiagnosticsMode:]";
      v30 = 2080;
      v31 = "W5DiagnosticsModeManager.m";
      v32 = 1024;
      v33 = 1542;
      v34 = 2080;
      v35 = "[W5DiagnosticsModeStore updateStoreWithDiagnosticsMode:]";
      v36 = 2114;
      v37 = 0;
      LODWORD(v21) = 48;
      v20 = &v28;
      _os_log_send_and_compose_impl();
    }
  }

  if (sub_10000E5EC())
  {
    v13 = [sub_10000E5EC() sharedDeviceAnalyticsClient];

    if (v13)
    {
      v14 = [v4 state] == 3;
      v15 = [sub_10000E5EC() sharedDeviceAnalyticsClient];
      v16 = +[NSDate now];
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = sub_10000E6CC;
      v25 = &unk_1000E1360;
      v26 = v4;
      v27 = v14;
      [v15 diagnosticEventAt:v16 with:&v22];
    }
  }

  if (!self->_activeTransaction)
  {
    if ([v4 state] == 2 || objc_msgSend(v4, "state") == 3 || objc_msgSend(v4, "state") == 4 || objc_msgSend(v4, "state") == 5 || objc_msgSend(v4, "state") == 10)
    {
      v18 = os_transaction_create();
      v17 = +[W5ActivityManager sharedActivityManager];
      [v17 osTransactionCreate:"diagnosticsModeStateActive" transaction:v18];
      goto LABEL_25;
    }

    if (!self->_activeTransaction)
    {
      goto LABEL_27;
    }
  }

  if ([v4 state] == 1 || objc_msgSend(v4, "state") == 11)
  {
    v17 = +[W5ActivityManager sharedActivityManager];
    [v17 osTransactionComplete:self->_activeTransaction];
    v18 = 0;
LABEL_25:

    activeTransaction = self->_activeTransaction;
    self->_activeTransaction = v18;
LABEL_26:
  }

LABEL_27:
}

- (id)_getCachedDiagnosticsMode:(id)a3
{
  v18 = a3;
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 persistentDomainForName:@"com.apple.wifi.diagnosticsMode"];

  v5 = [v4 objectForKey:@"CachedDiagnosticsMode"];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v6, v7, v8, v9, v10, v11, objc_opt_class(), 0];
  v19 = v18;
  v13 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v12 fromData:v5 error:&v19];
  v14 = v19;

  if (!v13)
  {
    v16 = v4;
    v17 = sub_100098A04();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136316418;
      v21 = "[W5DiagnosticsModeStore _getCachedDiagnosticsMode:]";
      v22 = 2080;
      v23 = "W5DiagnosticsModeManager.m";
      v24 = 1024;
      v25 = 1580;
      v26 = 2114;
      v27 = 0;
      v28 = 2114;
      v29 = v5;
      v30 = 2114;
      v31 = v14;
      _os_log_send_and_compose_impl();
    }

    v4 = v16;
  }

  return v13;
}

- (BOOL)_updateCachedDiagnosticsMode:(id)a3 error:(id)a4
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 persistentDomainForName:@"com.apple.wifi.diagnosticsMode"];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

  v8 = sub_100098A04();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136316162;
    v18 = "[W5DiagnosticsModeStore _updateCachedDiagnosticsMode:error:]";
    v19 = 2080;
    v20 = "W5DiagnosticsModeManager.m";
    v21 = 1024;
    v22 = 1588;
    v23 = 2080;
    v24 = "[W5DiagnosticsModeStore _updateCachedDiagnosticsMode:error:]";
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
    [v7 setObject:v9 forKeyedSubscript:@"CachedDiagnosticsMode"];
LABEL_7:
    v11 = [NSUserDefaults standardUserDefaults:v14];
    [v11 setPersistentDomain:v7 forName:@"com.apple.wifi.diagnosticsMode"];

    v12 = sub_100098A04();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136316162;
      v18 = "[W5DiagnosticsModeStore _updateCachedDiagnosticsMode:error:]";
      v19 = 2080;
      v20 = "W5DiagnosticsModeManager.m";
      v21 = 1024;
      v22 = 1603;
      v23 = 2080;
      v24 = "[W5DiagnosticsModeStore _updateCachedDiagnosticsMode:error:]";
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
    v18 = "[W5DiagnosticsModeStore _updateCachedDiagnosticsMode:error:]";
    v19 = 2080;
    v20 = "W5DiagnosticsModeManager.m";
    v21 = 1024;
    v22 = 1597;
    v23 = 2114;
    v24 = v10;
    _os_log_send_and_compose_impl();
  }

LABEL_10:

  return v10 == 0;
}

@end