@interface WCDPushKitManager
+ (id)bundleIDFromTopic:(id)topic;
+ (id)bundleIDsFromTopics:(id)topics;
+ (id)sharedPushKitManager;
+ (id)topicsFromBundleIDs:(id)ds;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSString)state;
- (WCDPushKitManager)init;
- (void)clientRequestingComplicationRegister:(id)register;
- (void)clientRequestingComplicationUnregister:(id)unregister;
- (void)clientXPCConnectionDidDisconnect:(id)disconnect;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)dealloc;
- (void)launchClient:(id)client;
- (void)releaseAssertionForBundleID:(id)d;
- (void)releaseAssertionForClient:(id)client;
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
  block[4] = self;
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

    xpcListener = [(WCDPushKitManager *)v2 xpcListener];
    [xpcListener _setQueue:&_dispatch_main_q];

    xpcListener2 = [(WCDPushKitManager *)v2 xpcListener];
    [xpcListener2 setDelegate:v2];

    xpcListener3 = [(WCDPushKitManager *)v2 xpcListener];
    [xpcListener3 resume];

    v13 = [APSConnection alloc];
    v14 = [v13 initWithEnvironmentName:APSEnvironmentProduction namedDelegatePort:@"com.apple.watchconnectivity.complication.push" queue:&_dispatch_main_q];
    productionConnection = v2->_productionConnection;
    v2->_productionConnection = v14;

    productionConnection = [(WCDPushKitManager *)v2 productionConnection];
    [productionConnection setDelegate:v2];

    v17 = [APSConnection alloc];
    v18 = [v17 initWithEnvironmentName:APSEnvironmentDevelopment namedDelegatePort:@"com.apple.watchconnectivity.complication.push.development" queue:&_dispatch_main_q];
    developmentConnection = v2->_developmentConnection;
    v2->_developmentConnection = v18;

    developmentConnection = [(WCDPushKitManager *)v2 developmentConnection];
    [developmentConnection setDelegate:v2];

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

  productionConnection = [(WCDPushKitManager *)self productionConnection];
  NSAppendPrintF();
  v6 = v5;

  developmentConnection = [(WCDPushKitManager *)self developmentConnection];
  NSAppendPrintF();
  v7 = v6;

  bundleIDToClient = [(WCDPushKitManager *)self bundleIDToClient];
  NSAppendPrintF();
  v8 = v7;

  clientsDeniedComplicationRegister = [(WCDPushKitManager *)self clientsDeniedComplicationRegister];
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
  developmentConnection = [(WCDPushKitManager *)self developmentConnection];
  [developmentConnection setDelegate:0];

  productionConnection = [(WCDPushKitManager *)self productionConnection];
  [productionConnection setDelegate:0];

  xpcListener = [(WCDPushKitManager *)self xpcListener];
  [xpcListener invalidate];

  v6 = +[WCDSystemMonitor sharedSystemMonitor];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = WCDPushKitManager;
  [(WCDPushKitManager *)&v7 dealloc];
}

- (void)systemObserverActiveComplicationsChanged
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  iOSApplicationsContainingActiveComplications = [v3 iOSApplicationsContainingActiveComplications];

  [objc_opt_class() topicsFromBundleIDs:iOSApplicationsContainingActiveComplications];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100027004;
  v5 = v18[3] = &unk_1000493B0;
  v19 = v5;
  v6 = objc_retainBlock(v18);
  productionConnection = [(WCDPushKitManager *)self productionConnection];
  (v6[2])(v6, productionConnection);

  developmentConnection = [(WCDPushKitManager *)self developmentConnection];
  (v6[2])(v6, developmentConnection);

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000271C4;
  v16 = &unk_1000493B0;
  v17 = v5;
  v9 = v5;
  v10 = objc_retainBlock(&v13);
  v11 = [(WCDPushKitManager *)self productionConnection:v13];
  (v10[2])(v10, v11);

  developmentConnection2 = [(WCDPushKitManager *)self developmentConnection];
  (v10[2])(v10, developmentConnection2);
}

- (void)systemObserverComplicationsInstalledChanged
{
  v3 = +[WCDSystemMonitor sharedSystemMonitor];
  applicationWorkspace = [v3 applicationWorkspace];
  iOSApplicationsContainingComplications = [applicationWorkspace iOSApplicationsContainingComplications];
  v6 = [iOSApplicationsContainingComplications bs_map:&stru_1000493D0];

  [objc_opt_class() topicsFromBundleIDs:v6];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100027644;
  v20 = v25[3] = &unk_1000493B0;
  v26 = v20;
  v7 = objc_retainBlock(v25);
  productionConnection = [(WCDPushKitManager *)self productionConnection];
  (v7[2])(v7, productionConnection);

  developmentConnection = [(WCDPushKitManager *)self developmentConnection];
  v19 = v7;
  (v7[2])(v7, developmentConnection);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  clientsDeniedComplicationRegister = [(WCDPushKitManager *)self clientsDeniedComplicationRegister];
  v11 = [clientsDeniedComplicationRegister countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(clientsDeniedComplicationRegister);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        bundleID = [v15 bundleID];
        v17 = [v6 containsObject:bundleID];

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

      v12 = [clientsDeniedComplicationRegister countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v12);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  wc_connectionBundleID = [connectionCopy wc_connectionBundleID];
  v7 = [connectionCopy valueForEntitlement:@"aps-environment"];
  v8 = APSEnvironmentProduction;
  if ([v7 isEqual:APSEnvironmentProduction] & 1) != 0 || (objc_msgSend(v7, "isEqual:", APSEnvironmentDevelopment))
  {
    bundleIDToClient = [(WCDPushKitManager *)self bundleIDToClient];
    v10 = [bundleIDToClient objectForKeyedSubscript:wc_connectionBundleID];

    if (!v10)
    {
      v10 = [[WCDPKClient alloc] initWithBundleID:wc_connectionBundleID];
      [(WCDPKClient *)v10 setDelegate:self];
      bundleIDToClient2 = [(WCDPushKitManager *)self bundleIDToClient];
      [bundleIDToClient2 setObject:v10 forKeyedSubscript:wc_connectionBundleID];
    }

    -[WCDPKClient setProductionEnvironment:](v10, "setProductionEnvironment:", [v7 isEqual:v8]);
    [(WCDPKClient *)v10 setConnection:connectionCopy];
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

- (void)clientXPCConnectionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = wc_pushkit_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
  }

  [(WCDPushKitManager *)self releaseAssertionForClient:disconnectCopy];
  bundleIDToClient = [(WCDPushKitManager *)self bundleIDToClient];
  bundleID = [disconnectCopy bundleID];
  [bundleIDToClient removeObjectForKey:bundleID];
}

- (void)clientRequestingComplicationRegister:(id)register
{
  registerCopy = register;
  isProductionEnvironment = [registerCopy isProductionEnvironment];
  v6 = @"Development";
  if (isProductionEnvironment)
  {
    v6 = @"Production";
  }

  v7 = v6;
  v8 = +[WCDSystemMonitor sharedSystemMonitor];
  applicationWorkspace = [v8 applicationWorkspace];
  bundleID = [registerCopy bundleID];
  v11 = [applicationWorkspace applicationInfoForBundleIdentifier:bundleID type:1];

  if ([v11 hasComplications])
  {
    v12 = objc_opt_class();
    bundleID2 = [registerCopy bundleID];
    v14 = [v12 topicFromBundleId:bundleID2];

    if ([registerCopy isProductionEnvironment])
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
    enabledTopics = [v16 enabledTopics];
    v19 = [NSMutableArray arrayWithArray:enabledTopics];

    [v19 removeObject:v14];
    ignoredTopics = [v16 ignoredTopics];
    v21 = [NSMutableArray arrayWithArray:ignoredTopics];

    [v21 removeObject:v14];
    v22 = +[WCDSystemMonitor sharedSystemMonitor];
    iOSApplicationsContainingActiveComplications = [v22 iOSApplicationsContainingActiveComplications];
    bundleID3 = [registerCopy bundleID];
    v25 = [iOSApplicationsContainingActiveComplications containsObject:bundleID3];

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

  clientsDeniedComplicationRegister = [(WCDPushKitManager *)self clientsDeniedComplicationRegister];
  [clientsDeniedComplicationRegister addObject:registerCopy];

  v14 = wc_pushkit_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10002C598();
  }

LABEL_18:
}

- (void)clientRequestingComplicationUnregister:(id)unregister
{
  unregisterCopy = unregister;
  clientsDeniedComplicationRegister = [(WCDPushKitManager *)self clientsDeniedComplicationRegister];
  [clientsDeniedComplicationRegister removeObject:unregisterCopy];

  isProductionEnvironment = [unregisterCopy isProductionEnvironment];
  v7 = @"Development";
  if (isProductionEnvironment)
  {
    v7 = @"Production";
  }

  v8 = v7;
  v9 = objc_opt_class();
  bundleID = [unregisterCopy bundleID];
  v11 = [v9 topicFromBundleId:bundleID];

  LOBYTE(bundleID) = [unregisterCopy isProductionEnvironment];
  if (bundleID)
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

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  v8 = wc_pushkit_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = connectionCopy;
    v21 = 2114;
    v22 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connection: %{public}@, publicToken: %{public}@", buf, 0x16u);
  }

  productionConnection = [(WCDPushKitManager *)self productionConnection];
  v10 = [connectionCopy isEqual:productionConnection];

  v11 = &APSEnvironmentProduction;
  if (!v10)
  {
    v11 = &APSEnvironmentDevelopment;
  }

  v12 = *v11;
  bundleIDToClient = [(WCDPushKitManager *)self bundleIDToClient];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100028284;
  v16[3] = &unk_1000493F8;
  v16[4] = self;
  v17 = v12;
  v18 = connectionCopy;
  v14 = connectionCopy;
  v15 = v12;
  [bundleIDToClient enumerateKeysAndObjectsUsingBlock:v16];
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  connectionCopy = connection;
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  v14 = wc_pushkit_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138544130;
    v19 = connectionCopy;
    v20 = 2114;
    v21 = tokenCopy;
    v22 = 2114;
    v23 = topicCopy;
    v24 = 2114;
    v25 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "connection: %{public}@, token: %{public}@, topic: %{public}@, identifier: %{public}@", &v18, 0x2Au);
  }

  v15 = [objc_opt_class() bundleIDFromTopic:topicCopy];
  bundleIDToClient = [(WCDPushKitManager *)self bundleIDToClient];
  v17 = [bundleIDToClient objectForKeyedSubscript:v15];

  [v17 deliverToken:tokenCopy];
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  v8 = wc_pushkit_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543618;
    v18 = connectionCopy;
    v19 = 2114;
    v20 = messageCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connection: %{public}@, message: %{public}@", &v17, 0x16u);
  }

  topic = [messageCopy topic];
  userInfo = [messageCopy userInfo];
  v11 = [objc_opt_class() bundleIDFromTopic:topic];
  v12 = wc_pushkit_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543618;
    v18 = topic;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "topic: %{public}@ bundleID: %{public}@", &v17, 0x16u);
  }

  bundleIDToClient = [(WCDPushKitManager *)self bundleIDToClient];
  v14 = [bundleIDToClient objectForKeyedSubscript:v11];

  if (!v14)
  {
    v14 = [[WCDPKClient alloc] initWithBundleID:v11];
    [(WCDPKClient *)v14 setDelegate:self];
    bundleIDToClient2 = [(WCDPushKitManager *)self bundleIDToClient];
    [bundleIDToClient2 setObject:v14 forKeyedSubscript:v11];
  }

  [(WCDPKClient *)v14 deliverPayload:userInfo];
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

- (void)releaseAssertionForBundleID:(id)d
{
  dCopy = d;
  v5 = wc_pushkit_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
  }

  bundleIDToClient = [(WCDPushKitManager *)self bundleIDToClient];
  v7 = [bundleIDToClient objectForKeyedSubscript:dCopy];

  [(WCDPushKitManager *)self releaseAssertionForClient:v7];
}

- (void)launchClient:(id)client
{
  clientCopy = client;
  bundleID = [clientCopy bundleID];
  v5 = wc_pushkit_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = bundleID;
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
  v9 = bundleID;
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
    objc_initWeak(v35, clientCopy);
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_100028EDC;
    v27 = &unk_100049448;
    v15 = v9;
    v28 = v15;
    objc_copyWeak(&v29, v35);
    v16 = objc_retainBlock(&v24);
    [clientCopy setAssertionInvalidationHandler:{v16, v24, v25, v26, v27}];
    v17 = [RBSAssertion alloc];
    v18 = [RBSProcessIdentity identityForEmbeddedApplicationIdentifier:v15];
    v19 = [RBSTarget targetWithProcessIdentity:v18];
    v20 = [RBSDomainAttribute attributeWithDomain:@"com.apple.watchconnectivity" name:@"BackgroundDownload"];
    v34 = v20;
    v21 = [NSArray arrayWithObjects:&v34 count:1];
    v22 = [v17 initWithExplanation:v13 target:v19 attributes:v21];
    [clientCopy setAssertion:v22];

    assertion = [clientCopy assertion];
    [assertion acquireWithInvalidationHandler:v16];

    objc_destroyWeak(&v29);
    objc_destroyWeak(v35);
  }

  _Block_object_dispose(&buf, 8);
}

- (void)releaseAssertionForClient:(id)client
{
  clientCopy = client;
  assertion = [clientCopy assertion];

  if (assertion)
  {
    v5 = wc_pushkit_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = clientCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "invalidating assertion for client %{public}@", &v8, 0xCu);
    }

    assertion2 = [clientCopy assertion];
    assertionInvalidationHandler = [clientCopy assertionInvalidationHandler];
    (assertionInvalidationHandler)[2](assertionInvalidationHandler, assertion2, 0);
    [assertion2 invalidate];
  }
}

+ (id)bundleIDFromTopic:(id)topic
{
  topicCopy = topic;
  v4 = [topicCopy substringWithRange:{0, objc_msgSend(topicCopy, "length") + ~objc_msgSend(@"complication", "length")}];

  return v4;
}

+ (id)bundleIDsFromTopics:(id)topics
{
  topicsCopy = topics;
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [topicsCopy count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = topicsCopy;
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

        v11 = [self bundleIDFromTopic:{*(*(&v13 + 1) + 8 * i), v13}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)topicsFromBundleIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [dsCopy count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = dsCopy;
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

        v11 = [self topicFromBundleId:{*(*(&v13 + 1) + 8 * i), v13}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

@end