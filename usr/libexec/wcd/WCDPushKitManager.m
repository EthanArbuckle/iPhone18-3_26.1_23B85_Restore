@interface WCDPushKitManager
+ (id)bundleIDFromTopic:(id)a3;
+ (id)bundleIDsFromTopics:(id)a3;
+ (id)sharedPushKitManager;
+ (id)topicsFromBundleIDs:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NSString)state;
- (WCDPushKitManager)init;
- (void)clientRequestingComplicationRegister:(id)a3;
- (void)clientRequestingComplicationUnregister:(id)a3;
- (void)clientXPCConnectionDidDisconnect:(id)a3;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)dealloc;
- (void)launchClient:(id)a3;
- (void)releaseAssertionForBundleID:(id)a3;
- (void)releaseAssertionForClient:(id)a3;
- (void)setUpInitialState;
- (void)systemObserverActiveComplicationsChanged;
- (void)systemObserverComplicationsInstalledChanged;
@end

@implementation WCDPushKitManager

+ (id)sharedPushKitManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026964;
  block[3] = &unk_100048E08;
  block[4] = a1;
  if (qword_100054D08 != -1)
  {
    dispatch_once(&qword_100054D08, block);
  }

  v2 = qword_100054D00;

  return v2;
}

- (WCDPushKitManager)init
{
  v24.receiver = self;
  v24.super_class = WCDPushKitManager;
  v2 = [(WCDPushKitManager *)&v24 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    clientsDeniedComplicationRegister = v2->_clientsDeniedComplicationRegister;
    v2->_clientsDeniedComplicationRegister = v3;

    v5 = objc_opt_new();
    bundleIDToClient = v2->_bundleIDToClient;
    v2->_bundleIDToClient = v5;

    v7 = +[WCDSystemMonitor sharedSystemMonitor];
    [v7 addObserver:v2];

    v8 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.watchconnectivity.complication"];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v8;

    v10 = [(WCDPushKitManager *)v2 xpcListener];
    [v10 _setQueue:&_dispatch_main_q];

    v11 = [(WCDPushKitManager *)v2 xpcListener];
    [v11 setDelegate:v2];

    v12 = [(WCDPushKitManager *)v2 xpcListener];
    [v12 resume];

    v13 = [APSConnection alloc];
    v14 = [v13 initWithEnvironmentName:APSEnvironmentProduction namedDelegatePort:@"com.apple.watchconnectivity.complication.push" queue:&_dispatch_main_q];
    productionConnection = v2->_productionConnection;
    v2->_productionConnection = v14;

    v16 = [(WCDPushKitManager *)v2 productionConnection];
    [v16 setDelegate:v2];

    v17 = [APSConnection alloc];
    v18 = [v17 initWithEnvironmentName:APSEnvironmentDevelopment namedDelegatePort:@"com.apple.watchconnectivity.complication.push.development" queue:&_dispatch_main_q];
    developmentConnection = v2->_developmentConnection;
    v2->_developmentConnection = v18;

    v20 = [(WCDPushKitManager *)v2 developmentConnection];
    [v20 setDelegate:v2];

    [(WCDPushKitManager *)v2 setUpInitialState];
    v21 = wc_pushkit_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Notifying any clients listening to reconnect", v23, 2u);
    }

    notify_post("com.apple.pushkit.launch.complication");
  }

  return v2;
}

- (NSString)state
{
  v3 = objc_opt_class();
  v11 = NSStringFromClass(v3);
  NSAppendPrintF();
  v4 = 0;

  NSAppendPrintF();
  v5 = v4;

  v12 = [(WCDPushKitManager *)self productionConnection];
  NSAppendPrintF();
  v6 = v5;

  v13 = [(WCDPushKitManager *)self developmentConnection];
  NSAppendPrintF();
  v7 = v6;

  v14 = [(WCDPushKitManager *)self bundleIDToClient];
  NSAppendPrintF();
  v8 = v7;

  v15 = [(WCDPushKitManager *)self clientsDeniedComplicationRegister];
  NSAppendPrintF();
  v9 = v8;

  return v8;
}

- (void)setUpInitialState
{
  [(WCDPushKitManager *)self systemObserverComplicationsInstalledChanged];

  [(WCDPushKitManager *)self systemObserverActiveComplicationsChanged];
}

- (void)dealloc
{
  v3 = [(WCDPushKitManager *)self developmentConnection];
  [v3 setDelegate:0];

  v4 = [(WCDPushKitManager *)self productionConnection];
  [v4 setDelegate:0];

  v5 = [(WCDPushKitManager *)self xpcListener];
  [v5 invalidate];

  v6 = +[WCDSystemMonitor sharedSystemMonitor];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = WCDPushKitManager;
  [(WCDPushKitManager *)&v7 dealloc];
}

- (void)systemObserverActiveComplicationsChanged
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  v4 = [v3 iOSApplicationsContainingActiveComplications];

  [objc_opt_class() topicsFromBundleIDs:v4];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100027004;
  v5 = v18[3] = &unk_1000493B0;
  v19 = v5;
  v6 = objc_retainBlock(v18);
  v7 = [(WCDPushKitManager *)self productionConnection];
  (v6[2])(v6, v7);

  v8 = [(WCDPushKitManager *)self developmentConnection];
  (v6[2])(v6, v8);

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000271C4;
  v16 = &unk_1000493B0;
  v17 = v5;
  v9 = v5;
  v10 = objc_retainBlock(&v13);
  v11 = [(WCDPushKitManager *)self productionConnection:v13];
  (v10[2])(v10, v11);

  v12 = [(WCDPushKitManager *)self developmentConnection];
  (v10[2])(v10, v12);
}

- (void)systemObserverComplicationsInstalledChanged
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  v4 = [v3 applicationWorkspace];
  v5 = [v4 iOSApplicationsContainingComplications];
  v6 = [v5 bs_map:&stru_1000493D0];

  [objc_opt_class() topicsFromBundleIDs:v6];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100027644;
  v20 = v25[3] = &unk_1000493B0;
  v26 = v20;
  v7 = objc_retainBlock(v25);
  v8 = [(WCDPushKitManager *)self productionConnection];
  (v7[2])(v7, v8);

  v9 = [(WCDPushKitManager *)self developmentConnection];
  v19 = v7;
  (v7[2])(v7, v9);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [(WCDPushKitManager *)self clientsDeniedComplicationRegister];
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [v15 bundleID];
        v17 = [v6 containsObject:v16];

        if (v17)
        {
          v18 = wc_pushkit_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v28 = v15;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "replaying client requesting complication register for client %{public}@", buf, 0xCu);
          }

          [(WCDPushKitManager *)self clientRequestingComplicationRegister:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v12);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 wc_connectionBundleID];
  v7 = [v5 valueForEntitlement:@"aps-environment"];
  v8 = APSEnvironmentProduction;
  if ([v7 isEqual:APSEnvironmentProduction] & 1) != 0 || (objc_msgSend(v7, "isEqual:", APSEnvironmentDevelopment))
  {
    v9 = [(WCDPushKitManager *)self bundleIDToClient];
    v10 = [v9 objectForKeyedSubscript:v6];

    if (!v10)
    {
      v10 = [[WCDPKClient alloc] initWithBundleID:v6];
      [(WCDPKClient *)v10 setDelegate:self];
      v11 = [(WCDPushKitManager *)self bundleIDToClient];
      [v11 setObject:v10 forKeyedSubscript:v6];
    }

    -[WCDPKClient setProductionEnvironment:](v10, "setProductionEnvironment:", [v7 isEqual:v8]);
    [(WCDPKClient *)v10 setConnection:v5];
    v12 = wc_pushkit_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Accepting new connection from client: %{public}@", &v15, 0xCu);
    }

    v13 = 1;
  }

  else
  {
    v10 = wc_pushkit_log();
    if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
    {
      sub_10002C530();
    }

    v13 = 0;
  }

  return v13;
}

- (void)clientXPCConnectionDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = wc_pushkit_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
  }

  [(WCDPushKitManager *)self releaseAssertionForClient:v4];
  v6 = [(WCDPushKitManager *)self bundleIDToClient];
  v7 = [v4 bundleID];
  [v6 removeObjectForKey:v7];
}

- (void)clientRequestingComplicationRegister:(id)a3
{
  v4 = a3;
  v5 = [v4 isProductionEnvironment];
  v6 = @"Development";
  if (v5)
  {
    v6 = @"Production";
  }

  v7 = v6;
  v8 = +[WCDSystemMonitor sharedSystemMonitor];
  v9 = [v8 applicationWorkspace];
  v10 = [v4 bundleID];
  v11 = [v9 applicationInfoForBundleIdentifier:v10 type:1];

  if ([v11 hasComplications])
  {
    v12 = objc_opt_class();
    v13 = [v4 bundleID];
    v14 = [v12 topicFromBundleId:v13];

    if ([v4 isProductionEnvironment])
    {
      [(WCDPushKitManager *)self productionConnection];
    }

    else
    {
      [(WCDPushKitManager *)self developmentConnection];
    }
    v16 = ;
    v17 = wc_pushkit_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v30 = v7;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "token %{public}@", buf, 0xCu);
    }

    v28 = v7;

    [v16 requestTokenForTopic:v14 identifier:0];
    v18 = [v16 enabledTopics];
    v19 = [NSMutableArray arrayWithArray:v18];

    [v19 removeObject:v14];
    v20 = [v16 ignoredTopics];
    v21 = [NSMutableArray arrayWithArray:v20];

    [v21 removeObject:v14];
    v22 = +[WCDSystemMonitor sharedSystemMonitor];
    v23 = [v22 iOSApplicationsContainingActiveComplications];
    v24 = [v4 bundleID];
    v25 = [v23 containsObject:v24];

    if (v25)
    {
      [v19 addObject:v14];
      v26 = wc_pushkit_log();
      v7 = v28;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v30 = v28;
        v31 = 2114;
        v32 = v14;
        v27 = "%{public}@ Topic added to Enabled list: %{public}@.";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0x16u);
      }
    }

    else
    {
      [v21 addObject:v14];
      v26 = wc_pushkit_log();
      v7 = v28;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v30 = v28;
        v31 = 2114;
        v32 = v14;
        v27 = "%{public}@ Topic added to Ignored list: %{public}@.";
        goto LABEL_16;
      }
    }

    [v16 setEnabledTopics:v19 ignoredTopics:v21];
    goto LABEL_18;
  }

  v15 = [(WCDPushKitManager *)self clientsDeniedComplicationRegister];
  [v15 addObject:v4];

  v14 = wc_pushkit_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10002C598();
  }

LABEL_18:
}

- (void)clientRequestingComplicationUnregister:(id)a3
{
  v4 = a3;
  v5 = [(WCDPushKitManager *)self clientsDeniedComplicationRegister];
  [v5 removeObject:v4];

  v6 = [v4 isProductionEnvironment];
  v7 = @"Development";
  if (v6)
  {
    v7 = @"Production";
  }

  v8 = v7;
  v9 = objc_opt_class();
  v10 = [v4 bundleID];
  v11 = [v9 topicFromBundleId:v10];

  LOBYTE(v10) = [v4 isProductionEnvironment];
  if (v10)
  {
    [(WCDPushKitManager *)self productionConnection];
  }

  else
  {
    [(WCDPushKitManager *)self developmentConnection];
  }
  v12 = ;
  v13 = wc_pushkit_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "invalidating %{public}@ token for topic %{public}@", &v14, 0x16u);
  }

  [v12 invalidateTokenForTopic:v11 identifier:0];
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = wc_pushkit_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connection: %{public}@, publicToken: %{public}@", buf, 0x16u);
  }

  v9 = [(WCDPushKitManager *)self productionConnection];
  v10 = [v6 isEqual:v9];

  v11 = &APSEnvironmentProduction;
  if (!v10)
  {
    v11 = &APSEnvironmentDevelopment;
  }

  v12 = *v11;
  v13 = [(WCDPushKitManager *)self bundleIDToClient];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100028284;
  v16[3] = &unk_1000493F8;
  v16[4] = self;
  v17 = v12;
  v18 = v6;
  v14 = v6;
  v15 = v12;
  [v13 enumerateKeysAndObjectsUsingBlock:v16];
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = wc_pushkit_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138544130;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    v22 = 2114;
    v23 = v12;
    v24 = 2114;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "connection: %{public}@, token: %{public}@, topic: %{public}@, identifier: %{public}@", &v18, 0x2Au);
  }

  v15 = [objc_opt_class() bundleIDFromTopic:v12];
  v16 = [(WCDPushKitManager *)self bundleIDToClient];
  v17 = [v16 objectForKeyedSubscript:v15];

  [v17 deliverToken:v11];
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = wc_pushkit_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543618;
    v18 = v6;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connection: %{public}@, message: %{public}@", &v17, 0x16u);
  }

  v9 = [v7 topic];
  v10 = [v7 userInfo];
  v11 = [objc_opt_class() bundleIDFromTopic:v9];
  v12 = wc_pushkit_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543618;
    v18 = v9;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "topic: %{public}@ bundleID: %{public}@", &v17, 0x16u);
  }

  v13 = [(WCDPushKitManager *)self bundleIDToClient];
  v14 = [v13 objectForKeyedSubscript:v11];

  if (!v14)
  {
    v14 = [[WCDPKClient alloc] initWithBundleID:v11];
    [(WCDPKClient *)v14 setDelegate:self];
    v15 = [(WCDPushKitManager *)self bundleIDToClient];
    [v15 setObject:v14 forKeyedSubscript:v11];
  }

  [(WCDPKClient *)v14 deliverPayload:v10];
  if ([(WCDPKClient *)v14 isRunning])
  {
    v16 = wc_pushkit_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "bundleID: %{public}@, not launching as it's already running", &v17, 0xCu);
    }
  }

  else
  {
    [(WCDPushKitManager *)self launchClient:v14];
  }
}

- (void)releaseAssertionForBundleID:(id)a3
{
  v4 = a3;
  v5 = wc_pushkit_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
  }

  v6 = [(WCDPushKitManager *)self bundleIDToClient];
  v7 = [v6 objectForKeyedSubscript:v4];

  [(WCDPushKitManager *)self releaseAssertionForClient:v7];
}

- (void)launchClient:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleID];
  v5 = wc_pushkit_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v40 = 0x2020000000;
  v41 = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = +[FBSSystemService sharedService];
  v37 = FBSOpenApplicationOptionKeyActivateSuspended;
  v38 = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100028D7C;
  v30[3] = &unk_100049420;
  p_buf = &buf;
  v9 = v4;
  v31 = v9;
  v10 = v6;
  v32 = v10;
  [v7 openApplication:v9 options:v8 withResult:v30];

  v11 = dispatch_time(0, 20000000000);
  v12 = dispatch_semaphore_wait(v10, v11);
  if (*(*(&buf + 1) + 24) == 1)
  {
    v13 = wc_pushkit_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10002C668();
    }
  }

  else if (v12)
  {
    v13 = wc_pushkit_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10002C600();
    }
  }

  else
  {
    v14 = wc_pushkit_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 138543362;
      v36 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "bundleID: %{public}@, successfully launched the app", v35, 0xCu);
    }

    v13 = [objc_opt_class() topicFromBundleId:v9];
    objc_initWeak(v35, v3);
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_100028EDC;
    v27 = &unk_100049448;
    v15 = v9;
    v28 = v15;
    objc_copyWeak(&v29, v35);
    v16 = objc_retainBlock(&v24);
    [v3 setAssertionInvalidationHandler:{v16, v24, v25, v26, v27}];
    v17 = [RBSAssertion alloc];
    v18 = [RBSProcessIdentity identityForEmbeddedApplicationIdentifier:v15];
    v19 = [RBSTarget targetWithProcessIdentity:v18];
    v20 = [RBSDomainAttribute attributeWithDomain:@"com.apple.watchconnectivity" name:@"BackgroundDownload"];
    v34 = v20;
    v21 = [NSArray arrayWithObjects:&v34 count:1];
    v22 = [v17 initWithExplanation:v13 target:v19 attributes:v21];
    [v3 setAssertion:v22];

    v23 = [v3 assertion];
    [v23 acquireWithInvalidationHandler:v16];

    objc_destroyWeak(&v29);
    objc_destroyWeak(v35);
  }

  _Block_object_dispose(&buf, 8);
}

- (void)releaseAssertionForClient:(id)a3
{
  v3 = a3;
  v4 = [v3 assertion];

  if (v4)
  {
    v5 = wc_pushkit_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "invalidating assertion for client %{public}@", &v8, 0xCu);
    }

    v6 = [v3 assertion];
    v7 = [v3 assertionInvalidationHandler];
    (v7)[2](v7, v6, 0);
    [v6 invalidate];
  }
}

+ (id)bundleIDFromTopic:(id)a3
{
  v3 = a3;
  v4 = [v3 substringWithRange:{0, objc_msgSend(v3, "length") + ~objc_msgSend(@"complication", "length")}];

  return v4;
}

+ (id)bundleIDsFromTopics:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 bundleIDFromTopic:{*(*(&v13 + 1) + 8 * i), v13}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)topicsFromBundleIDs:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 topicFromBundleId:{*(*(&v13 + 1) + 8 * i), v13}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

@end