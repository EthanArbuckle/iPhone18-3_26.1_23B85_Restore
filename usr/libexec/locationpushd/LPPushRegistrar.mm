@interface LPPushRegistrar
+ (id)bundleIdFromTopic:(id)topic;
+ (id)sharedInstance;
- (BOOL)_setTopicEnabled:(BOOL)enabled forConnection:(id)connection appBundleIdentifier:(id)identifier;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (LPPushRegistrar)init;
- (id)_apsConnectionForEnvironment:(id)environment;
- (id)_findOrCreateApplicationWithBundleIdentifier:(id)identifier;
- (id)_topicsForWhichInstalledAppIsNotPresentWithAPNSDevelopmentEnvironment:(id)environment;
- (void)_addOrMoveTopic:(id)topic forConnection:(id)connection toList:(unint64_t)list;
- (void)_invalidateTokenForTopic:(id)topic fromConnection:(id)connection;
- (void)_removeTopic:(id)topic forConnection:(id)connection;
- (void)_removeUnneededSandboxTopicsFromDevelopmentConnection;
- (void)_unregisterLocationPushApplication:(id)application;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)connectionDidReconnect:(id)reconnect;
- (void)handleApplicationUninstalledNotification:(id)notification;
- (void)registerForPushToken:(id)token completion:(id)completion;
- (void)setLocationPushesActive:(BOOL)active forAppBundleIdentifier:(id)identifier completion:(id)completion;
@end

@implementation LPPushRegistrar

+ (id)sharedInstance
{
  if (qword_100010C08 != -1)
  {
    sub_1000050F4();
  }

  v3 = qword_100010C10;

  return v3;
}

- (LPPushRegistrar)init
{
  v26.receiver = self;
  v26.super_class = LPPushRegistrar;
  v2 = [(LPPushRegistrar *)&v26 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.locationpushd", 0);
    apsdQueue = v2->_apsdQueue;
    v2->_apsdQueue = v3;

    v5 = dispatch_queue_create("com.apple.locationpushd.ivar", 0);
    dictionaryMutationQueue = v2->_dictionaryMutationQueue;
    v2->_dictionaryMutationQueue = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    bundleIdentifierToApplication = v2->_bundleIdentifierToApplication;
    v2->_bundleIdentifierToApplication = v7;

    apsdQueue = [(LPPushRegistrar *)v2 apsdQueue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100002AE4;
    handler[3] = &unk_10000C468;
    v10 = v2;
    v25 = v10;
    xpc_set_event_stream_handler("com.apple.distnoted.matching", apsdQueue, handler);

    v11 = [APSConnection alloc];
    v12 = APSEnvironmentProduction;
    apsdQueue2 = [v10 apsdQueue];
    v14 = [v11 initWithEnvironmentName:v12 namedDelegatePort:@"com.apple.aps.locationpushd.production" queue:apsdQueue2];
    v15 = v10[2];
    v10[2] = v14;

    [v10[2] setDelegate:v10];
    v16 = [APSConnection alloc];
    v17 = APSEnvironmentDevelopment;
    apsdQueue3 = [v10 apsdQueue];
    v19 = [v16 initWithEnvironmentName:v17 namedDelegatePort:@"com.apple.aps.locationpushd.development" queue:apsdQueue3];
    v20 = v10[3];
    v10[3] = v19;

    [v10[3] setDelegate:v10];
    v21 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.locationpushd.pushregistration"];
    v22 = v10[1];
    v10[1] = v21;

    [v10[1] setDelegate:v10];
    [v10[1] resume];
  }

  return v2;
}

- (id)_topicsForWhichInstalledAppIsNotPresentWithAPNSDevelopmentEnvironment:(id)environment
{
  environmentCopy = environment;
  v17 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = environmentCopy;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v7 = APSEnvironmentDevelopment;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [objc_opt_class() bundleIdFromTopic:v9];
        v11 = [LSApplicationRecord alloc];
        v19 = 0;
        v12 = [v11 initWithBundleIdentifier:v10 allowPlaceholder:1 error:&v19];
        v13 = v19;
        entitlements = [v12 entitlements];
        v15 = [entitlements objectForKey:@"aps-environment" ofClass:objc_opt_class()];
        if (([v15 isEqualToString:v7] & 1) == 0)
        {
          [v17 addObject:v9];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  return v17;
}

- (void)_removeUnneededSandboxTopicsFromDevelopmentConnection
{
  v3 = objc_alloc_init(NSMutableArray);
  opportunisticTopics = [self->_developmentAPSConnection opportunisticTopics];
  ignoredTopics = [self->_developmentAPSConnection ignoredTopics];
  v6 = [(LPPushRegistrar *)self _topicsForWhichInstalledAppIsNotPresentWithAPNSDevelopmentEnvironment:opportunisticTopics];
  [v3 addObjectsFromArray:v6];

  v7 = [(LPPushRegistrar *)self _topicsForWhichInstalledAppIsNotPresentWithAPNSDevelopmentEnvironment:ignoredTopics];
  [v3 addObjectsFromArray:v7];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (qword_100010A78 != -1)
        {
          sub_10000511C();
        }

        v14 = qword_100010A80;
        if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v20 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removing topic from sandbox environment %{public}@", buf, 0xCu);
        }

        [(LPPushRegistrar *)self _removeTopic:v13 forConnection:self->_developmentAPSConnection];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v10);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LPPushTokenServerProtocol];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  v7 = [connectionCopy valueForEntitlement:@"com.apple.private.locationpushd.pushtokenregistration"];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    [connectionCopy resume];
  }

  else
  {
    [connectionCopy invalidate];
  }

  return bOOLValue;
}

- (void)connectionDidReconnect:(id)reconnect
{
  reconnectCopy = reconnect;
  if (qword_100010A78 != -1)
  {
    sub_100005108();
  }

  v5 = qword_100010A80;
  if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = reconnectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "APSConnection: %{public}@ did reconnect", &v6, 0xCu);
  }

  [(LPPushRegistrar *)self _removeUnneededSandboxTopicsFromDevelopmentConnection];
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  if (qword_100010A78 != -1)
  {
    sub_100005108();
  }

  v7 = qword_100010A80;
  if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138543362;
    v9 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "APSConnection: %{public}@ did receive publicToken", &v8, 0xCu);
  }
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  connectionCopy = connection;
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  if (qword_100010A78 != -1)
  {
    sub_100005108();
  }

  v14 = qword_100010A80;
  if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138544130;
    v20 = connectionCopy;
    v21 = 2114;
    v22 = tokenCopy;
    v23 = 2114;
    v24 = topicCopy;
    v25 = 2114;
    v26 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "for connection: %{public}@ token: %{public}@ topic: %{public}@ identifier: %{public}@", &v19, 0x2Au);
  }

  v15 = [objc_opt_class() bundleIdFromTopic:topicCopy];
  v16 = [(LPPushRegistrar *)self _findOrCreateApplicationWithBundleIdentifier:v15];
  v17 = v16;
  if (v16)
  {
    [v16 deliverToken:tokenCopy];
  }

  else
  {
    if (qword_100010A78 != -1)
    {
      sub_10000511C();
    }

    v18 = qword_100010A80;
    if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Could not find installed app for %{public}@, maybe it was offloaded?", &v19, 0xCu);
    }
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  topic = [messageCopy topic];
  userInfo = [messageCopy userInfo];

  v8 = [objc_opt_class() bundleIdFromTopic:topic];
  if (qword_100010A78 != -1)
  {
    sub_100005108();
  }

  v9 = qword_100010A80;
  if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138543875;
    v18 = topic;
    v19 = 2114;
    *v20 = v8;
    *&v20[8] = 2113;
    v21 = userInfo;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Incoming message has topic: %{public}@ bundleID: %{public}@ userInfo %{private}@", &v17, 0x20u);
  }

  v10 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v8 allowPlaceholder:1 error:0];
  if ([v10 isPlaceholder])
  {
    if (qword_100010A78 != -1)
    {
      sub_10000511C();
    }

    v11 = qword_100010A80;
    if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543362;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Dropping push on the floor because it seems like the app is in the midst of updating or has been offloaded. bundleID: %{public}@", &v17, 0xCu);
    }
  }

  else
  {
    v12 = [(LPPushRegistrar *)self _findOrCreateApplicationWithBundleIdentifier:v8];
    hasLocationPushEntitlement = [v12 hasLocationPushEntitlement];
    hasLocationPushServiceExtension = [v12 hasLocationPushServiceExtension];
    v15 = hasLocationPushServiceExtension;
    if (hasLocationPushEntitlement && hasLocationPushServiceExtension)
    {
      [v12 deliverLocationPayloadToExtension:userInfo];
    }

    else
    {
      if (qword_100010A78 != -1)
      {
        sub_10000511C();
      }

      v16 = qword_100010A80;
      if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543874;
        v18 = topic;
        v19 = 1026;
        *v20 = hasLocationPushEntitlement;
        *&v20[4] = 1026;
        *&v20[6] = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Incoming message for %{public}@ caused push token deregistration because entitlement is %{public}d or extension is %{public}d", &v17, 0x18u);
      }

      [(LPPushRegistrar *)self _unregisterLocationPushApplication:v8];
    }
  }
}

- (id)_findOrCreateApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100003838;
  v16 = sub_100003848;
  v17 = 0;
  dictionaryMutationQueue = [(LPPushRegistrar *)self dictionaryMutationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003850;
  block[3] = &unk_10000C368;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(dictionaryMutationQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)registerForPushToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  if (qword_100010A78 != -1)
  {
    sub_100005108();
  }

  v8 = qword_100010A80;
  if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Asked to register bundle ID %{public}@ for location pushes", buf, 0xCu);
  }

  if (tokenCopy)
  {
    v9 = [(LPPushRegistrar *)self _findOrCreateApplicationWithBundleIdentifier:tokenCopy];
    v10 = v9;
    if (v9)
    {
      if ([v9 hasLocationPushEntitlement])
      {
        if ([v10 hasLocationPushServiceExtension])
        {
          apsEnvironment = [v10 apsEnvironment];
          if (apsEnvironment)
          {
            v12 = [(LPPushRegistrar *)self _apsConnectionForEnvironment:apsEnvironment];
            v13 = [objc_opt_class() topicFromBundleId:tokenCopy];
            [v10 addPendingTokenReply:completionCopy];
            apsdQueue = [(LPPushRegistrar *)self apsdQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100003E6C;
            block[3] = &unk_10000C390;
            block[4] = self;
            v15 = v12;
            v25 = v15;
            v26 = tokenCopy;
            dispatch_sync(apsdQueue, block);

            if (qword_100010A78 != -1)
            {
              sub_10000511C();
            }

            v16 = qword_100010A80;
            if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v28 = v13;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Requesting token for topic %@", buf, 0xCu);
            }

            [v15 requestTokenForTopic:v13 identifier:&stru_10000C690];
          }

          else
          {
            if (qword_100010A78 != -1)
            {
              sub_10000511C();
            }

            v23 = qword_100010A80;
            if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v28 = tokenCopy;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Ignoring registerBundleIdentifier: request because no valid aps-environment present for %@", buf, 0xCu);
            }

            v15 = [NSError errorWithDomain:CLLocationPushServiceErrorDomain code:2 userInfo:0];
            completionCopy[2](completionCopy, 0, v15);
          }

          goto LABEL_36;
        }

        if (qword_100010A78 != -1)
        {
          sub_10000511C();
        }

        v22 = qword_100010A80;
        if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v28 = tokenCopy;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Ignoring registerBundleIdentifier: request because no Location Push Service Extension present for %@", buf, 0xCu);
        }

        v19 = CLLocationPushServiceErrorDomain;
        v20 = 1;
      }

      else
      {
        if (qword_100010A78 != -1)
        {
          sub_10000511C();
        }

        v21 = qword_100010A80;
        if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v28 = tokenCopy;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Ignoring registerBundleIdentifier: request because location push entitlement is missing from  %{public}@", buf, 0xCu);
        }

        v19 = CLLocationPushServiceErrorDomain;
        v20 = 3;
      }
    }

    else
    {
      if (qword_100010A78 != -1)
      {
        sub_10000511C();
      }

      v18 = qword_100010A80;
      if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Ignoring registerBundleIdentifier: request because application is not valid", buf, 2u);
      }

      v19 = NSPOSIXErrorDomain;
      v20 = 22;
    }

    apsEnvironment = [NSError errorWithDomain:v19 code:v20 userInfo:0];
    completionCopy[2](completionCopy, 0, apsEnvironment);
LABEL_36:

    goto LABEL_37;
  }

  if (qword_100010A78 != -1)
  {
    sub_10000511C();
  }

  v17 = qword_100010A80;
  if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Ignoring registerBundleIdentifier: request because bundle identifier is nil", buf, 2u);
  }

  v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  completionCopy[2](completionCopy, 0, v10);
LABEL_37:
}

- (void)setLocationPushesActive:(BOOL)active forAppBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = [(LPPushRegistrar *)self _findOrCreateApplicationWithBundleIdentifier:identifierCopy];
  apsEnvironment = [v10 apsEnvironment];
  v12 = [(LPPushRegistrar *)self _apsConnectionForEnvironment:apsEnvironment];

  apsdQueue = [(LPPushRegistrar *)self apsdQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003FC0;
  block[3] = &unk_10000C490;
  v18 = v12;
  selfCopy = self;
  activeCopy = active;
  v20 = identifierCopy;
  v21 = completionCopy;
  v14 = completionCopy;
  v15 = identifierCopy;
  v16 = v12;
  dispatch_async(apsdQueue, block);
}

- (void)handleApplicationUninstalledNotification:(id)notification
{
  notificationCopy = notification;
  apsdQueue = [(LPPushRegistrar *)self apsdQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000040D0;
  v7[3] = &unk_10000C2F0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(apsdQueue, v7);
}

- (void)_unregisterLocationPushApplication:(id)application
{
  applicationCopy = application;
  if (qword_100010A78 != -1)
  {
    sub_100005108();
  }

  v5 = qword_100010A80;
  if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v17 = applicationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Unregistering application %{public}@ from Location Pushes", buf, 0xCu);
  }

  v6 = [objc_opt_class() topicFromBundleId:applicationCopy];
  v7 = [(LPPushRegistrar *)self _findOrCreateApplicationWithBundleIdentifier:applicationCopy];
  apsEnvironment = [v7 apsEnvironment];
  v9 = [(LPPushRegistrar *)self _apsConnectionForEnvironment:apsEnvironment];

  if (v9)
  {
    [(LPPushRegistrar *)self _invalidateTokenForTopic:v6 fromConnection:v9];
  }

  else
  {
    productionAPSConnection = [(LPPushRegistrar *)self productionAPSConnection];
    [(LPPushRegistrar *)self _invalidateTokenForTopic:v6 fromConnection:productionAPSConnection];

    developmentAPSConnection = [(LPPushRegistrar *)self developmentAPSConnection];
    [(LPPushRegistrar *)self _invalidateTokenForTopic:v6 fromConnection:developmentAPSConnection];
  }

  dictionaryMutationQueue = [(LPPushRegistrar *)self dictionaryMutationQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100004450;
  v14[3] = &unk_10000C2F0;
  v14[4] = self;
  v15 = applicationCopy;
  v13 = applicationCopy;
  dispatch_sync(dictionaryMutationQueue, v14);
}

- (void)_invalidateTokenForTopic:(id)topic fromConnection:(id)connection
{
  connectionCopy = connection;
  topicCopy = topic;
  [(LPPushRegistrar *)self _removeTopic:topicCopy forConnection:connectionCopy];
  [connectionCopy invalidateTokenForTopic:topicCopy identifier:&stru_10000C690];
}

- (void)_removeTopic:(id)topic forConnection:(id)connection
{
  connectionCopy = connection;
  topicCopy = topic;
  opportunisticTopics = [connectionCopy opportunisticTopics];
  v10 = [opportunisticTopics mutableCopy];

  [v10 removeObject:topicCopy];
  [connectionCopy _setOpportunisticTopics:v10];
  ignoredTopics = [connectionCopy ignoredTopics];
  v9 = [ignoredTopics mutableCopy];

  [v9 removeObject:topicCopy];
  [connectionCopy _setIgnoredTopics:v9];
}

- (void)_addOrMoveTopic:(id)topic forConnection:(id)connection toList:(unint64_t)list
{
  topicCopy = topic;
  connectionCopy = connection;
  opportunisticTopics = [connectionCopy opportunisticTopics];
  v10 = [opportunisticTopics containsObject:topicCopy];

  if (v10)
  {
    if (list == 1)
    {
      if (qword_100010A78 != -1)
      {
        sub_100005108();
      }

      v11 = qword_100010A80;
      if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 68289282;
        v35 = 2082;
        v36 = "";
        v37 = 2114;
        listCopy3 = topicCopy;
        v12 = "{msg%{public}.0s:Not adding to OpportunisticTopics since it's already an added topic, topic:%{public, location:escape_only}@}";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &v34, 0x1Cu);
        goto LABEL_42;
      }

      goto LABEL_42;
    }

    if (qword_100010A78 != -1)
    {
      sub_100005108();
    }

    v15 = qword_100010A80;
    if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 68289794;
      v35 = 2082;
      v36 = "";
      v37 = 2114;
      listCopy3 = topicCopy;
      v39 = 2114;
      v40 = connectionCopy;
      v41 = 2050;
      listCopy4 = list;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Moving topic from opportunisitic list connection, topic:%{public, location:escape_only}@, connection:%{public, location:escape_only}@, toList:%{public}lu}", &v34, 0x30u);
    }

    v16 = connectionCopy;
    v17 = topicCopy;
    v18 = 1;
LABEL_33:
    [v16 moveTopic:v17 fromList:v18 toList:list];
    goto LABEL_42;
  }

  ignoredTopics = [connectionCopy ignoredTopics];
  v14 = [ignoredTopics containsObject:topicCopy];

  if (!v14)
  {
    if (list == 2)
    {
      if (qword_100010A78 != -1)
      {
        sub_100005108();
      }

      v27 = qword_100010A80;
      if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 68289538;
        v35 = 2082;
        v36 = "";
        v37 = 2114;
        listCopy3 = topicCopy;
        v39 = 2114;
        v40 = connectionCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Adding topic to ignored list, topic:%{public, location:escape_only}@, connection:%{public, location:escape_only}@}", &v34, 0x26u);
      }

      v20 = objc_alloc_init(NSMutableSet);
      ignoredTopics2 = [connectionCopy ignoredTopics];
      v29 = ignoredTopics2;
      v30 = &__NSArray0__struct;
      if (ignoredTopics2)
      {
        v30 = ignoredTopics2;
      }

      v31 = v30;

      [v20 addObjectsFromArray:v31];
      [v20 addObject:topicCopy];
      allObjects = [v20 allObjects];
      [connectionCopy _setIgnoredTopics:allObjects];
    }

    else
    {
      if (list != 1)
      {
        if (qword_100010A78 != -1)
        {
          sub_100005108();
        }

        v32 = qword_100010A80;
        if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_FAULT))
        {
          v34 = 68289282;
          v35 = 2082;
          v36 = "";
          v37 = 2050;
          listCopy3 = list;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Not adding topic due to unknown list, toList:%{public}lu}", &v34, 0x1Cu);
        }

        if (qword_100010A78 != -1)
        {
          sub_10000511C();
        }

        v33 = qword_100010A80;
        if (os_signpost_enabled(qword_100010A80))
        {
          v34 = 68289282;
          v35 = 2082;
          v36 = "";
          v37 = 2050;
          listCopy3 = list;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Not adding topic due to unknown list", "{msg%{public}.0s:Not adding topic due to unknown list, toList:%{public}lu}", &v34, 0x1Cu);
        }

        goto LABEL_42;
      }

      if (qword_100010A78 != -1)
      {
        sub_100005108();
      }

      v19 = qword_100010A80;
      if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 68289538;
        v35 = 2082;
        v36 = "";
        v37 = 2114;
        listCopy3 = topicCopy;
        v39 = 2114;
        v40 = connectionCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Adding topic to opportunistic list, topic:%{public, location:escape_only}@, connection:%{public, location:escape_only}@}", &v34, 0x26u);
      }

      v20 = objc_alloc_init(NSMutableSet);
      opportunisticTopics2 = [connectionCopy opportunisticTopics];
      v22 = opportunisticTopics2;
      v23 = &__NSArray0__struct;
      if (opportunisticTopics2)
      {
        v23 = opportunisticTopics2;
      }

      v24 = v23;

      [v20 addObjectsFromArray:v24];
      [v20 addObject:topicCopy];
      allObjects = [v20 allObjects];
      [connectionCopy _setOpportunisticTopics:allObjects];
    }

    goto LABEL_42;
  }

  if (list != 2)
  {
    if (qword_100010A78 != -1)
    {
      sub_100005108();
    }

    v26 = qword_100010A80;
    if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 68289794;
      v35 = 2082;
      v36 = "";
      v37 = 2114;
      listCopy3 = topicCopy;
      v39 = 2114;
      v40 = connectionCopy;
      v41 = 2050;
      listCopy4 = list;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Moving topic from ignored list connection, topic:%{public, location:escape_only}@, connection:%{public, location:escape_only}@, toList:%{public}lu}", &v34, 0x30u);
    }

    v16 = connectionCopy;
    v17 = topicCopy;
    v18 = 2;
    goto LABEL_33;
  }

  if (qword_100010A78 != -1)
  {
    sub_100005108();
  }

  v11 = qword_100010A80;
  if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 68289282;
    v35 = 2082;
    v36 = "";
    v37 = 2114;
    listCopy3 = topicCopy;
    v12 = "{msg%{public}.0s:Not adding to IgnoredTopics since it's already an added topic, topic:%{public, location:escape_only}@}";
    goto LABEL_13;
  }

LABEL_42:
}

- (BOOL)_setTopicEnabled:(BOOL)enabled forConnection:(id)connection appBundleIdentifier:(id)identifier
{
  enabledCopy = enabled;
  connectionCopy = connection;
  identifierCopy = identifier;
  v10 = [objc_opt_class() topicFromBundleId:identifierCopy];
  v11 = [(LPPushRegistrar *)self _findOrCreateApplicationWithBundleIdentifier:identifierCopy];
  v12 = v11;
  if (v11)
  {
    if ([v11 hasLocationPushEntitlement])
    {
      if (enabledCopy)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      [(LPPushRegistrar *)self _addOrMoveTopic:v10 forConnection:connectionCopy toList:v13];
    }

    else
    {
      [(LPPushRegistrar *)self _removeTopic:v10 forConnection:connectionCopy];
    }
  }

  else
  {
    if (qword_100010A78 != -1)
    {
      sub_100005108();
    }

    v14 = qword_100010A80;
    if (os_log_type_enabled(qword_100010A80, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138543362;
      v17 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Ignoring setLocationPushesActive: request because application %{public}@ is not valid", &v16, 0xCu);
    }
  }

  return v12 != 0;
}

- (id)_apsConnectionForEnvironment:(id)environment
{
  environmentCopy = environment;
  if ([environmentCopy isEqualToString:APSEnvironmentProduction])
  {
    productionAPSConnection = [(LPPushRegistrar *)self productionAPSConnection];
LABEL_5:
    v6 = productionAPSConnection;
    goto LABEL_7;
  }

  if ([environmentCopy isEqualToString:APSEnvironmentDevelopment])
  {
    productionAPSConnection = [(LPPushRegistrar *)self developmentAPSConnection];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)bundleIdFromTopic:(id)topic
{
  topicCopy = topic;
  v4 = [topicCopy substringWithRange:{0, objc_msgSend(topicCopy, "length") + ~objc_msgSend(@"location-query", "length")}];

  return v4;
}

@end