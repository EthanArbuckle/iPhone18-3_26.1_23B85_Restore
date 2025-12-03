@interface NDSessionManager
+ (id)restoreOptionsFromArchivePath:(id)path;
- (BOOL)connection:(id)connection canUseSharedContainerIdentifier:(id)identifier;
- (NDSessionManager)initWithDelegate:(id)delegate bundleID:(id)d isSpringBoardApp:(BOOL)app forPersona:(id)persona dataSeparatedPath:(id)path db:(id)db;
- (NDSessionManagerDelegate)delegate;
- (NSXPCConnection)xpcConn;
- (id)copyAndSanitizeClientConfiguration:(id)configuration;
- (id)downloadDirectoryDataPath;
- (id)getSessionWithIdentifier:(id)identifier;
- (id)restoreState:(BOOL *)state;
- (void)archiveTimerFired;
- (void)boost;
- (void)cleanupWithCompletionHandler:(id)handler;
- (void)clientApplicationWasReinstalled;
- (void)createSessionWithConfiguration:(id)configuration clientProxy:(id)proxy cachesDirectory:(id)directory options:(id)options reply:(id)reply;
- (void)dealloc;
- (void)dropBoost;
- (void)failedSessionRestoreWithID:(id)d directoryToDelete:(id)delete;
- (void)getActiveSessionIdentifiersWithReply:(id)reply;
- (void)obliterate;
- (void)obliterateAllSessionsWithReply:(id)reply;
- (void)okayToSendPendingCallbacksForIdentifier:(id)identifier reply:(id)reply;
- (void)releaseAssertionForSession:(id)session reply:(id)reply;
- (void)sendPendingCallbacksForIdentifier:(id)identifier reply:(id)reply;
- (void)sessionCompleted:(id)completed withCompletionHandler:(id)handler;
- (void)setWorkState;
@end

@implementation NDSessionManager

- (void)archiveTimerFired
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001ED8;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)boost
{
  v3 = +[NSProcessInfo processInfo];
  v4 = [NSString stringWithFormat:@"Holding boost for %@", self->_clientBundleID];
  v5 = [v3 beginActivityWithOptions:0x80000000000 reason:v4];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000215C;
  block[3] = &unk_1000D6420;
  block[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);
}

- (void)setWorkState
{
  v2 = [(NSMutableDictionary *)self->_sessions count]!= 0;

  [NDFileUtilities setDaemonWorkState:v2];
}

- (NDSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSXPCConnection)xpcConn
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConn);

  return WeakRetained;
}

- (void)obliterate
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    clientBundleID = self->_clientBundleID;
    *buf = 138412290;
    v8 = clientBundleID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Obliterating session manager for bundle ID: %@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021448;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)clientApplicationWasReinstalled
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002152C;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)getSessionWithIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:identifier];

  return v3;
}

- (void)sessionCompleted:(id)completed withCompletionHandler:(id)handler
{
  completedCopy = completed;
  handlerCopy = handler;
  sessions = self->_sessions;
  identifier = [completedCopy identifier];
  v10 = [(NSMutableDictionary *)sessions objectForKeyedSubscript:identifier];

  if (v10 != completedCopy)
  {
    if (!handlerCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [completedCopy uuid];
    clientBundleID = [completedCopy clientBundleID];
    identifier2 = [completedCopy identifier];
    v17 = 138543874;
    v18 = uuid;
    v19 = 2112;
    v20 = clientBundleID;
    v21 = 2112;
    v22 = identifier2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@>.<%@>.<%@>: removing session", &v17, 0x20u);
  }

  v15 = self->_sessions;
  identifier3 = [completedCopy identifier];
  [(NSMutableDictionary *)v15 removeObjectForKey:identifier3];

  if (![(NSMutableDictionary *)self->_sessions count])
  {
    [(NDSessionManager *)self cleanupWithCompletionHandler:handlerCopy];
    goto LABEL_11;
  }

  if (handlerCopy)
  {
    [(NDSessionManager *)self setWorkState];
LABEL_9:
    handlerCopy[2](handlerCopy);
  }

LABEL_11:
}

- (void)cleanupWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [NDFileUtilities removeItemAtURL:self->_bundleDirectory];
  [(NDTaskStorageDB *)self->_sessionTasksDB _deleteAllSessionsForBundleID:self->_clientBundleID];
  [(NDSessionManager *)self dropBoost];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  clientBundleID = self->_clientBundleID;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002189C;
  v8[3] = &unk_1000D52E8;
  v7 = handlerCopy;
  v8[4] = self;
  v9 = v7;
  [WeakRetained managerBecameEmpty:self bundleID:clientBundleID withCompletionHandler:v8];
}

- (void)obliterateAllSessionsWithReply:(id)reply
{
  replyCopy = reply;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    clientBundleID = self->_clientBundleID;
    v7 = 138412290;
    v8 = clientBundleID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "obliterateAllSessions for bundleID %@", &v7, 0xCu);
  }

  if ([(NSMutableDictionary *)self->_sessions count])
  {
    [(NDSessionManager *)self setObliterationCompletion:replyCopy];
    [(NSMutableDictionary *)self->_sessions enumerateKeysAndObjectsUsingBlock:&stru_1000D52C0];
  }

  else
  {
    [(NDSessionManager *)self cleanupWithCompletionHandler:replyCopy];
  }
}

- (void)getActiveSessionIdentifiersWithReply:(id)reply
{
  replyCopy = reply;
  allKeys = [(NSMutableDictionary *)self->_sessions allKeys];
  replyCopy[2](replyCopy, allKeys);

  if (![(NSMutableDictionary *)self->_sessions count])
  {
    [(NDSessionManager *)self cleanupWithCompletionHandler:0];
  }
}

- (void)okayToSendPendingCallbacksForIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:identifierCopy];
  v9 = qword_1000EB210;
  if (v8)
  {
    v10 = qword_1000EB210;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [v8 uuid];
      clientBundleID = [v8 clientBundleID];
      identifier = [v8 identifier];
      v14 = 138543874;
      v15 = uuid;
      v16 = 2112;
      v17 = clientBundleID;
      v18 = 2112;
      v19 = identifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@>.<%@>.<%@>: notified it is OK to send pending callbacks", &v14, 0x20u);
    }

    [v8 allowReconnect];
  }

  else if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = identifierCopy;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Signalled that it is okay to send pending callbacks for session %@ that we have no record of. This shouldn't happen", &v14, 0xCu);
  }

  replyCopy[2](replyCopy);
}

- (void)releaseAssertionForSession:(id)session reply:(id)reply
{
  sessionCopy = session;
  replyCopy = reply;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "releaseAssertionForSession: %@", &v10, 0xCu);
  }

  v9 = +[NDSpringBoard sharedSpringBoard];
  [v9 releaseAssertionForBundleID:self->_clientBundleID sessionID:sessionCopy];

  replyCopy[2](replyCopy);
}

- (void)sendPendingCallbacksForIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  v8 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:identifierCopy];
  v9 = qword_1000EB210;
  if (v8)
  {
    v10 = qword_1000EB210;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [v8 uuid];
      clientBundleID = [v8 clientBundleID];
      identifier = [v8 identifier];
      *buf = 138543874;
      v19 = uuid;
      v20 = 2112;
      v21 = clientBundleID;
      v22 = 2112;
      v23 = identifier;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@>.<%@>.<%@>: instructed to send pending callbacks", buf, 0x20u);
    }

    v14 = [(NSMutableDictionary *)self->_reconnectingProxies objectForKeyedSubscript:identifierCopy];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000220E0;
    v16[3] = &unk_1000D5F30;
    v17 = replyCopy;
    [v8 reconnectClient:v14 withCompletion:v16];

    v15 = +[NDChronoKitLauncher sharedLauncher];
    [v15 removePendingLaunchForBundleID:self->_clientBundleID sessionID:identifierCopy];

    [(NSMutableDictionary *)self->_reconnectingProxies removeObjectForKey:identifierCopy];
  }

  else if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = identifierCopy;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Asked to send pending callbacks for session %@ that we have no record of. This shouldn't happen", buf, 0xCu);
  }
}

- (void)createSessionWithConfiguration:(id)configuration clientProxy:(id)proxy cachesDirectory:(id)directory options:(id)options reply:(id)reply
{
  configurationCopy = configuration;
  proxyCopy = proxy;
  optionsCopy = options;
  replyCopy = reply;
  v12 = [(NDSessionManager *)self copyAndSanitizeClientConfiguration:configurationCopy];
  if (![configurationCopy _supportsAVAssetDownloads] || (objc_msgSend(v12, "_supportsAVAssetDownloads") & 1) != 0)
  {
    v81 = +[NSXPCConnection currentConnection];
    _xpcConnection = [v81 _xpcConnection];
    is_extension = xpc_connection_is_extension();

    if (is_extension)
    {
      v15 = [[LSApplicationExtensionRecord alloc] initWithBundleIdentifier:self->_clientBundleID error:0];
      v16 = sub_1000093C4(v15);
    }

    else
    {
      v16 = 0;
    }

    v80 = [optionsCopy mutableCopy];
    sessions = self->_sessions;
    identifier = [v12 identifier];
    v19 = [(NSMutableDictionary *)sessions objectForKeyedSubscript:identifier];
    hasConnectedClient = [v19 hasConnectedClient];

    if (hasConnectedClient)
    {
      v21 = qword_1000EB210;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->_sessions;
        identifier2 = [v12 identifier];
        v24 = [(NSMutableDictionary *)v22 objectForKeyedSubscript:identifier2];
        uuid = [v24 uuid];
        clientBundleID = self->_clientBundleID;
        identifier3 = [v12 identifier];
        *buf = 138543874;
        v94 = uuid;
        v95 = 2112;
        v96 = clientBundleID;
        v97 = 2112;
        v98 = identifier3;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@>.<%@>.<%@>: already has a connected client, returning nil proxy object to client", buf, 0x20u);
      }

      v28 = [NSURLError _web_errorWithDomain:NSURLErrorDomain code:-996 URL:0];
      v91 = @"kNSURLSessionImmediateInvalidationErrorKey";
      v92 = v28;
      v29 = [NSDictionary dictionaryWithObjects:&v92 forKeys:&v91 count:1];
      (*(replyCopy + 2))(replyCopy, 0, v29, 0);
LABEL_10:

      v30 = 0;
      v31 = 0;
      v32 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v33 = self->_sessions;
    identifier4 = [v12 identifier];
    v35 = [(NSMutableDictionary *)v33 objectForKeyedSubscript:identifier4];

    if (v35)
    {
      if (((is_extension ^ 1 | v16) & 1) == 0)
      {
        v36 = self->_sessions;
        identifier5 = [v12 identifier];
        v38 = [(NSMutableDictionary *)v36 objectForKeyedSubscript:identifier5];
        sharedContainerIdentifier = [v38 sharedContainerIdentifier];
        v40 = [(NDSessionManager *)self connection:v81 canUseSharedContainerIdentifier:sharedContainerIdentifier];

        if ((v40 & 1) == 0)
        {
          v59 = qword_1000EB210;
          if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Connected client is an extension is attempting to a connect to a session without a valid shared data container", buf, 2u);
          }

          v28 = [NSURLError _web_errorWithDomain:NSURLErrorDomain code:-995 URL:0];
          v89 = @"kNSURLSessionImmediateInvalidationErrorKey";
          v90 = v28;
          v29 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
          (*(replyCopy + 2))(replyCopy, 0, v29, 0);
          goto LABEL_10;
        }
      }

      v41 = self->_sessions;
      identifier6 = [v12 identifier];
      v31 = [(NSMutableDictionary *)v41 objectForKeyedSubscript:identifier6];

      v43 = qword_1000EB210;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        uuid2 = [v31 uuid];
        v45 = self->_clientBundleID;
        identifier7 = [v12 identifier];
        *buf = 138543874;
        v94 = uuid2;
        v95 = 2112;
        v96 = v45;
        v97 = 2112;
        v98 = identifier7;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@>.<%@>.<%@>: reconnecting existing session", buf, 0x20u);
      }

      [v31 updateOptions:optionsCopy];
      getTasksForReconnection = [v31 getTasksForReconnection];
      uuid3 = [v31 uuid];
      getTLSSessionCachePrefix = [v31 getTLSSessionCachePrefix];
      v87[0] = @"NDBackgroundSessionManagerRestoredStateKeyTasks";
      v87[1] = @"NDBackgroundSessionManagerKeySessionUUID";
      v88[0] = getTasksForReconnection;
      v88[1] = uuid3;
      v87[2] = @"NDBackgroundSessionManagerRestoredStateKeyTLSSessionCachePrefix";
      v88[2] = getTLSSessionCachePrefix;
      v30 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:3];
      reconnectingProxies = self->_reconnectingProxies;
      identifier8 = [v12 identifier];
      [(NSMutableDictionary *)reconnectingProxies setObject:proxyCopy forKeyedSubscript:identifier8];

      identifier9 = [v12 identifier];
      v32 = [NDFileUtilities sessionPath:identifier9 forBundleID:self->_clientBundleID];

      v53 = 0;
    }

    else
    {
      if (((is_extension ^ 1 | v16) & 1) == 0)
      {
        sharedContainerIdentifier2 = [v12 sharedContainerIdentifier];

        if (!sharedContainerIdentifier2)
        {
          v77 = qword_1000EB210;
          if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "Connected client is an extension and did not specify a valid shared container identifier", buf, 2u);
          }

          v28 = [NSURLError _web_errorWithDomain:NSURLErrorDomain code:-995 URL:0];
          v85 = @"kNSURLSessionImmediateInvalidationErrorKey";
          v86 = v28;
          v29 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
          (*(replyCopy + 2))(replyCopy, 0, v29, 0);
          goto LABEL_10;
        }
      }

      v55 = qword_1000EB210;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        identifier10 = [v12 identifier];
        v57 = self->_clientBundleID;
        *buf = 138412546;
        v94 = identifier10;
        v95 = 2112;
        v96 = v57;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Creating session with identifier: %@ for bundle id: %@", buf, 0x16u);
      }

      if ([v12 _supportsAVAssetDownloads])
      {
        v58 = off_1000D4878;
      }

      else
      {
        usesClassicLoadingMode = [v12 usesClassicLoadingMode];
        v58 = off_1000D4888;
        if (usesClassicLoadingMode)
        {
          v58 = off_1000D4880;
        }
      }

      v61 = *v58;
      v62 = objc_alloc(objc_opt_class());
      queue = self->_queue;
      v31 = [v62 initWithConfiguration:v12 bundleID:self->_clientBundleID isSpringBoardApp:self->_isSpringBoardApp downloadDirectory:0 options:v80 clientProxy:proxyCopy delegate:self workQueue:queue db:self->_sessionTasksDB];
      v64 = qword_1000EB210;
      getTasksForReconnection = v64;
      if (v31)
      {
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          uuid4 = [v31 uuid];
          v66 = self->_clientBundleID;
          identifier11 = [v12 identifier];
          *buf = 138543874;
          v94 = uuid4;
          v95 = 2112;
          v96 = v66;
          v97 = 2112;
          v98 = identifier11;
          _os_log_impl(&_mh_execute_header, getTasksForReconnection, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@>.<%@>.<%@>: created successfully", buf, 0x20u);
        }

        v68 = self->_sessions;
        getTasksForReconnection = [v12 identifier];
        [(NSMutableDictionary *)v68 setObject:v31 forKeyedSubscript:getTasksForReconnection];
        v30 = 0;
        v32 = 0;
        v53 = 1;
      }

      else
      {
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          identifier12 = [v12 identifier];
          v79 = self->_clientBundleID;
          *buf = 138412546;
          v94 = identifier12;
          v95 = 2112;
          v96 = v79;
          _os_log_error_impl(&_mh_execute_header, getTasksForReconnection, OS_LOG_TYPE_ERROR, "Coudn't create session with identifier: %@ for bundle id: %@", buf, 0x16u);
        }

        v30 = 0;
        v31 = 0;
        v53 = 0;
        v32 = 0;
      }
    }

    [v31 setXPCConnection:v81];
    xpcProtocol = [v31 xpcProtocol];
    v70 = +[Daemon sharedDaemon];
    (*(replyCopy + 2))(replyCopy, xpcProtocol, v30, [v70 isPrivileged]);

    if (v32)
    {
      sessionTasksDB = self->_sessionTasksDB;
      clientBundleID = [v31 clientBundleID];
      identifier13 = [v31 identifier];
      [(NDTaskStorageDB *)sessionTasksDB _updateConfigurationForBundleID:clientBundleID sessionID:identifier13 with:v12];

      v74 = self->_sessionTasksDB;
      clientBundleID2 = [v31 clientBundleID];
      identifier14 = [v31 identifier];
      [(NDTaskStorageDB *)v74 _updateOptionsForBundleID:clientBundleID2 sessionID:identifier14 with:v80];
    }

    if (v53)
    {
      [(NDSessionManager *)self setWorkState];
    }

    goto LABEL_40;
  }

  (*(replyCopy + 2))(replyCopy, 0, &off_1000D8A70, 0);
LABEL_41:
}

- (BOOL)connection:(id)connection canUseSharedContainerIdentifier:(id)identifier
{
  connectionCopy = connection;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v8 = [connectionCopy valueForEntitlement:@"com.apple.security.application-groups"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 containsObject:identifierCopy])
    {
      v9 = 1;
    }

    else
    {
      v10 = qword_1000EB210;
      v9 = 0;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
      {
        clientBundleID = self->_clientBundleID;
        v13 = 138412802;
        v14 = identifierCopy;
        v15 = 2112;
        v16 = clientBundleID;
        v17 = 1024;
        v18 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Client specified shared container identifier %@. %@ can access: %d", &v13, 0x1Cu);
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyAndSanitizeClientConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [configurationCopy copy];
  sharedContainerIdentifier = [v6 sharedContainerIdentifier];
  if (sharedContainerIdentifier)
  {
    sharedContainerIdentifier2 = [v6 sharedContainerIdentifier];
    v9 = [(NDSessionManager *)self connection:v5 canUseSharedContainerIdentifier:sharedContainerIdentifier2];

    if ((v9 & 1) == 0)
    {
      [v6 setSharedContainerIdentifier:0];
      v10 = qword_1000EB210;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        clientBundleID = self->_clientBundleID;
        sharedContainerIdentifier3 = [v6 sharedContainerIdentifier];
        *buf = 138412546;
        *&buf[4] = clientBundleID;
        *&buf[12] = 2112;
        *&buf[14] = sharedContainerIdentifier3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Client %@ tried to specify a shared container that it cannot access: %@", buf, 0x16u);
      }
    }
  }

  _sourceApplicationBundleIdentifier = [v6 _sourceApplicationBundleIdentifier];
  if (_sourceApplicationBundleIdentifier)
  {
    v14 = sub_100008D00(v5, @"com.apple.private.nsurlsession.impersonate");

    if ((v14 & 1) == 0)
    {
      [v6 set_sourceApplicationBundleIdentifier:0];
      v15 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = @"com.apple.private.nsurlsession.impersonate";
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Client tried to set _sourceApplicationBundleIdentifier but is missing the %@ entitlement", buf, 0xCu);
      }
    }
  }

  _sourceApplicationSecondaryIdentifier = [v6 _sourceApplicationSecondaryIdentifier];
  if (_sourceApplicationSecondaryIdentifier)
  {
    v17 = sub_100008D00(v5, @"com.apple.private.nsurlsession.impersonate");

    if ((v17 & 1) == 0)
    {
      [v6 set_sourceApplicationSecondaryIdentifier:0];
      v18 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = @"com.apple.private.nsurlsession.impersonate";
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Client tried to set _sourceApplicationSecondaryIdentifier but is missing the %@ entitlement", buf, 0xCu);
      }
    }
  }

  _sourceApplicationAuditTokenData = [v6 _sourceApplicationAuditTokenData];
  if (_sourceApplicationAuditTokenData)
  {
    v20 = sub_100008D00(v5, @"com.apple.private.nsurlsession.impersonate");

    if ((v20 & 1) == 0)
    {
      [v6 set_sourceApplicationAuditTokenData:0];
      v21 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = @"com.apple.private.nsurlsession.impersonate";
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Client tried to set _sourceApplicationAuditTokenData but is missing the %@ entitlement", buf, 0xCu);
      }
    }
  }

  [v6 set_attributedBundleIdentifier:0];
  if ([v6 _respectsAllowsCellularAccessForDiscretionaryTasks])
  {
    if ((sub_100008D00(v5, @"com.apple.private.nsurlsession.allow-discretionary-cellular") & 1) == 0)
    {
      [v6 set_respectsAllowsCellularAccessForDiscretionaryTasks:0];
      v22 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = @"com.apple.private.nsurlsession.allow-discretionary-cellular";
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Client tried to set _respectsAllowsCellularAccessForDiscretionaryTasks but is missing the %@ entitlement", buf, 0xCu);
      }
    }
  }

  if ([v6 _allowsPowerNapScheduling])
  {
    if ((sub_100008D00(v5, @"com.apple.private.dark-wake-network-reachability") & 1) == 0)
    {
      [v6 set_allowsPowerNapScheduling:0];
      v23 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = @"com.apple.private.dark-wake-network-reachability";
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Client tried to set _allowsPowerNapScheduling but is missing the %@ entitlement", buf, 0xCu);
      }
    }
  }

  _connectionPoolName = [v6 _connectionPoolName];
  if (_connectionPoolName)
  {
    v25 = sub_100008D00(v5, @"com.apple.private.nsurlsession-allow-override-connection-pool");

    if ((v25 & 1) == 0)
    {
      [v6 set_connectionPoolName:0];
      v26 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = @"com.apple.private.nsurlsession-allow-override-connection-pool";
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Client tried to set _connectionPoolName but is missing the %@ entitlement", buf, 0xCu);
      }
    }
  }

  _directoryForDownloadedFiles = [v6 _directoryForDownloadedFiles];
  if (_directoryForDownloadedFiles)
  {
    v28 = +[Daemon sharedDaemon];
    isPrivileged = [v28 isPrivileged];

    if ((isPrivileged & 1) == 0)
    {
      _directoryForDownloadedFiles2 = [v6 _directoryForDownloadedFiles];
      if (v5)
      {
        [v5 auditToken];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      v31 = [NDFileUtilities safeDirectoryForDownloads:_directoryForDownloadedFiles2 auditToken:buf];
      [v6 set_directoryForDownloadedFiles:v31];

      _directoryForDownloadedFiles3 = [v6 _directoryForDownloadedFiles];
      v33 = _directoryForDownloadedFiles3 == 0;

      if (v33)
      {
        v34 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Client tried to set _directoryForDownloadedFiles but does not have access to directory", buf, 2u);
        }
      }
    }
  }

  if ([v6 _duetPreauthorized])
  {
    if ((sub_100008D00(v5, @"com.apple.private.nsurlsession.allow-duet-preauthorization") & 1) == 0)
    {
      [v6 set_duetPreauthorized:0];
      v35 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = @"com.apple.private.nsurlsession.allow-duet-preauthorization";
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Client tried to set _duetPreauthorized but is missing the %@ entitlement", buf, 0xCu);
      }
    }
  }

  _maximumWatchCellularTransferSize = [v6 _maximumWatchCellularTransferSize];
  if (_maximumWatchCellularTransferSize)
  {
    v37 = sub_100008D00(v5, @"com.apple.private.nsurlsession.set-max-watch-cell-transfer-size");

    if ((v37 & 1) == 0)
    {
      [v6 set_maximumWatchCellularTransferSize:0];
      v38 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Client tried to set _maximumWatchCellularTransferSize but is missing the necessary entitlement", buf, 2u);
      }
    }
  }

  if ((sub_100008D00(v5, @"get-task-allow") & 1) != 0 || (sub_100008D00(v5, @"com.apple.security.get-task-allow") & 1) != 0 || os_variant_allows_internal_security_policies())
  {
    processIdentifier = [v5 processIdentifier];
  }

  else
  {
    processIdentifier = 0;
  }

  [v6 set_pidForHAR:processIdentifier];
  v41 = 0u;
  v42 = 0u;
  if (v5)
  {
    [v5 auditToken];
  }

  *buf = 0;
  *&buf[16] = 0u;
  v44 = 0;
  *&buf[8] = &v41;
  [v6 set_neTrackerTCCResult:ne_tracker_check_tcc()];

  return v6;
}

- (void)dropBoost
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000237BC;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)restoreState:(BOOL *)state
{
  v4 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    clientBundleID = self->_clientBundleID;
    *buf = 138412290;
    v77 = *&clientBundleID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "restoreState: %@", buf, 0xCu);
  }

  v69 = +[NSFileManager defaultManager];
  obj = [(NDTaskStorageDB *)self->_sessionTasksDB _getAllSessionIDsForBundle:self->_clientBundleID];
  if ([obj count] >= 0x401)
  {
    v6 = qword_1000EB210;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v58 = self->_clientBundleID;
      v59 = [obj count];
      *buf = 138543618;
      v77 = *&v58;
      v78 = 2048;
      v79 = v59;
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Too many sessions for app <%{public}@> (%zu > 1024)", buf, 0x16u);
    }

    v7 = [obj subarrayWithRange:{0, 1024}];

    obj = v7;
  }

  v66 = +[NSMutableArray array];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obja = obj;
  v8 = [obja countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (!v8)
  {
    goto LABEL_62;
  }

  v9 = *v73;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v73 != v9)
      {
        objc_enumerationMutation(obja);
      }

      v11 = *(*(&v72 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      v13 = [NDFileUtilities sessionPath:v11 forBundleID:self->_clientBundleID];
      v71 = 0;
      if ([v69 fileExistsAtPath:v13 isDirectory:&v71] && (v71 & 1) != 0)
      {
        v14 = [(NDTaskStorageDB *)self->_sessionTasksDB _getConfigurationForBundleID:self->_clientBundleID sessionID:v11];
        v15 = v14;
        if (!v14 || ([v14 identifier], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", v11), v16, (v17 & 1) == 0))
        {
          v34 = qword_1000EB210;
          if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
          {
            v43 = self->_clientBundleID;
            *buf = 138412546;
            v77 = *&v43;
            v78 = 2112;
            v79 = v11;
            _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Missing or invalid configuration value in DB for bundleID: %@, sessionID: %@. Removing session directory", buf, 0x16u);
          }

          [(NDSessionManager *)self failedSessionRestoreWithID:v11 directoryToDelete:v13];
          v33 = 0;
          goto LABEL_50;
        }

        v18 = [(NDTaskStorageDB *)self->_sessionTasksDB _getOptionsForBundleID:self->_clientBundleID sessionID:v11];
        v65 = v18;
        if (!v18)
        {
          v36 = qword_1000EB210;
          if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
          {
            v45 = self->_clientBundleID;
            *buf = 138412546;
            v77 = *&v45;
            v78 = 2112;
            v79 = v11;
            _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Missing or invalid options value in DB for bundleID: %@, sessionID: %@. Removing session directory", buf, 0x16u);
          }

          [(NDSessionManager *)self failedSessionRestoreWithID:v11 directoryToDelete:v13];
          v33 = 0;
          goto LABEL_49;
        }

        v19 = [v18 objectForKeyedSubscript:@"NSURLSessionLastDisconnectDateKey"];
        if (v19)
        {
          v64 = v19;
          [v19 timeIntervalSinceNow];
          if (v20 >= -31536000.0)
          {
            [v64 timeIntervalSinceNow];
            if (v38 <= -2592000.0)
            {
              v44 = qword_1000EB210;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                [v64 timeIntervalSinceNow];
                v49 = v48;
                identifier = [v15 identifier];
                v51 = self->_clientBundleID;
                *buf = 134218498;
                v77 = -v49;
                v78 = 2112;
                v79 = identifier;
                v80 = 2112;
                v81 = v51;
                _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Ignoring stale session (inactive for %fs) with identifier: %@ for bundle id: %@", buf, 0x20u);
              }

              [(NDSessionManager *)self failedSessionRestoreWithID:v11 directoryToDelete:v13];
              v33 = 0;
              goto LABEL_48;
            }

            v21 = 0;
LABEL_21:
            _supportsAVAssetDownloads = [v15 _supportsAVAssetDownloads];
            v23 = off_1000D4878;
            if ((_supportsAVAssetDownloads & 1) == 0)
            {
              usesClassicLoadingMode = [v15 usesClassicLoadingMode];
              v23 = off_1000D4888;
              if (usesClassicLoadingMode)
              {
                v23 = off_1000D4880;
              }
            }

            v25 = *v23;
            v26 = objc_alloc(objc_opt_class());
            queue = self->_queue;
            v28 = [v26 initWithConfiguration:v15 bundleID:self->_clientBundleID isSpringBoardApp:self->_isSpringBoardApp downloadDirectory:0 options:v65 clientProxy:0 delegate:self workQueue:queue db:self->_sessionTasksDB];
            v63 = v28;
            if (v28)
            {
              v70 = 0;
              v62 = [v28 restoreTasks:&v70];
              v60 = v70;
              if (v70 == 1)
              {
                v29 = qword_1000EB210;
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  [v15 identifier];
                  v30 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  v31 = self->_clientBundleID;
                  *buf = 138412546;
                  v77 = v30;
                  v78 = 2112;
                  v79 = v31;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Not restoring session with identifier: %@ for bundleID: %@ since it does not have any tasks", buf, 0x16u);
                }

                [(NDSessionManager *)self failedSessionRestoreWithID:v11 directoryToDelete:v13];
              }

              else
              {
                if (v21)
                {
                  v39 = [v65 mutableCopy];
                  v40 = +[NSDate now];
                  [v39 setObject:v40 forKeyedSubscript:@"NSURLSessionLastDisconnectDateKey"];

                  [(NDTaskStorageDB *)self->_sessionTasksDB _updateOptionsForBundleID:self->_clientBundleID sessionID:v11 with:v39];
                }

                [v66 addObjectsFromArray:v62];
                sessions = self->_sessions;
                identifier2 = [v63 identifier];
                [(NSMutableDictionary *)sessions setObject:v63 forKeyedSubscript:identifier2];
              }

              v33 = v60 ^ 1;
            }

            else
            {
              v37 = qword_1000EB210;
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                [v15 identifier];
                v46 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                v47 = self->_clientBundleID;
                *buf = 138412546;
                v77 = v46;
                v78 = 2112;
                v79 = v47;
                _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Coudn't restore session with identifier: %@ for bundle id: %@", buf, 0x16u);
              }

              [(NDSessionManager *)self failedSessionRestoreWithID:v11 directoryToDelete:v13];
              v33 = 0;
            }

LABEL_48:
LABEL_49:

LABEL_50:
            goto LABEL_51;
          }
        }

        v64 = 0;
        v21 = 1;
        goto LABEL_21;
      }

      v32 = qword_1000EB210;
      if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
      {
        v35 = self->_clientBundleID;
        *buf = 138412546;
        v77 = *&v35;
        v78 = 2112;
        v79 = v11;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "No directory for bundleID: %@, sessionID: %@", buf, 0x16u);
      }

      [(NDSessionManager *)self failedSessionRestoreWithID:v11 directoryToDelete:0];
      v33 = 0;
LABEL_51:

      objc_autoreleasePoolPop(v12);
      if (v33 && [v66 count] >= 0x401)
      {
        v53 = qword_1000EB210;
        if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_FAULT))
        {
          v57 = self->_clientBundleID;
          *buf = 138543362;
          v77 = *&v57;
          _os_log_fault_impl(&_mh_execute_header, v53, OS_LOG_TYPE_FAULT, "Too many total tasks for app <%{public}@>, skipping other sessions", buf, 0xCu);
        }

        goto LABEL_62;
      }

      v10 = v10 + 1;
    }

    while (v8 != v10);
    v52 = [obja countByEnumeratingWithState:&v72 objects:v82 count:16];
    v8 = v52;
    if (v52)
    {
      continue;
    }

    break;
  }

LABEL_62:

  v54 = [(NSMutableDictionary *)self->_sessions count];
  v55 = v54 == 0;
  if (!v54)
  {
    [NDFileUtilities removeItemAtURL:self->_bundleDirectory];
  }

  if (state)
  {
    *state = v55;
  }

  [(NDSessionManager *)self setWorkState];

  return v66;
}

- (void)failedSessionRestoreWithID:(id)d directoryToDelete:(id)delete
{
  dCopy = d;
  deleteCopy = delete;
  if (deleteCopy)
  {
    [NDFileUtilities removeItemAtPath:deleteCopy];
  }

  [(NDTaskStorageDB *)self->_sessionTasksDB _deleteSessionForBundleID:self->_clientBundleID sessionID:dCopy];
  if ([(NSString *)self->_clientBundleID isEqualToString:@"com.apple.OTACrashCopier"])
  {
    v8 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      clientBundleID = self->_clientBundleID;
      v11 = 138412546;
      v12 = clientBundleID;
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Launching application %@ since we could not restore session %@", &v11, 0x16u);
    }

    v10 = [NDApplication applicationWithIdentifier:self->_clientBundleID];
    [v10 wakeForSessionIdentifier:dCopy withSessionUUID:0 wakeRequirement:2];
  }
}

- (id)downloadDirectoryDataPath
{
  v2 = [(NSURL *)self->_bundleDirectory URLByAppendingPathComponent:@"downloadDirectoryPath.plist"];
  path = [v2 path];

  return path;
}

- (void)dealloc
{
  dispatch_source_cancel(self->_powerlogPeriodicUpdateTimer);
  v3.receiver = self;
  v3.super_class = NDSessionManager;
  [(NDSessionManager *)&v3 dealloc];
}

- (NDSessionManager)initWithDelegate:(id)delegate bundleID:(id)d isSpringBoardApp:(BOOL)app forPersona:(id)persona dataSeparatedPath:(id)path db:(id)db
{
  delegateCopy = delegate;
  dCopy = d;
  personaCopy = persona;
  pathCopy = path;
  dbCopy = db;
  v40.receiver = self;
  v40.super_class = NDSessionManager;
  v17 = [(NDSessionManager *)&v40 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_delegate, delegateCopy);
    objc_storeStrong(&v18->_clientBundleID, d);
    v19 = +[NSMutableDictionary dictionary];
    sessions = v18->_sessions;
    v18->_sessions = v19;

    v21 = +[NSMutableDictionary dictionary];
    reconnectingProxies = v18->_reconnectingProxies;
    v18->_reconnectingProxies = v21;

    objc_storeStrong(&v18->_persona, persona);
    objc_storeStrong(&v18->_containerPath, path);
    v23 = [NDFileUtilities bundleManagerPath:v18->_clientBundleID];
    v24 = [NSURL fileURLWithPath:v23];
    bundleDirectory = v18->_bundleDirectory;
    v18->_bundleDirectory = v24;

    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create("com.apple.nsurlsessiond.session-manager", v26);
    queue = v18->_queue;
    v18->_queue = v27;

    objc_storeStrong(&v18->_sessionTasksDB, db);
    boost = v18->_boost;
    v18->_boost = 0;

    v18->_isSpringBoardApp = app;
    [NDFileUtilities createDirectoryAtURL:v18->_bundleDirectory];
    v30 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v18->_queue);
    powerlogPeriodicUpdateTimer = v18->_powerlogPeriodicUpdateTimer;
    v18->_powerlogPeriodicUpdateTimer = v30;

    v32 = v18->_powerlogPeriodicUpdateTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100024790;
    handler[3] = &unk_1000D63D0;
    v39 = v18;
    dispatch_source_set_event_handler(v32, handler);
    v33 = v18->_powerlogPeriodicUpdateTimer;
    v34 = dispatch_time(0, 7200000000000);
    dispatch_source_set_timer(v33, v34, 0x68C61714000uLL, 0x3B9ACA00uLL);
    dispatch_resume(v18->_powerlogPeriodicUpdateTimer);
  }

  return v18;
}

+ (id)restoreOptionsFromArchivePath:(id)path
{
  pathCopy = path;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:pathCopy];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = sub_100008D9C(NSKeyedUnarchiver, pathCopy);
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_5:
      v6 = 0;
    }
  }

  return v6;
}

@end