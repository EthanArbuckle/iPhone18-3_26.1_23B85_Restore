@interface W5DiagnosticsModeStore
- (BOOL)_updateCachedDiagnosticsMode:(id)mode error:(id)error;
- (W5DiagnosticsModeStore)init;
- (id)_diagnosticsModeFilteredWithPredicate:(id)predicate;
- (id)_getCachedDiagnosticsMode:(id)mode;
- (id)diagnosticsModeMatchingPeerID:(id)d state:(int64_t)state;
- (id)diagnosticsModeMatchingPeerID:(id)d state:(int64_t)state role:(int64_t)role;
- (id)diagnosticsModeMatchingUUID:(id)d;
- (void)updateStoreWithDiagnosticsMode:(id)mode;
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

- (id)diagnosticsModeMatchingPeerID:(id)d state:(int64_t)state role:(int64_t)role
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000DB74;
  v12[3] = &unk_1000E12E8;
  dCopy = d;
  stateCopy = state;
  roleCopy = role;
  v8 = dCopy;
  v9 = [NSPredicate predicateWithBlock:v12];
  v10 = [(W5DiagnosticsModeStore *)self _diagnosticsModeFilteredWithPredicate:v9];

  return v10;
}

- (id)diagnosticsModeMatchingPeerID:(id)d state:(int64_t)state
{
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10000DDDC;
  v13 = &unk_1000E1310;
  dCopy = d;
  stateCopy = state;
  v6 = dCopy;
  v7 = [NSPredicate predicateWithBlock:&v10];
  v8 = [(W5DiagnosticsModeStore *)self _diagnosticsModeFilteredWithPredicate:v7, v10, v11, v12, v13];

  return v8;
}

- (id)diagnosticsModeMatchingUUID:(id)d
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000E04C;
  v9[3] = &unk_1000E1338;
  dCopy = d;
  v4 = dCopy;
  v5 = [NSPredicate predicateWithBlock:v9];
  v6 = [(W5DiagnosticsModeStore *)self _diagnosticsModeFilteredWithPredicate:v5];

  if (v6)
  {
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)_diagnosticsModeFilteredWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  diagnostics = [(W5DiagnosticsModeStore *)self diagnostics];

  if (diagnostics)
  {
    diagnostics2 = [(W5DiagnosticsModeStore *)self diagnostics];
    allObjects = [diagnostics2 allObjects];
    v8 = [allObjects filteredArrayUsingPredicate:predicateCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateStoreWithDiagnosticsMode:(id)mode
{
  modeCopy = mode;
  if (!modeCopy)
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

  diagnostics = [(W5DiagnosticsModeStore *)self diagnostics];
  v6 = [diagnostics containsObject:modeCopy];

  if (v6)
  {
    diagnostics2 = [(W5DiagnosticsModeStore *)self diagnostics];
    [diagnostics2 removeObject:modeCopy];
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
    v35 = modeCopy;
    LODWORD(v21) = 38;
    v20 = &v28;
    _os_log_send_and_compose_impl();
  }

  diagnostics3 = [(W5DiagnosticsModeStore *)self diagnostics];
  [diagnostics3 addObject:modeCopy];

  diagnostics4 = [(W5DiagnosticsModeStore *)self diagnostics];
  v11 = [(W5DiagnosticsModeStore *)self _updateCachedDiagnosticsMode:diagnostics4 error:0];

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
    sharedDeviceAnalyticsClient = [sub_10000E5EC() sharedDeviceAnalyticsClient];

    if (sharedDeviceAnalyticsClient)
    {
      v14 = [modeCopy state] == 3;
      sharedDeviceAnalyticsClient2 = [sub_10000E5EC() sharedDeviceAnalyticsClient];
      v16 = +[NSDate now];
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = sub_10000E6CC;
      v25 = &unk_1000E1360;
      v26 = modeCopy;
      v27 = v14;
      [sharedDeviceAnalyticsClient2 diagnosticEventAt:v16 with:&v22];
    }
  }

  if (!self->_activeTransaction)
  {
    if ([modeCopy state] == 2 || objc_msgSend(modeCopy, "state") == 3 || objc_msgSend(modeCopy, "state") == 4 || objc_msgSend(modeCopy, "state") == 5 || objc_msgSend(modeCopy, "state") == 10)
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

  if ([modeCopy state] == 1 || objc_msgSend(modeCopy, "state") == 11)
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

- (id)_getCachedDiagnosticsMode:(id)mode
{
  modeCopy = mode;
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
  v19 = modeCopy;
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

- (BOOL)_updateCachedDiagnosticsMode:(id)mode error:(id)error
{
  modeCopy = mode;
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
    v26 = modeCopy;
    LODWORD(v15) = 48;
    v14 = &v17;
    _os_log_send_and_compose_impl();
  }

  if (!modeCopy)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  v16 = 0;
  v9 = [NSKeyedArchiver archivedDataWithRootObject:modeCopy requiringSecureCoding:1 error:&v16];
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