@interface W5CloudStore
+ (id)sharedStore;
- (BOOL)registerDiagnosticModePeer:(id)a3 configuration:(id)a4 error:(id *)a5;
- (BOOL)unregisterDiagnosticModePeer:(id)a3 error:(id *)a4;
- (W5CloudStore)init;
- (id)_homeDiagnosticsDomain;
- (id)getMinNotificationInterval:(id)a3 notificationType:(int64_t)a4;
- (id)registeredPeers;
- (void)_setHomeDiagnosticsDomain:(id)a3;
@end

@implementation W5CloudStore

+ (id)sharedStore
{
  if (qword_100106C68 != -1)
  {
    dispatch_once(&qword_100106C68, &stru_1000E3188);
  }

  v3 = qword_100106C60;

  return v3;
}

- (W5CloudStore)init
{
  v8.receiver = self;
  v8.super_class = W5CloudStore;
  v2 = [(W5CloudStore *)&v8 init];
  if (!v2)
  {
LABEL_8:

    return 0;
  }

  v3 = [[NSUbiquitousKeyValueStore alloc] initWithStoreIdentifier:@"com.apple.wifi.app" type:0];
  appStore = v2->_appStore;
  v2->_appStore = v3;

  v5 = v2->_appStore;
  if (!v5)
  {
    v7 = sub_100098A04();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315650;
      v10 = "[W5CloudStore init]";
      v11 = 2080;
      v12 = "W5CloudStore.m";
      v13 = 1024;
      v14 = 53;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_8;
  }

  [(NSUbiquitousKeyValueStore *)v5 synchronize];
  return v2;
}

- (id)_homeDiagnosticsDomain
{
  v2 = [(W5CloudStore *)self appStore];
  v3 = [v2 objectForKey:@"home-diagnostics"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = +[NSDictionary dictionary];
  }

  v5 = v4;

  return v5;
}

- (void)_setHomeDiagnosticsDomain:(id)a3
{
  v4 = a3;
  v5 = [(W5CloudStore *)self appStore];
  [v5 setObject:v4 forKey:@"home-diagnostics"];

  v6 = [(W5CloudStore *)self appStore];
  [v6 synchronize];
}

- (BOOL)registerDiagnosticModePeer:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(W5CloudStore *)self _homeDiagnosticsDomain];
  v11 = [v10 mutableCopy];

  v39 = v11;
  v12 = [v11 objectForKeyedSubscript:@"registered-app-peers"];
  if (!v12)
  {
    v12 = +[NSDictionary dictionary];
  }

  v13 = [v12 mutableCopy];
  v14 = [v8 peer];
  v15 = [v14 peerID];

  if (!v15)
  {
    v31 = sub_100098A04();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 136315906;
      v44 = "[W5CloudStore registerDiagnosticModePeer:configuration:error:]";
      v45 = 2080;
      v46 = "W5CloudStore.m";
      v47 = 1024;
      v48 = 96;
      v49 = 2114;
      v50 = v8;
      LODWORD(v37) = 38;
      v36 = &v43;
      _os_log_send_and_compose_impl();
    }

    if (!a5)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v40 = 0;
  v16 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v40];
  v17 = v40;
  v18 = v17;
  if (!v16)
  {
    v32 = sub_100098A04();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 136315906;
      v44 = "[W5CloudStore registerDiagnosticModePeer:configuration:error:]";
      v45 = 2080;
      v46 = "W5CloudStore.m";
      v47 = 1024;
      v48 = 101;
      v49 = 2114;
      v50 = v8;
      LODWORD(v37) = 38;
      v36 = &v43;
      _os_log_send_and_compose_impl();
    }

    if (!a5)
    {
      v29 = 0;
      goto LABEL_16;
    }

    if (v18)
    {
      v33 = v18;
      v29 = 0;
      *a5 = v18;
      goto LABEL_16;
    }

LABEL_26:
    v41 = NSLocalizedFailureReasonErrorKey;
    v42 = @"W5ParamErr";
    v34 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1, v36, v37];
    v35 = [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v34];
    *a5 = v35;

LABEL_27:
    v29 = 0;
    v18 = 0;
    goto LABEL_16;
  }

  v38 = v17;
  v19 = +[NSMutableDictionary dictionary];
  v20 = +[NSDate date];
  [v19 setObject:v20 forKeyedSubscript:@"timestamp"];

  v21 = [v8 peer];
  v22 = [v21 name];

  if (v22)
  {
    v23 = [v8 peer];
    v24 = [v23 name];
    [v19 setObject:v24 forKeyedSubscript:@"name"];
  }

  [v19 setObject:v16 forKeyedSubscript:@"peer"];
  v25 = [v9 objectForKey:@"MinStartNotificationInterval"];
  if (v25)
  {
    [v19 setObject:v25 forKey:@"min-start-notification-interval"];
  }

  v26 = [v9 objectForKey:@"MinStopNotificationInterval"];

  if (v26)
  {
    [v19 setObject:v26 forKey:@"min-stop-notification-interval"];
  }

  [v13 setObject:v19 forKeyedSubscript:v15];
  [v39 setObject:v13 forKeyedSubscript:@"registered-app-peers"];
  [(W5CloudStore *)self _setHomeDiagnosticsDomain:v39];
  v27 = sub_100098A04();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 136315906;
    v44 = "[W5CloudStore registerDiagnosticModePeer:configuration:error:]";
    v45 = 2080;
    v46 = "W5CloudStore.m";
    v47 = 1024;
    v48 = 131;
    v49 = 2114;
    v50 = v8;
    _os_log_send_and_compose_impl();
  }

  v28 = sub_100098A04();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 136315906;
    v44 = "[W5CloudStore registerDiagnosticModePeer:configuration:error:]";
    v45 = 2080;
    v46 = "W5CloudStore.m";
    v47 = 1024;
    v48 = 132;
    v49 = 2112;
    v50 = v39;
    _os_log_send_and_compose_impl();
  }

  v29 = 1;
  v18 = v38;
LABEL_16:

  return v29;
}

- (BOOL)unregisterDiagnosticModePeer:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(W5CloudStore *)self _homeDiagnosticsDomain];
  v8 = [v7 mutableCopy];

  v9 = [v8 objectForKeyedSubscript:@"registered-app-peers"];
  v10 = [v6 peer];
  v11 = [v10 peerID];

  if (!v11)
  {
    v17 = sub_100098A04();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315906;
      v21 = "[W5CloudStore unregisterDiagnosticModePeer:error:]";
      v22 = 2080;
      v23 = "W5CloudStore.m";
      v24 = 1024;
      v25 = 152;
      v26 = 2114;
      v27 = v6;
LABEL_13:
      _os_log_send_and_compose_impl();
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  if (!v9)
  {
    v17 = sub_100098A04();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      v21 = "[W5CloudStore unregisterDiagnosticModePeer:error:]";
      v22 = 2080;
      v23 = "W5CloudStore.m";
      v24 = 1024;
      v25 = 153;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v12 = [v9 mutableCopy];
  v13 = [v12 objectForKeyedSubscript:v11];

  if (v13)
  {
    [v12 removeObjectForKey:v11];
    [v8 setObject:v12 forKeyedSubscript:@"registered-app-peers"];
    [(W5CloudStore *)self _setHomeDiagnosticsDomain:v8];
    v14 = sub_100098A04();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315906;
      v21 = "[W5CloudStore unregisterDiagnosticModePeer:error:]";
      v22 = 2080;
      v23 = "W5CloudStore.m";
      v24 = 1024;
      v25 = 166;
      v26 = 2114;
      v27 = v6;
      v15 = 1;
      _os_log_send_and_compose_impl();
    }

    else
    {
      v15 = 1;
    }

    goto LABEL_7;
  }

  v17 = sub_100098A04();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315906;
    v21 = "[W5CloudStore unregisterDiagnosticModePeer:error:]";
    v22 = 2080;
    v23 = "W5CloudStore.m";
    v24 = 1024;
    v25 = 156;
    v26 = 2114;
    v27 = v11;
    _os_log_send_and_compose_impl();
  }

LABEL_15:

  if (!a4)
  {
    v15 = 0;
    goto LABEL_8;
  }

  v18 = NSLocalizedFailureReasonErrorKey;
  v19 = @"W5ParamErr";
  v14 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [NSError errorWithDomain:@"com.apple.wifivelocity.error" code:1 userInfo:v14];
  *a4 = v15 = 0;
LABEL_7:

LABEL_8:
  return v15;
}

- (id)registeredPeers
{
  v2 = [(W5CloudStore *)self _homeDiagnosticsDomain];
  v3 = [v2 mutableCopy];

  v4 = [v3 objectForKeyedSubscript:@"registered-app-peers"];
  v18 = +[NSMutableArray array];
  if (v4)
  {
    v17 = v4;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [v4 allValues];
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = [NSSet setWithObjects:objc_opt_class(), 0];
          v12 = [v10 objectForKeyedSubscript:@"peer"];
          v19 = 0;
          v13 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v12 error:&v19];
          v14 = v19;

          if (v13)
          {
            [v18 addObject:v13];
          }

          else
          {
            v15 = sub_100098A04();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v24 = 136315906;
              v25 = "[W5CloudStore registeredPeers]";
              v26 = 2080;
              v27 = "W5CloudStore.m";
              v28 = 1024;
              v29 = 191;
              v30 = 2114;
              v31 = v14;
              _os_log_send_and_compose_impl();
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v32 count:16];
      }

      while (v7);
    }

    v4 = v17;
  }

  return v18;
}

- (id)getMinNotificationInterval:(id)a3 notificationType:(int64_t)a4
{
  v6 = a3;
  v7 = [(W5CloudStore *)self _homeDiagnosticsDomain];
  v8 = [v7 objectForKeyedSubscript:@"registered-app-peers"];
  v9 = [v8 objectForKey:v6];

  if (!v9)
  {
    goto LABEL_5;
  }

  if (a4 == 2)
  {
    v10 = @"min-start-notification-interval";
    goto LABEL_7;
  }

  if (a4 != 3)
  {
LABEL_5:
    v11 = 0;
    goto LABEL_8;
  }

  v10 = @"min-stop-notification-interval";
LABEL_7:
  v11 = [v9 objectForKey:v10];
LABEL_8:

  return v11;
}

@end