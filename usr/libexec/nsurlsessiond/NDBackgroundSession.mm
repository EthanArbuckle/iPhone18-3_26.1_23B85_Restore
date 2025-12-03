@interface NDBackgroundSession
- (BOOL)clientIsActive;
- (BOOL)currentDiscretionaryStatus:(id)status withOptionalTaskInfo:(id)info;
- (BOOL)errorIfBlockedTracker:(id)tracker url:(id)url;
- (BOOL)finalizeTaskCompletionWithSuppressedWake:(BOOL)wake;
- (BOOL)hasConnectedClient;
- (BOOL)retryTask:(id)task originalError:(id)error transactionMetrics:(id)metrics;
- (BOOL)sessionHasOutstandingTasks;
- (BOOL)trustPassesExtendedValidation:(__SecTrust *)validation;
- (NDBackgroundSession)initWithConfiguration:(id)configuration bundleID:(id)d isSpringBoardApp:(BOOL)app downloadDirectory:(id)directory options:(id)options clientProxy:(id)proxy delegate:(id)delegate workQueue:(id)self0 db:(id)self1;
- (NDBackgroundSessionDelegate)delegate;
- (id)_URLSession:(id)session downloadTaskNeedsDownloadDirectory:(id)directory;
- (id)adjustDiscretionaryStatusForTaskInfo:(id)info;
- (id)clientErrorForError:(id)error;
- (id)configurationWithClientConfiguration:(id)configuration discretionary:(BOOL)discretionary;
- (id)createNewTaskFromInfo:(id)info;
- (id)descriptionForRequest:(id)request;
- (id)descriptionForTaskWithIdentifier:(unint64_t)identifier;
- (id)getTLSSessionCachePrefix;
- (id)getTasksForReconnection;
- (id)inputStreamWithFileHandle:(id)handle taskIdentifier:(unint64_t)identifier;
- (id)makeTempUploadFile:(id)file withExtensionData:(id)data;
- (id)requestWithAdjustedWindowForTaskInfo:(id)info;
- (id)restoreCompletedTask:(id)task;
- (id)restoreInProgressTask:(id)task;
- (id)restoreTask:(id)task isOutstanding:(BOOL *)outstanding;
- (id)restoreTasks:(BOOL *)tasks;
- (id)restoreTasksFromArchivedInfo:(id)info;
- (id)restoreTasksFromSqliteDB:(id)b;
- (id)sanitizeTaskProperties:(id)properties;
- (id)sessionForDiscretionaryStatus:(BOOL)status;
- (id)setupDownloadDirectory;
- (id)tasksArchivePath;
- (int64_t)priorityForDiscretionaryStatus:(BOOL)status;
- (void)URLSession:(id)session dataTask:(id)task _didReceiveData:(id)data completionHandler:(id)handler;
- (void)URLSession:(id)session dataTask:(id)task didBecomeDownloadTask:(id)downloadTask;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task _conditionalRequirementsChanged:(BOOL)changed;
- (void)URLSession:(id)session task:(id)task _isWaitingForConnectionWithReason:(int64_t)reason;
- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didReceiveInformationalResponse:(id)response;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_URLSession:(id)session downloadTask:(id)task didReceiveResponse:(id)response;
- (void)_URLSession:(id)session task:(id)task getAuthHeadersForResponse:(id)response completionHandler:(id)handler;
- (void)addOutstandingTaskWithIdentifier:(unint64_t)identifier;
- (void)allowReconnect;
- (void)applicationWasSuspended:(id)suspended pid:(int)pid;
- (void)applyOverrides:(id)overrides forTaskWithIdentifier:(unint64_t)identifier;
- (void)archiveTimerFired;
- (void)backgroundUpdatesEnabledForApplication:(id)application;
- (void)cancelMonitorForTask:(unint64_t)task;
- (void)cancelTaskWithIdentifier:(unint64_t)identifier;
- (void)cancelTaskWithIdentifier:(unint64_t)identifier byProducingResumeData:(id)data;
- (void)cancelTasksRequiringClientConnectionAndResumeUnstartedTasks;
- (void)cleanupSessionWithCompletionHandler:(id)handler;
- (void)clientAcknowledgedTerminalCallbackForTask:(unint64_t)task;
- (void)clientApplicationWasReinstalled;
- (void)clientDidDisconnect;
- (void)configureAdditionalPropertiesOnTask:(id)task taskInfo:(id)info;
- (void)configureTask:(id)task withTaskInfo:(id)info;
- (void)dataTaskWithRequest:(id)request originalRequest:(id)originalRequest identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier reply:(id)reply;
- (void)downloadTaskWithRequest:(id)request originalRequest:(id)originalRequest downloadFilePath:(id)path identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier reply:(id)reply;
- (void)downloadTaskWithResumeData:(id)data identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier reply:(id)reply;
- (void)enqueueTaskWithIdentifier:(unint64_t)identifier;
- (void)ensureSessionDownloadDirectoryExists;
- (void)errorOccurredDuringAuthCallbackDelivery:(id)delivery completionHandler:(id)handler;
- (void)errorOccurredDuringFinishedCallbackDelivery:(id)delivery;
- (void)fillInByteCountsForTaskInfo:(id)info withTaskID:(id)d;
- (void)handleEarliestBeginDateForTaskWithIdentifier:(unint64_t)identifier completionHandler:(id)handler;
- (void)handleWillBeginDelayedRequestForTaskWithIdentifier:(unint64_t)identifier completionHandler:(id)handler;
- (void)invalidateWithReply:(id)reply;
- (void)obliterate;
- (void)queueUpdatesForTask:(id)task updateType:(unint64_t)type highPriority:(BOOL)priority;
- (void)reconnectClient:(id)client withCompletion:(id)completion;
- (void)removeDownloadFileForTaskInfo:(id)info;
- (void)removeOutstandingTaskWithIdentifier:(unint64_t)identifier;
- (void)removeUploadFileForTaskInfo:(id)info;
- (void)requeueTask:(unint64_t)task skipResume:(BOOL)resume;
- (void)resetStorageWithReply:(id)reply;
- (void)resumeTaskWithIdentifier:(unint64_t)identifier withProperties:(id)properties;
- (void)setBytesPerSecondLimit:(int64_t)limit forTaskWithIdentifier:(unint64_t)identifier;
- (void)setDescription:(id)description forTask:(unint64_t)task;
- (void)setDiscretionaryOverride:(int64_t)override forTaskWithIdentifier:(unint64_t)identifier;
- (void)setExpectedProgressTarget:(unint64_t)target forTaskWithIdentifier:(unint64_t)identifier;
- (void)setLoadingPoolPriority:(double)priority forTaskWithIdentifier:(unint64_t)identifier;
- (void)setPriority:(int64_t)priority forTaskWithIdentifier:(unint64_t)identifier;
- (void)setPropertyOnStreamWithIdentifier:(unint64_t)identifier propDict:(id)dict propKey:(id)key withReply:(id)reply;
- (void)setTLSSessionCachePrefix:(id)prefix;
- (void)setXPCConnection:(id)connection;
- (void)setupDASPropertiesOnTask:(id)task taskInfo:(id)info discretionaryStatus:(BOOL)status;
- (void)statusMonitor:(id)monitor callbackForIdentifier:(unint64_t)identifier networkChanged:(BOOL)changed;
- (void)storeTaskInfoUpdates:(BOOL)updates;
- (void)suspendTaskWithIdentifier:(unint64_t)identifier;
- (void)taskMonitor:(id)monitor retryTask:(unint64_t)task reason:(int)reason;
- (void)taskMonitor:(id)monitor terminateTask:(unint64_t)task reason:(int)reason;
- (void)taskMonitor:(id)monitor updateTaskPriority:(unint64_t)priority reason:(int)reason;
- (void)taskShouldResume:(unint64_t)resume;
- (void)taskShouldSuspend:(unint64_t)suspend;
- (void)triggerPowerlogPeriodicUpdate;
- (void)updateOptions:(id)options;
- (void)updateTaskInfoBasedOnCurrentDiscretionaryStatus:(id)status;
- (void)uploadTaskWithRequest:(id)request originalRequest:(id)originalRequest fromFile:(id)file sandboxExtensionData:(id)data identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier potentialCredentials:(id)credentials reply:(id)self0;
- (void)uploadTaskWithResumableUploadState:(id)state request:(id)request originalRequest:(id)originalRequest fromFile:(id)file sandboxExtensionData:(id)data identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier potentialCredentials:(id)self0 reply:(id)self1;
- (void)wakeUpClient:(int64_t)client;
@end

@implementation NDBackgroundSession

- (void)archiveTimerFired
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001EEC;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)setupDownloadDirectory
{
  if (!self->_sharedContainerIdentifier)
  {
    goto LABEL_6;
  }

  v3 = [[LSApplicationExtensionRecord alloc] initWithBundleIdentifier:self->_clientBundleID error:0];
  v4 = v3;
  if (v3)
  {
    groupContainerURLs = [v3 groupContainerURLs];
    containerURL = [groupContainerURLs objectForKeyedSubscript:self->_sharedContainerIdentifier];
  }

  else
  {
    groupContainerURLs = [[LSApplicationRecord alloc] initWithBundleIdentifier:self->_clientBundleID allowPlaceholder:0 error:0];
    v5GroupContainerURLs = [groupContainerURLs groupContainerURLs];
    containerURL = [v5GroupContainerURLs objectForKeyedSubscript:self->_sharedContainerIdentifier];
  }

  if (!containerURL)
  {
LABEL_6:
    containerURL = [(NDApplication *)self->_clientApplication containerURL];
  }

  v8 = [NDFileUtilities noFollowRealURL:containerURL];

  if (!v8 || ([v8 URLByAppendingPathComponent:@"Library/Caches/com.apple.nsurlsessiond/Downloads" isDirectory:1], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "URLByAppendingPathComponent:isDirectory:", self->_clientBundleID, 1), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v10 = [NDFileUtilities defaultDownloadDirectoryForBundleID:self->_clientBundleID];
  }

  v11 = +[NSFileManager defaultManager];
  path = [v10 path];
  v13 = [v11 fileExistsAtPath:path];

  if ((v13 & 1) == 0)
  {
    [NDFileUtilities createDirectoryAtURL:v10];
  }

  return v10;
}

- (BOOL)hasConnectedClient
{
  if (self->_xpcConn)
  {
    v3 = self->_clientProxy != 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    v6 = uuid;
    if (v3)
    {
      v7 = 89;
    }

    else
    {
      v7 = 78;
    }

    if (self->_xpcConn)
    {
      v8 = 89;
    }

    else
    {
      v8 = 78;
    }

    identifier = self->_identifier;
    clientBundleID = self->_clientBundleID;
    if (self->_clientProxy)
    {
      v11 = 89;
    }

    else
    {
      v11 = 78;
    }

    v13 = 138544642;
    v14 = uuid;
    v15 = 2114;
    v16 = clientBundleID;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = v8;
    v21 = 1024;
    v22 = v11;
    v23 = 2112;
    v24 = identifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> client %{public}@ connected result (%c), XPC(%c) proxy(%c) for %@", &v13, 0x32u);
  }

  return v3;
}

- (id)getTasksForReconnection
{
  v3 = [(NSMutableDictionary *)self->_identifiersToTaskInfo copy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003804;
  v8[3] = &unk_1000D56B0;
  v8[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    identifier = self->_identifier;
    *buf = 138543874;
    v10 = uuid;
    v11 = 2112;
    v12 = identifier;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Session: %@ get tasks for reconnection: %@", buf, 0x20u);
  }

  return v3;
}

- (id)getTLSSessionCachePrefix
{
  userInitiatedSession = self->_userInitiatedSession;
  if (userInitiatedSession || (userInitiatedSession = self->_discretionaryPrioritySession) != 0)
  {
    userInitiatedSession = [userInitiatedSession _tlsSessionCachePrefix];
    v2 = vars8;
  }

  return userInitiatedSession;
}

- (BOOL)sessionHasOutstandingTasks
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    v5 = [(NSMutableArray *)self->_outstandingTaskIDs count];
    v7 = 138543618;
    v8 = uuid;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> has %lu outstanding tasks", &v7, 0x16u);
  }

  return [(NSMutableArray *)self->_outstandingTaskIDs count]!= 0;
}

- (BOOL)clientIsActive
{
  clientProxy = self->_clientProxy;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    v6 = uuid;
    if (clientProxy)
    {
      v7 = 89;
    }

    else
    {
      v7 = 78;
    }

    if (self->_xpcConn)
    {
      v8 = 89;
    }

    else
    {
      v8 = 78;
    }

    identifier = self->_identifier;
    clientBundleID = self->_clientBundleID;
    if (self->_clientProxy)
    {
      v11 = 89;
    }

    else
    {
      v11 = 78;
    }

    v13 = 138544642;
    v14 = uuid;
    v15 = 2114;
    v16 = clientBundleID;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = v8;
    v21 = 1024;
    v22 = v11;
    v23 = 2112;
    v24 = identifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> client %{public}@ is active result (%c), XPC(%c) proxy(%c) for %@", &v13, 0x32u);
  }

  return clientProxy != 0;
}

- (void)ensureSessionDownloadDirectoryExists
{
  if (self->_downloadDirectory)
  {
    v3 = +[NSFileManager defaultManager];
    path = [(NSURL *)self->_downloadDirectory path];
    v5 = [v3 fileExistsAtPath:path];

    if ((v5 & 1) == 0)
    {
      v6 = qword_1000EB210;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        uuid = [(NDBackgroundSession *)self uuid];
        identifier = self->_identifier;
        clientBundleID = self->_clientBundleID;
        path2 = [(NSURL *)self->_downloadDirectory path];
        v11 = 138544130;
        v12 = uuid;
        v13 = 2114;
        v14 = clientBundleID;
        v15 = 2112;
        v16 = identifier;
        v17 = 2112;
        v18 = path2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Session <%{public}@>.<%@> download path %@ did not exist, recreating.", &v11, 0x2Au);
      }

      [NDFileUtilities createDirectoryAtURL:self->_downloadDirectory];
    }
  }
}

- (void)triggerPowerlogPeriodicUpdate
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_outstandingTaskIDs;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [(NSMutableDictionary *)self->_identifiersToTaskInfo objectForKeyedSubscript:v7, v10];
        v9 = [(NSMutableDictionary *)self->_identifiersToTasks objectForKeyedSubscript:v7];
        sub_10006E370(6, self->_clientBundleID, self->_identifier, self->_monitoredAppBundleID, self->_secondaryID, v9, v8, 0);
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (NDBackgroundSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_URLSession:(id)session task:(id)task getAuthHeadersForResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  v12 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:taskCopy];
  unsignedIntegerValue = [v12 unsignedIntegerValue];

  v14 = qword_1000EB210;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v40 = handlerCopy;
    uuid = [(NDBackgroundSession *)self uuid];
    v16 = responseCopy;
    v17 = taskCopy;
    _loggableDescription = [taskCopy _loggableDescription];
    clientBundleID = self->_clientBundleID;
    sendsLaunchEvents = self->_sendsLaunchEvents;
    supportsWakes = [(NDApplication *)self->_clientApplication supportsWakes];
    v22 = "N";
    *buf = 138544386;
    v48 = uuid;
    v49 = 2114;
    if (sendsLaunchEvents)
    {
      v23 = "Y";
    }

    else
    {
      v23 = "N";
    }

    v50 = _loggableDescription;
    if (supportsWakes)
    {
      v22 = "Y";
    }

    v51 = 2114;
    v52 = clientBundleID;
    v53 = 2080;
    v54 = v23;
    v55 = 2080;
    v56 = v22;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ getAuthHeadersForResponse for %{public}@ _sendsLaunchEvents=%s [_clientApplication supportsWakes]=%s", buf, 0x34u);

    responseCopy = v16;
    handlerCopy = v40;
    taskCopy = v17;
  }

  clientProxy = self->_clientProxy;
  if (clientProxy)
  {
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000250DC;
    v44[3] = &unk_1000D6240;
    v44[4] = self;
    v25 = taskCopy;
    v45 = v25;
    v26 = handlerCopy;
    v46 = v26;
    v27 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v44];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100025240;
    v41[3] = &unk_1000D54B0;
    v41[4] = self;
    v42 = v25;
    v43 = v26;
    [v27 backgroundTask:unsignedIntegerValue getAuthHeadersForResponse:responseCopy reply:v41];
  }

  else if (self->_sendsLaunchEvents && [(NDApplication *)self->_clientApplication supportsWakes])
  {
    v28 = qword_1000EB210;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      _loggableDescription2 = [taskCopy _loggableDescription];
      v31 = self->_clientBundleID;
      *buf = 138543874;
      v48 = uuid2;
      v49 = 2114;
      v50 = _loggableDescription2;
      v51 = 2114;
      v52 = v31;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ waking %{public}@ for auth headers", buf, 0x20u);
    }

    v32 = [PendingCallback alloc];
    v33 = objc_retainBlock(handlerCopy);
    v34 = [v33 copy];
    v35 = [NSArray arrayWithObjects:v34, responseCopy, 0];
    v36 = [(PendingCallback *)v32 initWithCallbackType:10 taskIdentifier:unsignedIntegerValue args:v35];

    [taskCopy _releasePreventIdleSleepAssertionIfAppropriate];
    [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v36 wakeRequirement:2];
  }

  else
  {
    v37 = qword_1000EB210;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      uuid3 = [(NDBackgroundSession *)self uuid];
      _loggableDescription3 = [taskCopy _loggableDescription];
      *buf = 138543618;
      v48 = uuid3;
      v49 = 2114;
      v50 = _loggableDescription3;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ getAuthHeadersForResponse does not have a remote object and does not support app wakes, canceling.", buf, 0x16u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  }
}

- (id)_URLSession:(id)session downloadTaskNeedsDownloadDirectory:(id)directory
{
  v5 = [Daemon sharedDaemon:session];
  if ([v5 isPrivileged])
  {
    downloadDirectory = 0;
  }

  else
  {
    downloadDirectory = self->_downloadDirectory;
  }

  v7 = downloadDirectory;

  return downloadDirectory;
}

- (void)_URLSession:(id)session downloadTask:(id)task didReceiveResponse:(id)response
{
  taskCopy = task;
  responseCopy = response;
  v9 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:taskCopy];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [taskCopy _loggableDescription];
    clientBundleID = self->_clientBundleID;
    v22 = 138544130;
    v23 = uuid;
    v24 = 2114;
    v25 = _loggableDescription;
    v26 = 2114;
    v27 = clientBundleID;
    v28 = 1024;
    statusCode = [responseCopy statusCode];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ download for client %{public}@ received response, status code: %d", &v22, 0x26u);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v16 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  v17 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v16];

  [v17 setResponse:responseCopy];
  v18 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  [(NDBackgroundSession *)self queueUpdatesForTask:v18 updateType:1 highPriority:1];

  clientProxy = self->_clientProxy;
  _metrics = [taskCopy _metrics];
  _daemon_currentTransactionMetrics = [_metrics _daemon_currentTransactionMetrics];
  [(NSXPCProxyCreating *)clientProxy backgroundTask:unsignedIntegerValue didReceiveResponse:responseCopy transactionMetrics:_daemon_currentTransactionMetrics];
}

- (void)URLSession:(id)session task:(id)task _conditionalRequirementsChanged:(BOOL)changed
{
  changedCopy = changed;
  sessionCopy = session;
  taskCopy = task;
  v10 = qword_1000EB210;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [taskCopy _loggableDescription];
    clientBundleID = self->_clientBundleID;
    v15 = 138544130;
    v16 = uuid;
    v17 = 2114;
    v18 = _loggableDescription;
    v19 = 2114;
    v20 = clientBundleID;
    v21 = 1024;
    v22 = changedCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for client %{public}@ conditions changed - satisfied: %d", &v15, 0x26u);
  }

  if (!changedCopy)
  {
    v14 = [taskCopy error:@"_nsurlsessiondErrorDomain" code:5];
    [taskCopy cancel_with_error:v14];
  }
}

- (void)URLSession:(id)session task:(id)task _isWaitingForConnectionWithReason:(int64_t)reason
{
  taskCopy = task;
  v8 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:taskCopy];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10 = qword_1000EB210;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [taskCopy _loggableDescription];
    clientBundleID = self->_clientBundleID;
    v15 = 138544130;
    v16 = uuid;
    v17 = 2114;
    v18 = _loggableDescription;
    v19 = 2114;
    v20 = clientBundleID;
    v21 = 2048;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for client %{public}@ is waiting for connection - reason: %lld", &v15, 0x2Au);
  }

  v14 = [NSURLError errorWithDomain:NSTCPConnectionConditionsUnmetReasonErrorDomain code:reason userInfo:0];
  [(NSXPCProxyCreating *)self->_clientProxy backgroundTask:unsignedIntegerValue hasConnectionWaitingWithError:v14];
}

- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler
{
  taskCopy = task;
  connectionCopy = connection;
  handlerCopy = handler;
  v9 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:taskCopy];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v12 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  v13 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v12];

  v14 = qword_1000EB210;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [taskCopy _loggableDescription];
    clientBundleID = self->_clientBundleID;
    *buf = 138543874;
    v51 = uuid;
    v52 = 2114;
    v53 = _loggableDescription;
    v54 = 2114;
    v55 = clientBundleID;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for client %{public}@ _willSendRequestForEstablishedConnection", buf, 0x20u);
  }

  sub_10006E370(1, self->_clientBundleID, self->_identifier, self->_monitoredAppBundleID, self->_secondaryID, taskCopy, v13, 0);
  if (![v13 taskKind])
  {
    [(NDBackgroundSession *)self ensureSessionDownloadDirectoryExists];
  }

  if (!self->_clientImplementsWillSendRequest && (![v13 taskKind] || objc_msgSend(v13, "taskKind") == 1 && (objc_msgSend(v13, "shouldCancelOnDisconnect") & 1) == 0))
  {
    v30 = qword_1000EB210;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      *buf = 138543362;
      v51 = uuid2;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Client does not implement _willSendRequestForEstablishedConnection, so using proposed request", buf, 0xCu);
    }

    goto LABEL_29;
  }

  if (!self->_clientProxy && (!self->_sendsLaunchEvents || ![(NDApplication *)self->_clientApplication supportsWakes]))
  {
    shouldCancelOnDisconnect = [v13 shouldCancelOnDisconnect];
    v29 = qword_1000EB210;
    v30 = v29;
    if (shouldCancelOnDisconnect)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        uuid3 = [(NDBackgroundSession *)self uuid];
        _loggableDescription2 = [taskCopy _loggableDescription];
        *buf = 138543618;
        v51 = uuid3;
        v52 = 2114;
        v53 = _loggableDescription2;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ established a connection which requires the client to be running, but it isn't running and doesn't support app wakes. Canceling the task.", buf, 0x16u);
      }

      v31 = qword_1000EB210;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        uuid4 = [(NDBackgroundSession *)self uuid];
        v33 = self->_clientBundleID;
        *buf = 138543618;
        v51 = uuid4;
        v52 = 2114;
        v53 = v33;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Perhaps the client %{public}@ was uninstalled?", buf, 0x16u);
      }

      v34 = [taskCopy error:NSURLErrorDomain code:-997];
      [taskCopy cancel_with_error:v34];
      handlerCopy[2](handlerCopy, 0);
      goto LABEL_26;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      uuid5 = [(NDBackgroundSession *)self uuid];
      _loggableDescription3 = [taskCopy _loggableDescription];
      *buf = 138543618;
      v51 = uuid5;
      v52 = 2114;
      v53 = _loggableDescription3;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ using proposed request since the client application is not running and doesn't support wakes", buf, 0x16u);
    }

LABEL_29:

    (handlerCopy)[2](handlerCopy, connectionCopy);
    goto LABEL_30;
  }

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100026534;
  v43[3] = &unk_1000D5488;
  v44 = v13;
  selfCopy = self;
  v49 = unsignedIntegerValue;
  v18 = connectionCopy;
  v46 = v18;
  v19 = taskCopy;
  v47 = v19;
  v48 = handlerCopy;
  v20 = objc_retainBlock(v43);
  v21 = [PendingCallback alloc];
  v22 = objc_retainBlock(v20);
  v23 = [v22 copy];
  v24 = [NSArray arrayWithObjects:v18, v23, 0];
  v25 = [(PendingCallback *)v21 initWithCallbackType:5 taskIdentifier:unsignedIntegerValue args:v24];

  [v19 _releasePreventIdleSleepAssertionIfAppropriate];
  callbackQueue = self->_callbackQueue;
  if (self->_sendsLaunchEvents)
  {
    if ([(NDApplication *)self->_clientApplication supportsWakes])
    {
      v27 = 2;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  [(NDCallbackQueue *)callbackQueue addPendingCallback:v25 wakeRequirement:v27];

  v34 = v44;
LABEL_26:

LABEL_30:
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  taskCopy = task;
  v11 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:?];
  unsignedIntegerValue = [v11 unsignedIntegerValue];

  identifiersToMonitors = self->_identifiersToMonitors;
  v14 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  v15 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v14];

  if (v15)
  {
    [v15 taskTransferredData:0 countOfBytesReceived:data cellular:{objc_msgSend(taskCopy, "_connectionIsCellular")}];
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v17 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  v18 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v17];

  if (![v18 taskKind])
  {
    [(NSXPCProxyCreating *)self->_clientProxy backgroundDownloadTask:unsignedIntegerValue didWriteData:data totalBytesWritten:written totalBytesExpectedToWrite:write];
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes
{
  taskCopy = task;
  v10 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:taskCopy];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v12 = qword_1000EB210;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [taskCopy _loggableDescription];
    v19 = 138544130;
    v20 = uuid;
    v21 = 2114;
    v22 = _loggableDescription;
    v23 = 2048;
    offsetCopy = offset;
    v25 = 2048;
    bytesCopy = bytes;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ didResumeAtOffset: %lld expectedTotalBytes: %lld", &v19, 0x2Au);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v16 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  v17 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v16];

  if ([v17 expectingResumeCallback])
  {
    [(NSXPCProxyCreating *)self->_clientProxy backgroundDownloadTask:unsignedIntegerValue didResumeAtOffset:offset expectedTotalBytes:bytes];
    [v17 setExpectingResumeCallback:0];
    v18 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
    [(NDBackgroundSession *)self queueUpdatesForTask:v18 updateType:14 highPriority:0];
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  taskCopy = task;
  lCopy = l;
  v9 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:taskCopy];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [taskCopy _loggableDescription];
    *buf = 138543874;
    v24 = uuid;
    v25 = 2114;
    v26 = _loggableDescription;
    v27 = 2112;
    v28 = lCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ finished downloading to %@", buf, 0x20u);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v15 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  v16 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v15];

  if ([taskCopy _hasSZExtractor])
  {
    [NDFileUtilities updateStreamingZipModificationDate:lCopy];
    [v16 set_updatedStreamingZipModificationDate:1];
  }

  v17 = [PendingCallback alloc];
  response = [taskCopy response];
  v19 = response;
  if (!response)
  {
    v19 = +[NSNull null];
  }

  v22[1] = v19;
  v20 = [NSArray arrayWithObjects:v22 count:2];
  v21 = [(PendingCallback *)v17 initWithCallbackType:1 taskIdentifier:unsignedIntegerValue args:v20];

  if (!response)
  {
  }

  [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v21 wakeRequirement:0];
}

- (void)URLSession:(id)session dataTask:(id)task didBecomeDownloadTask:(id)downloadTask
{
  taskCopy = task;
  downloadTaskCopy = downloadTask;
  v9 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:taskCopy];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [taskCopy _loggableDescription];
    v24 = 138543618;
    v25 = uuid;
    v26 = 2114;
    v27 = _loggableDescription;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ became download task", &v24, 0x16u);
  }

  v14 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  [(NSMutableDictionary *)self->_tasksToIdentifiers setObject:v14 forKeyedSubscript:downloadTaskCopy];

  [(NSMutableDictionary *)self->_tasksToIdentifiers removeObjectForKey:taskCopy];
  identifiersToTasks = self->_identifiersToTasks;
  v16 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  [(NSMutableDictionary *)identifiersToTasks setObject:downloadTaskCopy forKeyedSubscript:v16];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v18 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  v19 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v18];

  downloadFile = [downloadTaskCopy downloadFile];
  path = [downloadFile path];

  if (path)
  {
    v22 = [NSURL fileURLWithPath:path];
  }

  else
  {
    v22 = 0;
  }

  [v19 setDownloadFileURL:v22];
  if (path)
  {
  }

  if ([v19 taskKind] == 2)
  {
    [(NSXPCProxyCreating *)self->_clientProxy backgroundDataTaskDidBecomeDownloadTask:unsignedIntegerValue];
    [v19 setTaskKind:0];
  }

  v23 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  [(NDBackgroundSession *)self queueUpdatesForTask:v23 updateType:14 highPriority:0];
}

- (void)URLSession:(id)session dataTask:(id)task _didReceiveData:(id)data completionHandler:(id)handler
{
  taskCopy = task;
  dataCopy = data;
  handlerCopy = handler;
  v12 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:taskCopy];
  unsignedIntegerValue = [v12 unsignedIntegerValue];

  identifiersToMonitors = self->_identifiersToMonitors;
  v15 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  v16 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v15];

  if (v16)
  {
    [v16 taskTransferredData:0 countOfBytesReceived:objc_msgSend(dataCopy cellular:{"length"), objc_msgSend(taskCopy, "_connectionIsCellular")}];
  }

  v17 = qword_1000EB210;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [taskCopy _loggableDescription];
    *buf = 138544130;
    v33 = uuid;
    v34 = 2114;
    v35 = _loggableDescription;
    v36 = 2048;
    countOfBytesReceived = [taskCopy countOfBytesReceived];
    v38 = 2048;
    countOfBytesExpectedToReceive = [taskCopy countOfBytesExpectedToReceive];
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "NDSession <%{public}@> %{public}@ did receive data (%lld of %lld total bytes)", buf, 0x2Au);
  }

  clientProxy = self->_clientProxy;
  if (clientProxy)
  {
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100027540;
    v29[3] = &unk_1000D6240;
    v29[4] = self;
    v30 = taskCopy;
    v19 = handlerCopy;
    v31 = v19;
    v20 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v29];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100027688;
    v27[3] = &unk_1000D5F30;
    v28 = v19;
    [v20 backgroundDataTask:unsignedIntegerValue didReceiveData:dataCopy withReply:v27];
  }

  else
  {
    v21 = qword_1000EB210;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      _loggableDescription2 = [taskCopy _loggableDescription];
      *buf = 138543618;
      v33 = uuid2;
      v34 = 2114;
      v35 = _loggableDescription2;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ received data and there is no connected client. Canceling task.", buf, 0x16u);
    }

    v24 = [taskCopy error:NSURLErrorDomain code:-997];
    [taskCopy cancel_with_error:v24];
    handlerCopy[2](handlerCopy);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  v12 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:taskCopy];
  unsignedIntegerValue = [v12 unsignedIntegerValue];

  v14 = qword_1000EB210;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [taskCopy _loggableDescription];
    *buf = 138544130;
    v46 = uuid;
    v47 = 2114;
    v48 = _loggableDescription;
    v49 = 2112;
    v50 = responseCopy;
    v51 = 1024;
    statusCode = [responseCopy statusCode];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ didReceiveResponse: %@, status code: %d", buf, 0x26u);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v18 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  v19 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v18];

  [v19 setResponse:responseCopy];
  v20 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  [(NDBackgroundSession *)self queueUpdatesForTask:v20 updateType:1 highPriority:0];

  resumableUploadData = [v19 resumableUploadData];
  LOBYTE(v20) = resumableUploadData == 0;

  if ((v20 & 1) == 0)
  {
    [v19 setResumableUploadData:0];
    v22 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
    [(NDBackgroundSession *)self queueUpdatesForTask:v22 updateType:2 highPriority:0];
  }

  taskKind = [v19 taskKind];
  clientProxy = self->_clientProxy;
  if (taskKind == 1)
  {
    _metrics = [taskCopy _metrics];
    _daemon_currentTransactionMetrics = [_metrics _daemon_currentTransactionMetrics];
    [(NSXPCProxyCreating *)clientProxy backgroundTask:unsignedIntegerValue didReceiveResponse:responseCopy transactionMetrics:_daemon_currentTransactionMetrics];

    [(NDBackgroundSession *)self ensureSessionDownloadDirectoryExists];
    handlerCopy[2](handlerCopy, 2);
  }

  else if (clientProxy)
  {
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100027C58;
    v42[3] = &unk_1000D6240;
    v42[4] = self;
    v27 = taskCopy;
    v28 = handlerCopy;
    v29 = v27;
    v43 = v27;
    v38 = v28;
    v30 = v28;
    v44 = v30;
    v31 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v42];
    _metrics2 = [v29 _metrics];
    _daemon_currentTransactionMetrics2 = [_metrics2 _daemon_currentTransactionMetrics];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100027DDC;
    v39[3] = &unk_1000D5460;
    v39[4] = self;
    v40 = v29;
    v41 = v30;
    [v31 backgroundTask:unsignedIntegerValue didReceiveResponse:responseCopy transactionMetrics:_daemon_currentTransactionMetrics2 reply:v39];

    handlerCopy = v38;
  }

  else
  {
    v34 = qword_1000EB210;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      _loggableDescription2 = [taskCopy _loggableDescription];
      *buf = 138543618;
      v46 = uuid2;
      v47 = 2114;
      v48 = _loggableDescription2;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ received data task didReceiveResponse callback and there is no connected client. Canceling task.", buf, 0x16u);
    }

    v35 = [taskCopy error:NSURLErrorDomain code:-997];
    [taskCopy cancel_with_error:v35];
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v78 = taskCopy;
  v9 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:taskCopy];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v12 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  v13 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v12];

  _metrics = [v78 _metrics];
  v77 = unsignedIntegerValue;
  [v13 setTaskMetrics:_metrics];

  identifiersToStreams = self->_identifiersToStreams;
  if (identifiersToStreams)
  {
    v16 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
    [(NSMutableDictionary *)identifiersToStreams removeObjectForKey:v16];
  }

  if ([v78 _hasSZExtractor])
  {
    downloadFileURL = [v13 downloadFileURL];
    if (downloadFileURL)
    {
      _updatedStreamingZipModificationDate = [v13 _updatedStreamingZipModificationDate];

      if ((_updatedStreamingZipModificationDate & 1) == 0)
      {
        downloadFileURL2 = [v13 downloadFileURL];
        [NDFileUtilities updateStreamingZipModificationDate:downloadFileURL2];
      }
    }
  }

  if (!errorCopy || !sub_1000049F0(errorCopy) || [v13 disablesRetry] && ((sub_100005040(v78) & 1) != 0 || !sub_100008ADC(errorCopy)) || objc_msgSend(v13, "state") == 2)
  {
    v20 = 0;
    goto LABEL_14;
  }

  v59 = qword_1000EB210;
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [v78 _loggableDescription];
    clientBundleID = self->_clientBundleID;
    *buf = 138544386;
    v87 = uuid;
    v88 = 2114;
    v89 = _loggableDescription;
    v90 = 2114;
    v91 = clientBundleID;
    v92 = 2112;
    v93 = errorCopy;
    v94 = 2048;
    code = [errorCopy code];
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for client %{public}@ will be retried after error %@ - code: %ld", buf, 0x34u);
  }

  v63 = +[NDUserSyncStakeholder sharedStakeholder];
  [v63 startBridgingUMTask:v13];

  [(NDBackgroundSession *)self handleCompletionOfTask:v78 identifier:unsignedIntegerValue taskInfo:v13 isRecoverable:1 suppressWake:1];
  [(NSMutableDictionary *)self->_tasksToIdentifiers removeObjectForKey:v78];
  _extractor = [v78 _extractor];
  [v13 set_extractor:_extractor];

  _metrics2 = [v78 _metrics];
  _daemon_currentTransactionMetrics = [_metrics2 _daemon_currentTransactionMetrics];
  v67 = [(NDBackgroundSession *)self retryTask:v13 originalError:errorCopy transactionMetrics:_daemon_currentTransactionMetrics];

  if ((v67 & 1) == 0)
  {
    v68 = +[NDUserSyncStakeholder sharedStakeholder];
    [v68 endBridgingUMTask:v13];

    v69 = qword_1000EB210;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      _loggableDescription2 = [v78 _loggableDescription];
      *buf = 138543618;
      v87 = uuid2;
      v88 = 2114;
      v89 = _loggableDescription2;
      _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ failed to retry", buf, 0x16u);
    }

    userInfo = [errorCopy userInfo];
    v71 = [NSURLError errorWithDomain:NSURLErrorDomain code:-1 userInfo:userInfo];

    v20 = 1;
    errorCopy = v71;
LABEL_14:
    clientProxy = [errorCopy domain];
    if ([clientProxy isEqualToString:@"_nsurlsessiondErrorDomain"])
    {
      v22 = [errorCopy code] == 1;

      if (!v22)
      {
        goto LABEL_20;
      }

      v23 = qword_1000EB210;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        uuid3 = [(NDBackgroundSession *)self uuid];
        *buf = 138543362;
        v87 = uuid3;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Removing client proxy due to task failure caused by app quit", buf, 0xCu);
      }

      clientProxy = self->_clientProxy;
      self->_clientProxy = 0;
    }

LABEL_20:
    v24 = [(NDBackgroundSession *)self clientErrorForError:errorCopy];
    if (sub_100004F90(errorCopy))
    {
      canBeSuspended = [(NDApplication *)self->_clientApplication canBeSuspended];
    }

    else
    {
      canBeSuspended = 0;
    }

    [v13 setState:3];
    [v13 setError:v24];
    [v78 setError:v24];
    _trailers = [v78 _trailers];
    [v13 set_backgroundTrailers:_trailers];

    v26 = [NSNumber numberWithUnsignedInteger:v77];
    [(NDBackgroundSession *)self queueUpdatesForTask:v26 updateType:14 highPriority:1];

    v27 = qword_1000EB210;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      uuid4 = [(NDBackgroundSession *)self uuid];
      _loggableDescription3 = [v78 _loggableDescription];
      code2 = [errorCopy code];
      if (sub_100005040(v78))
      {
        if ([v78 _connectionIsCellular])
        {
          v31 = 89;
        }

        else
        {
          v31 = 78;
        }
      }

      else
      {
        v31 = 85;
      }

      *buf = 138544386;
      v87 = uuid4;
      v88 = 2114;
      v89 = _loggableDescription3;
      v90 = 2112;
      v91 = errorCopy;
      v92 = 2048;
      v93 = code2;
      v94 = 1024;
      LODWORD(code) = v31;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ completed with error %@ [%ld]. C(%c)", buf, 0x30u);
    }

    if (!errorCopy)
    {
      v34 = qword_1000EB210;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        uuid5 = [(NDBackgroundSession *)self uuid];
        _loggableDescription4 = [v78 _loggableDescription];
        v40 = self->_clientBundleID;
        *buf = 138543874;
        v87 = uuid5;
        v88 = 2114;
        v89 = _loggableDescription4;
        v90 = 2114;
        v91 = v40;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for client %{public}@ completed successfully", buf, 0x20u);
      }

      goto LABEL_40;
    }

    domain = [errorCopy domain];
    if ([domain isEqualToString:NSURLErrorDomain])
    {
      v33 = [errorCopy code] == -999;

      if (v33)
      {
        v34 = qword_1000EB210;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          uuid6 = [(NDBackgroundSession *)self uuid];
          _loggableDescription5 = [v78 _loggableDescription];
          v37 = self->_clientBundleID;
          *buf = 138543874;
          v87 = uuid6;
          v88 = 2114;
          v89 = _loggableDescription5;
          v90 = 2114;
          v91 = v37;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for client %{public}@ was cancelled", buf, 0x20u);
        }

LABEL_40:

        outstandingTaskIDs = self->_outstandingTaskIDs;
        v46 = [NSNumber numberWithUnsignedInteger:v77];
        LOBYTE(outstandingTaskIDs) = [(NSMutableArray *)outstandingTaskIDs containsObject:v46];

        if (outstandingTaskIDs)
        {
          v76 = objc_alloc_init(NSMutableDictionary);
          _backgroundTrailers = [v13 _backgroundTrailers];
          v48 = _backgroundTrailers == 0;

          if (!v48)
          {
            _backgroundTrailers2 = [v13 _backgroundTrailers];
            [v76 setObject:_backgroundTrailers2 forKeyedSubscript:@"trailers"];
          }

          v50 = [PendingCallback alloc];
          v51 = v24;
          if (!v24)
          {
            v51 = +[NSNull null];
          }

          v85[0] = v51;
          taskMetrics = [v13 taskMetrics];
          v53 = taskMetrics;
          if (!taskMetrics)
          {
            v53 = +[NSNull null];
          }

          v85[1] = v53;
          v85[2] = v76;
          v54 = [NSArray arrayWithObjects:v85 count:3];
          v55 = [(PendingCallback *)v50 initWithCallbackType:0 taskIdentifier:v77 args:v54];

          if (!taskMetrics)
          {
          }

          if (!v24)
          {
          }

          [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v55 wakeRequirement:0];
          [(NDBackgroundSession *)self removeOutstandingTaskWithIdentifier:v77];
          [(NDBackgroundSession *)self handleCompletionOfTask:v78 identifier:v77 taskInfo:v13 isRecoverable:0 suppressWake:canBeSuspended];
          [(NDBackgroundSession *)self removeUploadFileForTaskInfo:v13];
          v81[0] = _NSConcreteStackBlock;
          v81[1] = 3221225472;
          v81[2] = sub_100028CF4;
          v81[3] = &unk_1000D6130;
          v82 = v13;
          v83 = v24;
          selfCopy = self;
          v56 = objc_retainBlock(v81);
          if ((v20 & (errorCopy != 0)) == 1 && ([v78 _extractor], (v57 = objc_claimAutoreleasedReturnValue()) != 0) && (v58 = objc_msgSend(v78, "_extractorFinishedDecoding"), v57, (v58 & 1) == 0))
          {
            v79[0] = _NSConcreteStackBlock;
            v79[1] = 3221225472;
            v79[2] = sub_100028D98;
            v79[3] = &unk_1000D5F30;
            v80 = v56;
            [v78 terminateExtractorWithError:errorCopy completion:v79];
          }

          else
          {
            (v56[2])(v56);
          }
        }

        goto LABEL_57;
      }
    }

    else
    {
    }

    v34 = qword_1000EB210;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      uuid7 = [(NDBackgroundSession *)self uuid];
      _loggableDescription6 = [v78 _loggableDescription];
      v43 = self->_clientBundleID;
      code3 = [errorCopy code];
      *buf = 138544130;
      v87 = uuid7;
      v88 = 2114;
      v89 = _loggableDescription6;
      v90 = 2114;
      v91 = v43;
      v92 = 2048;
      v93 = code3;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for client %{public}@ completed with error - code: %ld", buf, 0x2Au);
    }

    goto LABEL_40;
  }

LABEL_57:
}

- (void)URLSession:(id)session task:(id)task didReceiveInformationalResponse:(id)response
{
  taskCopy = task;
  responseCopy = response;
  v9 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:taskCopy];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [taskCopy _loggableDescription];
    v23 = 138544130;
    v24 = uuid;
    v25 = 2114;
    v26 = _loggableDescription;
    v27 = 2112;
    v28 = responseCopy;
    v29 = 1024;
    statusCode = [responseCopy statusCode];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ didReceiveInformationalResponse: %@, status code: %d", &v23, 0x26u);
  }

  resumableUploadState = [taskCopy resumableUploadState];
  isResumable = [resumableUploadState isResumable];

  if (isResumable)
  {
    identifiersToTaskInfo = self->_identifiersToTaskInfo;
    v17 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
    v18 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v17];

    resumableUploadData = [v18 resumableUploadData];
    LODWORD(v17) = resumableUploadData == 0;

    if (v17)
    {
      resumableUploadState2 = [taskCopy resumableUploadState];
      createResumeDataForTaskInfo = [resumableUploadState2 createResumeDataForTaskInfo];
      [v18 setResumableUploadData:createResumeDataForTaskInfo];

      v22 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
      [(NDBackgroundSession *)self queueUpdatesForTask:v22 updateType:2 highPriority:0];
    }
  }

  [(NSXPCProxyCreating *)self->_clientProxy backgroundTask:unsignedIntegerValue didReceiveInformationalResponse:responseCopy];
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  taskCopy = task;
  streamCopy = stream;
  v9 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:taskCopy];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v12 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  v13 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v12];

  [v13 setShouldCancelOnDisconnect:1];
  [v13 setDisablesRetry:!self->_retryDataTasks];
  v14 = qword_1000EB210;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [taskCopy _loggableDescription];
    *buf = 138543618;
    v29 = uuid;
    v30 = 2114;
    v31 = _loggableDescription;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ needs new body stream", buf, 0x16u);
  }

  clientProxy = self->_clientProxy;
  if (clientProxy)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000293A4;
    v25[3] = &unk_1000D6240;
    v25[4] = self;
    v18 = taskCopy;
    v26 = v18;
    v19 = streamCopy;
    v27 = v19;
    v20 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v25];
    v21 = sub_100005040(v18);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000294F0;
    v22[3] = &unk_1000D5818;
    v22[4] = self;
    v24 = unsignedIntegerValue;
    v23 = v19;
    [v20 backgroundTask:unsignedIntegerValue needNewBodyStream:v21 withReply:v22];
  }

  else
  {
    (*(streamCopy + 2))(streamCopy, 0);
  }
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  taskCopy = task;
  v11 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:?];
  unsignedIntegerValue = [v11 unsignedIntegerValue];

  identifiersToMonitors = self->_identifiersToMonitors;
  v14 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  v15 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v14];

  if (v15)
  {
    [v15 taskTransferredData:data countOfBytesReceived:0 cellular:{objc_msgSend(taskCopy, "_connectionIsCellular")}];
  }

  [(NSXPCProxyCreating *)self->_clientProxy backgroundTask:unsignedIntegerValue didSendBodyData:data totalBytesSent:sent totalBytesExpectedToSend:send];
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  v70 = taskCopy;
  v14 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:taskCopy];
  unsignedIntegerValue = [v14 unsignedIntegerValue];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v17 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
  v18 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v17];

  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_10002A0D0;
  v79[3] = &unk_1000D57A0;
  v19 = v18;
  v80 = v19;
  selfCopy = self;
  v65 = unsignedIntegerValue;
  v83 = unsignedIntegerValue;
  v20 = handlerCopy;
  v82 = v20;
  v69 = objc_retainBlock(v79);
  if (![v19 isDiscretionary])
  {
    goto LABEL_24;
  }

  v61 = [requestCopy URL];
  host = [v61 host];
  currentRequest = [v19 currentRequest];
  v63 = [currentRequest URL];
  host2 = [v63 host];
  v21 = [host isEqualToString:?];
  if (v21)
  {
    v55 = [requestCopy URL];
    scheme = [v55 scheme];
    currentRequest2 = [v19 currentRequest];
    v57 = [currentRequest2 URL];
    scheme2 = [v57 scheme];
    if ([scheme isEqualToString:?])
    {
      v52 = [requestCopy URL];
      port = [v52 port];
      currentRequest3 = [v19 currentRequest];
      v54 = [currentRequest3 URL];
      port2 = [v54 port];
      if (port == port2)
      {
        v26 = 0;
        goto LABEL_9;
      }

      v22 = 1;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  _taskGroup = [v70 _taskGroup];
  _groupConfiguration = [_taskGroup _groupConfiguration];
  _duetPreauthorized = [_groupConfiguration _duetPreauthorized];

  v26 = _duetPreauthorized ^ 1;
  if (!v22)
  {
    if (!v21)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_9:

  if (v21)
  {
LABEL_12:
  }

LABEL_13:

  if (v26)
  {
    v27 = qword_1000EB210;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(NDBackgroundSession *)self uuid];
      _loggableDescription = [v70 _loggableDescription];
      currentRequest4 = [v19 currentRequest];
      *buf = 138544130;
      v85 = uuid;
      v86 = 2114;
      v87 = _loggableDescription;
      v88 = 2112;
      v89 = requestCopy;
      v90 = 2112;
      v91 = currentRequest4;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ modifying conditional connection properties since new request %@ is to a different host than previous request %@", buf, 0x2Au);
    }

    _copySocketStreamProperties = [v70 _copySocketStreamProperties];
    if (!_copySocketStreamProperties)
    {
      _copySocketStreamProperties = objc_opt_new();
    }

    v32 = kCFStreamPropertyConditionalConnectionProperties;
    v33 = [_copySocketStreamProperties objectForKeyedSubscript:kCFStreamPropertyConditionalConnectionProperties];
    v34 = [v33 mutableCopy];

    if (!v34)
    {
      v34 = objc_opt_new();
    }

    [v34 setObject:&off_1000D8920 forKeyedSubscript:kConditionalConnectionRequirementTimeWindowDelay];
    [v34 setObject:&off_1000D8950 forKeyedSubscript:kConditionalConnectionRequirementTimeWindowDuration];
    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:kConditionalConnectionIsDiscretionary];
    _legacySocketStreamProperties = [v70 _legacySocketStreamProperties];
    v36 = [_legacySocketStreamProperties mutableCopy];
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = objc_opt_new();
    }

    v39 = v38;

    [v39 setObject:v34 forKeyedSubscript:v32];
    [v70 set_legacySocketStreamProperties:v39];
  }

LABEL_24:
  [v19 setCurrentRequest:requestCopy];
  v40 = [requestCopy URL];
  v41 = [(NDBackgroundSession *)self errorIfBlockedTracker:v70 url:v40];

  if (v41)
  {
    v42 = 0;
    v43 = v20;
LABEL_30:
    (v43[2])(v43, v42);
    goto LABEL_31;
  }

  v44 = qword_1000EB210;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    uuid2 = [(NDBackgroundSession *)self uuid];
    _loggableDescription2 = [v70 _loggableDescription];
    *buf = 138544130;
    v85 = uuid2;
    v86 = 2114;
    v87 = _loggableDescription2;
    v88 = 2112;
    v89 = redirectionCopy;
    v90 = 2112;
    v91 = requestCopy;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ willPerformHTTPRedirection, response: %@, new request: %@", buf, 0x2Au);
  }

  clientProxy = self->_clientProxy;
  v43 = v69;
  v42 = requestCopy;
  if (!clientProxy)
  {
    goto LABEL_30;
  }

  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_10002A190;
  v75[3] = &unk_1000D5438;
  v75[4] = self;
  v48 = v70;
  v76 = v48;
  v49 = v69;
  v78 = v49;
  v50 = requestCopy;
  v77 = v50;
  v51 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v75];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10002A2D8;
  v71[3] = &unk_1000D57C8;
  v71[4] = self;
  v72 = v48;
  v73 = v20;
  v74 = v49;
  [v51 backgroundTask:v65 willPerformHTTPRedirection:redirectionCopy withNewRequest:v50 reply:v71];

LABEL_31:
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  v63 = taskCopy;
  v11 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:taskCopy];
  unsignedIntegerValue = [v11 unsignedIntegerValue];

  v12 = qword_1000EB210;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [taskCopy _loggableDescription];
    protectionSpace = [challengeCopy protectionSpace];
    clientBundleID = self->_clientBundleID;
    protectionSpace2 = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace2 authenticationMethod];
    *buf = 138544642;
    *&buf[4] = uuid;
    *&buf[12] = 2114;
    *&buf[14] = _loggableDescription;
    *&buf[22] = 2112;
    v72 = challengeCopy;
    v73 = 2112;
    v74 = protectionSpace;
    v75 = 2114;
    v76 = clientBundleID;
    v77 = 2114;
    v78 = authenticationMethod;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ didReceiveChallenge: %@ protection space: %@ for client %{public}@ received auth challenge with type %{public}@", buf, 0x3Eu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v72) = 0;
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_10002AE88;
  v64[3] = &unk_1000D5778;
  v66 = buf;
  v19 = handlerCopy;
  v65 = v19;
  v20 = objc_retainBlock(v64);
  if (!self->_performsEVCertCheck || ([challengeCopy protectionSpace], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "authenticationMethod"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", NSURLAuthenticationMethodServerTrust), v22, v21, !v23))
  {
    if (!sub_100005A04(challengeCopy) || self->_clientImplementsSessionChallenge || self->_clientImplementsTaskChallenge)
    {
      if (sub_100005A04(challengeCopy) || self->_clientImplementsTaskChallenge)
      {
        if (self->_clientProxy)
        {
          goto LABEL_36;
        }

        if (self->_sendsLaunchEvents && [(NDApplication *)self->_clientApplication supportsWakes])
        {
          if (self->_clientProxy)
          {
            goto LABEL_36;
          }

          protectionSpace3 = [challengeCopy protectionSpace];
          authenticationMethod2 = [protectionSpace3 authenticationMethod];
          v36 = [authenticationMethod2 isEqualToString:NSURLAuthenticationMethodServerTrust];

          if (v36)
          {
            protectionSpace4 = [challengeCopy protectionSpace];
            serverTrust = [protectionSpace4 serverTrust];

            if (!SecTrustEvaluateWithError(serverTrust, 0))
            {
              goto LABEL_36;
            }

            v39 = qword_1000EB210;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              uuid2 = [(NDBackgroundSession *)self uuid];
              _loggableDescription2 = [v63 _loggableDescription];
              *v67 = 138543618;
              v68 = uuid2;
              v69 = 2114;
              v70 = _loggableDescription2;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ client is not running and trust is valid, performing default handling for auth challenge", v67, 0x16u);
            }
          }

          else
          {
            if (self->_clientProxy)
            {
              goto LABEL_36;
            }

            if ([challengeCopy previousFailureCount])
            {
              goto LABEL_36;
            }

            proposedCredential = [challengeCopy proposedCredential];
            v56 = proposedCredential == 0;

            if (v56)
            {
              goto LABEL_36;
            }

            v39 = qword_1000EB210;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              uuid3 = [(NDBackgroundSession *)self uuid];
              _loggableDescription3 = [v63 _loggableDescription];
              *v67 = 138543618;
              v68 = uuid3;
              v69 = 2114;
              v70 = _loggableDescription3;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ client is not running and challenge has a previousFailureCount of 0 and a proposedCredential, performing default handling for auth challenge", v67, 0x16u);
            }
          }
        }

        else
        {
          v39 = qword_1000EB210;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            uuid4 = [(NDBackgroundSession *)self uuid];
            _loggableDescription4 = [v63 _loggableDescription];
            *v67 = 138543618;
            v68 = uuid4;
            v69 = 2114;
            v70 = _loggableDescription4;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ client is not running and doesn't support app wakes, performing default handling for auth challenge", v67, 0x16u);
          }
        }
      }

      else
      {
        v39 = qword_1000EB210;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          uuid5 = [(NDBackgroundSession *)self uuid];
          _loggableDescription5 = [v63 _loggableDescription];
          *v67 = 138543618;
          v68 = uuid5;
          v69 = 2114;
          v70 = _loggableDescription5;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ client doesn't implement task-level auth challenge delegate, performing default handling for auth challenge", v67, 0x16u);
        }
      }
    }

    else
    {
      v39 = qword_1000EB210;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        uuid6 = [(NDBackgroundSession *)self uuid];
        _loggableDescription6 = [v63 _loggableDescription];
        *v67 = 138543618;
        v68 = uuid6;
        v69 = 2114;
        v70 = _loggableDescription6;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ client doesn't implement session-level or task-level auth challenge delegate, performing default handling for auth challenge", v67, 0x16u);
      }
    }

    (v20[2])(v20);
    goto LABEL_36;
  }

  v24 = qword_1000EB210;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    uuid7 = [(NDBackgroundSession *)self uuid];
    _loggableDescription7 = [v63 _loggableDescription];
    *v67 = 138543618;
    v68 = uuid7;
    v69 = 2114;
    v70 = _loggableDescription7;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ performing Extended Validation Trust evaluation", v67, 0x16u);
  }

  protectionSpace5 = [challengeCopy protectionSpace];
  serverTrust2 = [protectionSpace5 serverTrust];

  LODWORD(protectionSpace5) = [(NDBackgroundSession *)self trustPassesExtendedValidation:serverTrust2];
  v29 = qword_1000EB210;
  v30 = v29;
  if (protectionSpace5)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      uuid8 = [(NDBackgroundSession *)self uuid];
      _loggableDescription8 = [v63 _loggableDescription];
      *v67 = 138543618;
      v68 = uuid8;
      v69 = 2114;
      v70 = _loggableDescription8;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ Extended Validation Trust evaluation succeeded", v67, 0x16u);
    }

    v33 = [NSURLCredential credentialForTrust:serverTrust2];
    (*(v19 + 2))(v19, 0, v33);
  }

  else
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      uuid9 = [(NDBackgroundSession *)self uuid];
      _loggableDescription9 = [v63 _loggableDescription];
      *v67 = 138543618;
      v68 = uuid9;
      v69 = 2114;
      v70 = _loggableDescription9;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ Extended Validation Trust evaluation failed", v67, 0x16u);
    }

    (*(v19 + 2))(v19, 2, 0);
  }

  *(*&buf[8] + 24) = 1;
LABEL_36:
  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    v48 = [PendingCallback alloc];
    v49 = objc_retainBlock(v19);
    v50 = [v49 copy];
    v51 = [NSArray arrayWithObjects:challengeCopy, v50, 0];
    v52 = [(PendingCallback *)v48 initWithCallbackType:2 taskIdentifier:unsignedIntegerValue args:v51];

    [v63 _releasePreventIdleSleepAssertionIfAppropriate];
    callbackQueue = self->_callbackQueue;
    if (self->_sendsLaunchEvents)
    {
      if ([(NDApplication *)self->_clientApplication supportsWakes])
      {
        v54 = 2;
      }

      else
      {
        v54 = 0;
      }
    }

    else
    {
      v54 = 0;
    }

    [(NDCallbackQueue *)callbackQueue addPendingCallback:v52 wakeRequirement:v54];
  }

  _Block_object_dispose(buf, 8);
}

- (BOOL)trustPassesExtendedValidation:(__SecTrust *)validation
{
  if (validation)
  {
    error = 0;
    if (!SecTrustEvaluateWithError(validation, &error))
    {
      v6 = qword_1000EB210;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        uuid = [(NDBackgroundSession *)self uuid];
        v11 = error;
        code = [(__CFError *)error code];
        *buf = 138543618;
        v16 = uuid;
        v17 = 2048;
        v18 = code;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Invalid trust status: %ld", buf, 0x16u);
      }

      v7 = 0;
      goto LABEL_15;
    }

    v4 = SecTrustCopyInfo();
    v5 = v4;
    if (v4)
    {
      v6 = CFDictionaryGetValue(v4, kSecTrustInfoExtendedValidationKey);
      if ((objc_opt_respondsToSelector() & 1) != 0 && ([v6 BOOLValue]& 1) != 0)
      {
        v7 = 1;
      }

      else
      {
        v8 = qword_1000EB210;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          uuid2 = [(NDBackgroundSession *)self uuid];
          *buf = 138543362;
          v16 = uuid2;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Extended trust validation failed", buf, 0xCu);
        }

        v7 = 0;
      }

      CFRelease(v5);
LABEL_15:

      return v7;
    }
  }

  return 0;
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    v10 = 138544130;
    v11 = uuid;
    v12 = 2112;
    v13 = sessionCopy;
    v14 = 2112;
    v15 = errorCopy;
    v16 = 2048;
    code = [errorCopy code];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Session %@ didBecomeInvalidWithError: %@ [%ld]", &v10, 0x2Au);
  }
}

- (void)invalidateWithReply:(id)reply
{
  replyCopy = reply;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    identifier = self->_identifier;
    clientBundleID = self->_clientBundleID;
    v13 = 138543874;
    v14 = uuid;
    v15 = 2112;
    v16 = identifier;
    v17 = 2114;
    v18 = clientBundleID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> InvalidateWithReply: for session %@ bundle ID %{public}@", &v13, 0x20u);
  }

  if ([(NDCallbackQueue *)self->_callbackQueue count]&& [(NSMutableDictionary *)self->_identifiersToTasks count]|| [(NDBackgroundSession *)self sessionHasOutstandingTasks])
  {
    invalidateReply = [(NDBackgroundSession *)self invalidateReply];
    v10 = invalidateReply == 0;

    if (v10)
    {
      [(NDBackgroundSession *)self setInvalidateReply:replyCopy];
    }
  }

  else
  {
    v11 = qword_1000EB210;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      v13 = 138543362;
      v14 = uuid2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Cleaning up and invalidating immediately since there are no tasks", &v13, 0xCu);
    }

    [(NDBackgroundSession *)self cleanupSessionWithCompletionHandler:replyCopy];
  }
}

- (void)resetStorageWithReply:(id)reply
{
  replyCopy = reply;
  [(NDCredentialStorage *)self->_credentialStorage reset];
  replyCopy[2]();
}

- (void)setTLSSessionCachePrefix:(id)prefix
{
  prefixCopy = prefix;
  [(NSURLSession *)self->_userInitiatedSession set_tlsSessionCachePrefix:?];
  [(NSURLSession *)self->_discretionaryPrioritySession set_tlsSessionCachePrefix:prefixCopy];
}

- (void)applyOverrides:(id)overrides forTaskWithIdentifier:(unint64_t)identifier
{
  overridesCopy = overrides;
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:identifier];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v11 = [NSNumber numberWithUnsignedInteger:identifier];
  v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

  currentRequest = [v12 currentRequest];
  v14 = [currentRequest mutableCopy];

  if ([overridesCopy _allowsCellularAccess])
  {
    [v14 setAllowsCellularAccess:{objc_msgSend(overridesCopy, "_allowsCellularAccess") == 1}];
  }

  if ([overridesCopy _allowsExpensiveNetworkAccess])
  {
    [v14 setAllowsExpensiveNetworkAccess:{objc_msgSend(overridesCopy, "_allowsExpensiveNetworkAccess") == 1}];
  }

  if ([overridesCopy _allowsConstrainedNetworkAccess])
  {
    [v14 setAllowsConstrainedNetworkAccess:{objc_msgSend(overridesCopy, "_allowsConstrainedNetworkAccess") == 1}];
  }

  [v12 setCurrentRequest:v14];
  if ([overridesCopy _requiresPowerPluggedIn])
  {
    [v12 set_requiresPowerPluggedIn:{objc_msgSend(overridesCopy, "_requiresPowerPluggedIn")}];
  }

  v15 = qword_1000EB210;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [v9 _loggableDescription];
    v19 = 138543874;
    v20 = uuid;
    v21 = 2114;
    v22 = _loggableDescription;
    v23 = 2112;
    v24 = overridesCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ applying overrides %@", &v19, 0x20u);
  }

  v18 = [v9 error:@"_nsurlsessiondErrorDomain" code:10];
  [v9 cancel_with_error:v18];
}

- (void)setDiscretionaryOverride:(int64_t)override forTaskWithIdentifier:(unint64_t)identifier
{
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:identifier];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v11 = [NSNumber numberWithUnsignedInteger:identifier];
  v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

  v13 = +[NSXPCConnection currentConnection];
  v14 = sub_100008D00(v13, @"com.apple.private.nsurlsession.set-discretionary-override-value");

  if (v14)
  {
    [v12 setQos:qos_class_self()];
    v15 = qword_1000EB210;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(NDBackgroundSession *)self uuid];
      _loggableDescription = [v9 _loggableDescription];
      if (override)
      {
        if (override == 1)
        {
          v18 = 68;
        }

        else if (override == 2)
        {
          v18 = 78;
        }

        else
        {
          v18 = 63;
        }
      }

      else
      {
        v18 = 45;
      }

      v27 = 138544130;
      v28 = uuid;
      v29 = 2114;
      v30 = _loggableDescription;
      v31 = 1024;
      v32 = v18;
      v33 = 1024;
      LODWORD(v34) = [v12 qos];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ setting discretionaryOverrride to %c, QOS(0x%x)", &v27, 0x22u);
    }

    [v9 set_discretionaryOverride:override];
    [v12 setDiscretionaryOverride:override];
    [v12 setMayBeDemotedToDiscretionary:1];
    currentRequest = [v12 currentRequest];
    v25 = [(NDBackgroundSession *)self currentDiscretionaryStatus:currentRequest withOptionalTaskInfo:v12];

    if ((!sub_100005040(v9) || ([v9 _seenFirstResume] & 1) == 0) && v25 != objc_msgSend(v12, "isDiscretionary") && objc_msgSend(v12, "hasStarted"))
    {
      v26 = [v9 error:@"_nsurlsessiondErrorDomain" code:6];
      [v9 cancel_with_error:v26];
    }

    v19 = +[NDStatusMonitor sharedMonitor];
    [v19 simulateNetworkChangedEvent:self identifier:identifier];
  }

  else
  {
    v19 = qword_1000EB210;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      _loggableDescription2 = [v9 _loggableDescription];
      v22 = _loggableDescription2;
      if (override)
      {
        if (override == 1)
        {
          v23 = 68;
        }

        else if (override == 2)
        {
          v23 = 78;
        }

        else
        {
          v23 = 63;
        }
      }

      else
      {
        v23 = 45;
      }

      v27 = 138544130;
      v28 = uuid2;
      v29 = 2114;
      v30 = _loggableDescription2;
      v31 = 1024;
      v32 = v23;
      v33 = 2112;
      v34 = @"com.apple.private.nsurlsession.set-discretionary-override-value";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ attempted to set discretionaryOverrride to %c but lacks required entitlement %@", &v27, 0x26u);
    }
  }
}

- (void)setExpectedProgressTarget:(unint64_t)target forTaskWithIdentifier:(unint64_t)identifier
{
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:identifier];
  v13 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v10 = [NSNumber numberWithUnsignedInteger:identifier];
  v11 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v10];

  [v13 set_expectedProgressTarget:target];
  [v11 setExpectedProgressTarget:target];
  v12 = [NSNumber numberWithUnsignedInteger:identifier];
  [(NDBackgroundSession *)self queueUpdatesForTask:v12 updateType:6 highPriority:0];
}

- (void)setBytesPerSecondLimit:(int64_t)limit forTaskWithIdentifier:(unint64_t)identifier
{
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:identifier];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v11 = [NSNumber numberWithUnsignedInteger:identifier];
  v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

  v13 = qword_1000EB210;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [v9 _loggableDescription];
    v17 = 138543874;
    v18 = uuid;
    v19 = 2114;
    v20 = _loggableDescription;
    v21 = 2048;
    limitCopy = limit;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ setting limit of %lld bytes per second", &v17, 0x20u);
  }

  [v9 set_bytesPerSecondLimit:limit];
  [v12 setBytesPerSecondLimit:limit];
  v16 = [NSNumber numberWithUnsignedInteger:identifier];
  [(NDBackgroundSession *)self queueUpdatesForTask:v16 updateType:5 highPriority:0];
}

- (void)setLoadingPoolPriority:(double)priority forTaskWithIdentifier:(unint64_t)identifier
{
  v7 = +[NSXPCConnection currentConnection];
  v8 = sub_100008D00(v7, @"com.apple.private.nsurlsession.set-task-priority");

  if (v8)
  {
    identifiersToTasks = self->_identifiersToTasks;
    v10 = [NSNumber numberWithUnsignedInteger:identifier];
    v11 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v10];

    identifiersToTaskInfo = self->_identifiersToTaskInfo;
    v13 = [NSNumber numberWithUnsignedInteger:identifier];
    v14 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v13];

    v15 = qword_1000EB210;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(NDBackgroundSession *)self uuid];
      _loggableDescription = [v11 _loggableDescription];
      v21 = 138543874;
      v22 = uuid;
      v23 = 2114;
      v24 = _loggableDescription;
      v25 = 2048;
      priorityCopy = priority;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ setting loading priority to %f", &v21, 0x20u);
    }

    [v11 set_loadingPriority:priority];
    [v14 setLoadingPriority:priority];
    v18 = [NSNumber numberWithUnsignedInteger:identifier];
    [(NDBackgroundSession *)self queueUpdatesForTask:v18 updateType:4 highPriority:0];
  }

  else
  {
    v11 = qword_1000EB210;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      clientBundleID = self->_clientBundleID;
      v21 = 138543874;
      v22 = uuid2;
      v23 = 2114;
      v24 = clientBundleID;
      v25 = 2112;
      priorityCopy = COERCE_DOUBLE(@"com.apple.private.nsurlsession.set-task-priority");
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ tried to set the loading priority of a task but is missing the %@ entitlement", &v21, 0x20u);
    }
  }
}

- (void)setPriority:(int64_t)priority forTaskWithIdentifier:(unint64_t)identifier
{
  v7 = +[NSXPCConnection currentConnection];
  v8 = sub_100008D00(v7, @"com.apple.private.nsurlsession.set-task-priority");

  if (v8)
  {
    identifiersToTasks = self->_identifiersToTasks;
    v10 = [NSNumber numberWithUnsignedInteger:identifier];
    v11 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v10];

    identifiersToTaskInfo = self->_identifiersToTaskInfo;
    v13 = [NSNumber numberWithUnsignedInteger:identifier];
    v14 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v13];

    v15 = qword_1000EB210;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(NDBackgroundSession *)self uuid];
      _loggableDescription = [v11 _loggableDescription];
      *buf = 138543874;
      v46 = uuid;
      v47 = 2114;
      v48 = _loggableDescription;
      v49 = 2048;
      priorityCopy = priority;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ setting priority to %ld", buf, 0x20u);
    }

    hasStarted = [v14 hasStarted];
    if (priority > 300)
    {
      v19 = 1;
    }

    else
    {
      v19 = hasStarted;
    }

    if ((v19 & 1) == 0 && [v14 isDiscretionary])
    {
      v20 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:0];
      configuration = [v20 configuration];
      _socketStreamProperties = [configuration _socketStreamProperties];
      v23 = [_socketStreamProperties mutableCopy];

      v24 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:0];
      configuration2 = [v24 configuration];
      if ([configuration2 allowsCellularAccess])
      {
        originalRequest = [v14 originalRequest];
        allowsCellularAccess = [originalRequest allowsCellularAccess];

        if (allowsCellularAccess)
        {
          [v23 setObject:&__kCFBooleanFalse forKeyedSubscript:kCFStreamPropertyNoCellular];
        }
      }

      else
      {
      }

      [v23 setObject:&__kCFBooleanFalse forKeyedSubscript:kCFStreamPropertyDUETConditional];
      v30 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:0];
      configuration3 = [v30 configuration];
      _duetPreauthorized = [configuration3 _duetPreauthorized];

      if ((_duetPreauthorized & 1) == 0)
      {
        v33 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:0];
        configuration4 = [v33 configuration];
        _requiresPowerPluggedIn = [configuration4 _requiresPowerPluggedIn];

        if (_requiresPowerPluggedIn)
        {
          v43 = kConditionalConnectionRequirementPowerPluggedIn;
          v44 = &__kCFBooleanTrue;
          v36 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          [v23 setObject:v36 forKeyedSubscript:kCFStreamPropertyConditionalConnectionProperties];
        }

        else
        {
          v41 = kConditionalConnectionIsDiscretionary;
          v42 = &__kCFBooleanFalse;
          v36 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
          [v23 setObject:v36 forKeyedSubscript:kCFStreamPropertyConditionalConnectionProperties];
        }
      }

      [v11 set_legacySocketStreamProperties:v23];
      [v14 setDiscretionary:0];
    }

    [v14 setBasePriority:priority];
    [v14 setBasePrioritySetExplicitly:1];
    identifiersToMonitors = self->_identifiersToMonitors;
    v38 = [NSNumber numberWithUnsignedInteger:identifier];
    v39 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v38];

    [v39 setBasePriority:priority];
    sub_100008C24(v11, priority, self->_monitoredApplication);
    v40 = [NSNumber numberWithUnsignedInteger:identifier];
    [(NDBackgroundSession *)self queueUpdatesForTask:v40 updateType:12 highPriority:0];
  }

  else
  {
    v11 = qword_1000EB210;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      clientBundleID = self->_clientBundleID;
      *buf = 138543874;
      v46 = uuid2;
      v47 = 2114;
      v48 = clientBundleID;
      v49 = 2112;
      priorityCopy = @"com.apple.private.nsurlsession.set-task-priority";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ tried to set the priority of a task but is missing the %@ entitlement", buf, 0x20u);
    }
  }
}

- (void)setDescription:(id)description forTask:(unint64_t)task
{
  descriptionCopy = description;
  identifiersToTasks = self->_identifiersToTasks;
  v7 = [NSNumber numberWithUnsignedInteger:task];
  v8 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v7];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v10 = [NSNumber numberWithUnsignedInteger:task];
  v11 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v10];

  [v11 setTaskDescription:descriptionCopy];
  [v8 setTaskDescription:descriptionCopy];
  v12 = [NSNumber numberWithUnsignedInteger:task];
  [(NDBackgroundSession *)self queueUpdatesForTask:v12 updateType:0 highPriority:1];
}

- (void)setPropertyOnStreamWithIdentifier:(unint64_t)identifier propDict:(id)dict propKey:(id)key withReply:(id)reply
{
  dictCopy = dict;
  keyCopy = key;
  replyCopy = reply;
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v14 = [NSNumber numberWithUnsignedInteger:identifier];
  v15 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v14];

  v16 = qword_1000EB210;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [v15 _loggableDescription];
    clientBundleID = self->_clientBundleID;
    v24 = 138544130;
    v25 = uuid;
    v26 = 2114;
    v27 = _loggableDescription;
    v28 = 2114;
    v29 = clientBundleID;
    v30 = 2112;
    v31 = dictCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ setPropertyOnStreamWithIdentifier, client %{public}@ property %@", &v24, 0x2Au);
  }

  if (dictCopy && keyCopy && replyCopy)
  {
    identifiersToStreams = self->_identifiersToStreams;
    if (identifiersToStreams)
    {
      v21 = [NSNumber numberWithUnsignedInteger:identifier];
      v22 = [(NSMutableDictionary *)identifiersToStreams objectForKeyedSubscript:v21];
      v23 = [v22 setProperty:dictCopy forKey:keyCopy];
    }

    else
    {
      v23 = 0;
    }

    replyCopy[2](replyCopy, v23);
  }
}

- (void)resumeTaskWithIdentifier:(unint64_t)identifier withProperties:(id)properties
{
  propertiesCopy = properties;
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:identifier];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v11 = [NSNumber numberWithUnsignedInteger:identifier];
  v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

  v13 = qword_1000EB210;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [v9 _loggableDescription];
    v28 = 138543874;
    v29 = uuid;
    v30 = 2114;
    v31 = _loggableDescription;
    v32 = 2112;
    v33 = propertiesCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ resumeTaskWithIdentifier, props %@", &v28, 0x20u);
  }

  if (v12)
  {
    if ([v12 state] == 1 && (v16 = objc_msgSend(v12, "suspendCount") - 1, objc_msgSend(v12, "setSuspendCount:", v16), !v16))
    {
      [v12 setState:0];
      [v12 setQos:qos_class_self()];
      v18 = +[UMUserManager sharedManager];
      currentPersona = [v18 currentPersona];
      userPersonaUniqueString = [currentPersona userPersonaUniqueString];
      [v12 setPersonaUniqueString:userPersonaUniqueString];

      v21 = qword_1000EB210;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        uuid2 = [(NDBackgroundSession *)self uuid];
        _loggableDescription2 = [v9 _loggableDescription];
        v24 = [v12 qos];
        v28 = 138543874;
        v29 = uuid2;
        v30 = 2114;
        v31 = _loggableDescription2;
        v32 = 1024;
        LODWORD(v33) = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ resuming, QOS(0x%x)", &v28, 0x1Cu);
      }

      v25 = [(NDBackgroundSession *)self sanitizeTaskProperties:propertiesCopy];
      [v12 setAdditionalProperties:v25];

      if (([v12 disablesRetry] & 1) == 0)
      {
        v26 = [propertiesCopy objectForKeyedSubscript:@"disableRetry"];
        [v12 setDisablesRetry:{objc_msgSend(v26, "isEqual:", &__kCFBooleanTrue)}];
      }

      [(NDBackgroundSession *)self configureAdditionalPropertiesOnTask:v9 taskInfo:v12];
      currentRequest = [v9 currentRequest];
      [v12 setCurrentRequest:currentRequest];

      [(NSXPCProxyCreating *)self->_clientProxy backgroundTaskDidResume:identifier];
      [v9 startResourceTimer];
      [(NDBackgroundSession *)self taskShouldResume:identifier];
    }

    else
    {
      v17 = [NSNumber numberWithUnsignedInteger:identifier];
      [(NDBackgroundSession *)self queueUpdatesForTask:v17 updateType:11 highPriority:1];
    }
  }
}

- (void)suspendTaskWithIdentifier:(unint64_t)identifier
{
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v6];

  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [v7 _loggableDescription];
    v13 = 138543618;
    v14 = uuid;
    v15 = 2114;
    v16 = _loggableDescription;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ suspendTaskWithIdentifier", &v13, 0x16u);
  }

  if (v7)
  {
    suspendCount = [v7 suspendCount];
    [v7 setSuspendCount:suspendCount + 1];
    if (!suspendCount)
    {
      [v7 setState:1];
      [(NSXPCProxyCreating *)self->_clientProxy backgroundTaskDidSuspend:identifier];
      [(NDBackgroundSession *)self taskShouldSuspend:identifier];
    }

    v12 = [NSNumber numberWithUnsignedInteger:identifier];
    [(NDBackgroundSession *)self queueUpdatesForTask:v12 updateType:11 highPriority:1];
  }
}

- (void)cancelTaskWithIdentifier:(unint64_t)identifier
{
  identifiersToTasks = self->_identifiersToTasks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v6];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v9 = [NSNumber numberWithUnsignedInteger:identifier];
  v10 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v9];

  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [v7 _loggableDescription];
    v14 = 138543618;
    v15 = uuid;
    v16 = 2114;
    v17 = _loggableDescription;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ cancelTaskWithIdentifier", &v14, 0x16u);
  }

  [v10 setState:2];
  [v10 setResumedAndWaitingForEarliestBeginDate:0];
  [v7 cancel];
}

- (void)cancelTaskWithIdentifier:(unint64_t)identifier byProducingResumeData:(id)data
{
  dataCopy = data;
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:identifier];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v11 = [NSNumber numberWithUnsignedInteger:identifier];
  v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

  [v12 setState:2];
  [v12 setResumedAndWaitingForEarliestBeginDate:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v17;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002D924;
    v17[3] = &unk_1000D5410;
    v17[4] = self;
    v14 = v9;
    v17[5] = v14;
    v17[6] = dataCopy;
    [v14 cancelByProducingResumeData:v17];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      (*(dataCopy + 2))(dataCopy, 0);
      goto LABEL_7;
    }

    v13 = v16;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10002DA60;
    v16[3] = &unk_1000D5410;
    v16[4] = self;
    v15 = v9;
    v16[5] = v15;
    v16[6] = dataCopy;
    [v15 cancelByProducingResumeData:v16];
  }

LABEL_7:
}

- (void)dataTaskWithRequest:(id)request originalRequest:(id)originalRequest identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier reply:(id)reply
{
  requestCopy = request;
  originalRequestCopy = originalRequest;
  uniqueIdentifierCopy = uniqueIdentifier;
  replyCopy = reply;
  v15 = qword_1000EB210;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    v17 = [(NDBackgroundSession *)self descriptionForRequest:requestCopy];
    *buf = 138544130;
    v29 = uuid;
    v30 = 2114;
    v31 = uniqueIdentifierCopy;
    v32 = 2048;
    identifierCopy = identifier;
    v34 = 2112;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Task <%{public}@>.<%lu> dataTaskWithRequest: %@", buf, 0x2Au);
  }

  v18 = [(NDBackgroundSession *)self currentDiscretionaryStatus:requestCopy withOptionalTaskInfo:0];
  v19 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:v18];
  v20 = [v19 dataTaskWithRequest:requestCopy];

  v21 = [[__NSCFURLSessionTaskInfo alloc] initWithDataTask:v20 uniqueIdentifier:uniqueIdentifierCopy bundleID:self->_clientBundleID sessionID:self->_identifier];
  v22 = v21;
  if (v20)
  {
    v23 = v21 == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = !v23;
  if (v23)
  {
    v25 = qword_1000EB210;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      *buf = 138543874;
      v29 = uuid2;
      v30 = 2112;
      v31 = v20;
      v32 = 2112;
      identifierCopy = v22;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Couldn't create task or taskInfo: task = %@, taskInfo = %@", buf, 0x20u);
    }
  }

  else
  {
    [v20 setOriginalRequest:originalRequestCopy];
    if (!self->_clientImplementsWillSendRequest || !self->_sendsLaunchEvents)
    {
      [v22 setShouldCancelOnDisconnect:1];
    }

    [v22 setDisablesRetry:!self->_retryDataTasks];
    [(NDBackgroundSession *)self performCommonSetupForTask:v20 taskInfo:v22 identifier:identifier discretionaryStatus:v18];
  }

  replyCopy[2](replyCopy, v24);
}

- (void)uploadTaskWithRequest:(id)request originalRequest:(id)originalRequest fromFile:(id)file sandboxExtensionData:(id)data identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier potentialCredentials:(id)credentials reply:(id)self0
{
  requestCopy = request;
  originalRequestCopy = originalRequest;
  fileCopy = file;
  dataCopy = data;
  uniqueIdentifierCopy = uniqueIdentifier;
  credentialsCopy = credentials;
  replyCopy = reply;
  v17 = qword_1000EB210;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    v19 = [(NDBackgroundSession *)self descriptionForRequest:requestCopy];
    *buf = 138544386;
    v40 = uuid;
    v41 = 2114;
    v42 = uniqueIdentifierCopy;
    v43 = 2048;
    identifierCopy = identifier;
    v45 = 2112;
    v46 = v19;
    v47 = 2112;
    v48 = fileCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Task <%{public}@>.<%lu> uploadTaskWithRequest: %@ fromFile: %@", buf, 0x34u);
  }

  v20 = [(NDBackgroundSession *)self currentDiscretionaryStatus:requestCopy withOptionalTaskInfo:0];
  if (fileCopy)
  {
    v21 = [(NDBackgroundSession *)self makeTempUploadFile:fileCopy withExtensionData:dataCopy];
    if (!v21)
    {
      replyCopy[2](replyCopy, 0);
      goto LABEL_24;
    }

    v22 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:v20];
    v23 = [v22 uploadTaskWithRequest:requestCopy fromFile:v21];
  }

  else
  {
    v22 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:v20];
    v23 = [v22 uploadTaskWithStreamedRequest:requestCopy];
    v21 = 0;
  }

  v24 = [[__NSCFURLSessionTaskInfo alloc] initWithUploadTask:v23 uniqueIdentifier:uniqueIdentifierCopy bundleID:self->_clientBundleID sessionID:self->_identifier];
  v25 = v24;
  if (v23)
  {
    v26 = v24 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = !v26;
  if (v26)
  {
    v30 = qword_1000EB210;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      *buf = 138543874;
      v40 = uuid2;
      v41 = 2112;
      v42 = v23;
      v43 = 2112;
      identifierCopy = v25;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Couldn't create task or taskInfo: task = %@, taskInfo = %@", buf, 0x20u);
    }
  }

  else
  {
    if (credentialsCopy)
    {
      v28 = +[Daemon sharedDaemon];
      isInSyncBubble = [v28 isInSyncBubble];

      if ((isInSyncBubble & 1) == 0)
      {
        if (self->_clientBundleID)
        {
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_10002E38C;
          v38[3] = &unk_1000D5700;
          v38[4] = self;
          [credentialsCopy enumerateKeysAndObjectsUsingBlock:v38];
        }
      }
    }

    [v23 setOriginalRequest:originalRequestCopy];
    [v25 setFileURL:v21];
    [(NDBackgroundSession *)self performCommonSetupForTask:v23 taskInfo:v25 identifier:identifier discretionaryStatus:v20];
  }

  replyCopy[2](replyCopy, v27);

LABEL_24:
}

- (void)uploadTaskWithResumableUploadState:(id)state request:(id)request originalRequest:(id)originalRequest fromFile:(id)file sandboxExtensionData:(id)data identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier potentialCredentials:(id)self0 reply:(id)self1
{
  stateCopy = state;
  requestCopy = request;
  originalRequestCopy = originalRequest;
  fileCopy = file;
  dataCopy = data;
  uniqueIdentifierCopy = uniqueIdentifier;
  credentialsCopy = credentials;
  replyCopy = reply;
  v18 = qword_1000EB210;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    *buf = 138543874;
    v43 = uuid;
    v44 = 2114;
    v45 = uniqueIdentifierCopy;
    v46 = 2048;
    identifierCopy = identifier;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Task <%{public}@>.<%lu> uploadTaskWithResumableUploadState", buf, 0x20u);
  }

  v20 = [(NDBackgroundSession *)self currentDiscretionaryStatus:requestCopy withOptionalTaskInfo:0];
  if (fileCopy)
  {
    v21 = [(NDBackgroundSession *)self makeTempUploadFile:fileCopy withExtensionData:dataCopy];
    if (!v21)
    {
      replyCopy[2](replyCopy, 0);
      goto LABEL_26;
    }

    v22 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:v20];
    v23 = [v22 uploadTaskWithRequest:requestCopy fromFile:v21];
  }

  else
  {
    v22 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:v20];
    v23 = [v22 uploadTaskWithStreamedRequest:requestCopy];
    v21 = 0;
  }

  if (stateCopy)
  {
    [v23 setResumableUploadState:stateCopy];
  }

  resumableUploadState = [v23 resumableUploadState];
  [resumableUploadState setUploadFile:v21];

  v25 = [[__NSCFURLSessionTaskInfo alloc] initWithUploadTask:v23 uniqueIdentifier:uniqueIdentifierCopy bundleID:self->_clientBundleID sessionID:self->_identifier];
  v26 = v25;
  if (v23)
  {
    v27 = v25 == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = !v27;
  if (v27)
  {
    v31 = qword_1000EB210;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      *buf = 138543874;
      v43 = uuid2;
      v44 = 2112;
      v45 = v23;
      v46 = 2112;
      identifierCopy = v26;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Couldn't create task or taskInfo: task = %@, taskInfo = %@", buf, 0x20u);
    }
  }

  else
  {
    if (credentialsCopy)
    {
      v29 = +[Daemon sharedDaemon];
      isInSyncBubble = [v29 isInSyncBubble];

      if ((isInSyncBubble & 1) == 0)
      {
        if (self->_clientBundleID)
        {
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_10002EA8C;
          v41[3] = &unk_1000D5700;
          v41[4] = self;
          [credentialsCopy enumerateKeysAndObjectsUsingBlock:v41];
        }
      }
    }

    [v23 setOriginalRequest:originalRequestCopy];
    [v26 setFileURL:v21];
    [(NDBackgroundSession *)self performCommonSetupForTask:v23 taskInfo:v26 identifier:v34 discretionaryStatus:v20];
  }

  replyCopy[2](replyCopy, v28);

LABEL_26:
}

- (void)downloadTaskWithRequest:(id)request originalRequest:(id)originalRequest downloadFilePath:(id)path identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier reply:(id)reply
{
  requestCopy = request;
  originalRequestCopy = originalRequest;
  pathCopy = path;
  uniqueIdentifierCopy = uniqueIdentifier;
  replyCopy = reply;
  v16 = qword_1000EB210;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    v18 = [(NDBackgroundSession *)self descriptionForRequest:requestCopy];
    *buf = 138544130;
    *&buf[4] = uuid;
    *&buf[12] = 2114;
    *&buf[14] = uniqueIdentifierCopy;
    *&buf[22] = 2048;
    *&buf[24] = identifier;
    v46 = 2112;
    v47 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Task <%{public}@>.<%lu> downloadTaskWithRequest: %@", buf, 0x2Au);
  }

  if (_CFN_isSafeRequestForBackgroundDownload())
  {
    v19 = [(NDBackgroundSession *)self currentDiscretionaryStatus:requestCopy withOptionalTaskInfo:0];
    v20 = +[Daemon sharedDaemon];
    isPrivileged = [v20 isPrivileged];
    v22 = pathCopy;
    if (!isPrivileged)
    {
      v22 = 0;
    }

    v23 = v22;

    [(NDBackgroundSession *)self ensureSessionDownloadDirectoryExists];
    v24 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:v19];
    v25 = [v24 _downloadTaskWithRequest:requestCopy downloadFilePath:v23];

    v26 = [[__NSCFURLSessionTaskInfo alloc] initWithDownloadTask:v25 uniqueIdentifier:uniqueIdentifierCopy bundleID:self->_clientBundleID sessionID:self->_identifier];
    v27 = v26;
    if (v25 && v26)
    {
      [v25 setOriginalRequest:originalRequestCopy];
      downloadFile = [v25 downloadFile];
      path = [downloadFile path];

      if (path && ([NSURL fileURLWithPath:path isDirectory:0], (v40 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v29 = +[NSXPCConnection currentConnection];
        v39 = v29;
        v30 = v23;
        if (v29)
        {
          [v29 auditToken];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v34 = [NDFileUtilities safeURLForDownload:v40 auditToken:buf, v39];
        v33 = 1;
      }

      else
      {
        v30 = v23;
        v33 = 0;
        v40 = 0;
        v34 = 0;
      }

      [v27 setDownloadFileURL:v34];
      if (v33)
      {
      }

      v23 = v30;
      [(NDBackgroundSession *)self performCommonSetupForTask:v25 taskInfo:v27 identifier:identifier discretionaryStatus:v19];
      replyCopy[2](replyCopy, 1);
    }

    else
    {
      v32 = qword_1000EB210;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [(NDBackgroundSession *)self uuid];
        *buf = 138543874;
        *&buf[4] = uuid2;
        *&buf[12] = 2112;
        *&buf[14] = v25;
        *&buf[22] = 2112;
        *&buf[24] = v27;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Couldn't create task or taskInfo: task = %@, taskInfo = %@", buf, 0x20u);
      }

      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v31 = qword_1000EB210;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      uuid3 = [(NDBackgroundSession *)self uuid];
      clientBundleID = self->_clientBundleID;
      *buf = 138543874;
      *&buf[4] = uuid3;
      *&buf[12] = 2112;
      *&buf[14] = requestCopy;
      *&buf[22] = 2114;
      *&buf[24] = clientBundleID;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Received an unsafe request for background download: %@ from %{public}@", buf, 0x20u);
    }

    replyCopy[2](replyCopy, 0);
  }
}

- (void)downloadTaskWithResumeData:(id)data identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier reply:(id)reply
{
  dataCopy = data;
  uniqueIdentifierCopy = uniqueIdentifier;
  replyCopy = reply;
  v13 = _CFN_requestFromResumeData();
  if (v13 && (_CFN_isSafeRequestForBackgroundDownload() & 1) != 0)
  {
    v14 = [(NDBackgroundSession *)self currentDiscretionaryStatus:v13 withOptionalTaskInfo:0];
    [(NDBackgroundSession *)self ensureSessionDownloadDirectoryExists];
    v32 = v14;
    v15 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:v14];
    v16 = [v15 downloadTaskWithResumeData:dataCopy];

    v17 = [[__NSCFURLSessionTaskInfo alloc] initWithDownloadTask:v16 uniqueIdentifier:uniqueIdentifierCopy bundleID:self->_clientBundleID sessionID:self->_identifier];
    v18 = v17;
    if (v16 && v17)
    {
      downloadFile = [v16 downloadFile];
      path = [downloadFile path];

      v30 = path;
      if (path && ([NSURL fileURLWithPath:path isDirectory:0], (path = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v21 = +[NSXPCConnection currentConnection];
        v31 = path;
        v29 = v21;
        if (v21)
        {
          [v21 auditToken];
        }

        else
        {
          memset(buf, 0, 32);
        }

        v24 = [NDFileUtilities safeURLForDownload:path auditToken:buf, v29];
        LODWORD(path) = 1;
      }

      else
      {
        v31 = 0;
        v24 = 0;
      }

      [v18 setDownloadFileURL:v24];
      if (path)
      {
      }

      [v18 setExpectingResumeCallback:1];
      [(NDBackgroundSession *)self performCommonSetupForTask:v16 taskInfo:v18 identifier:identifier discretionaryStatus:v32];
      replyCopy[2](replyCopy, 1);
    }

    else
    {
      v23 = qword_1000EB210;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        uuid = [(NDBackgroundSession *)self uuid];
        *buf = 138543874;
        *&buf[4] = uuid;
        *&buf[12] = 2112;
        *&buf[14] = v16;
        *&buf[22] = 2112;
        *&buf[24] = v18;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Couldn't create task or taskInfo: task = %@, taskInfo = %@", buf, 0x20u);
      }

      replyCopy[2](replyCopy, 0);
    }
  }

  else
  {
    v22 = qword_1000EB210;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      clientBundleID = self->_clientBundleID;
      *buf = 138543618;
      *&buf[4] = uuid2;
      *&buf[12] = 2114;
      *&buf[14] = clientBundleID;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Received a background download request from unsafe resume data from %{public}@", buf, 0x16u);
    }

    replyCopy[2](replyCopy, 0);
  }
}

- (void)setupDASPropertiesOnTask:(id)task taskInfo:(id)info discretionaryStatus:(BOOL)status
{
  statusCopy = status;
  taskCopy = task;
  infoCopy = info;
  [(NDApplication *)self->_clientApplication currentRequestDelay];
  v11 = v10;
  _effectiveConfiguration = [taskCopy _effectiveConfiguration];
  _duetPreauthorized = [_effectiveConfiguration _duetPreauthorized];

  if (_duetPreauthorized)
  {
    _copySocketStreamProperties = qword_1000EB210;
    if (os_log_type_enabled(_copySocketStreamProperties, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(NDBackgroundSession *)self uuid];
      _loggableDescription = [taskCopy _loggableDescription];
      *buf = 138543618;
      v45 = uuid;
      v46 = 2114;
      v47 = _loggableDescription;
      _os_log_impl(&_mh_execute_header, _copySocketStreamProperties, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ is duet preauthorized", buf, 0x16u);
    }
  }

  else
  {
    _copySocketStreamProperties = [taskCopy _copySocketStreamProperties];
    v43 = kCFStreamPropertyConditionalConnectionProperties;
    v17 = [_copySocketStreamProperties objectForKeyedSubscript:?];
    v41 = v17;
    if (v17)
    {
      v18 = [v17 mutableCopy];
    }

    else
    {
      v18 = objc_opt_new();
    }

    v19 = v18;
    _legacySocketStreamProperties = [taskCopy _legacySocketStreamProperties];
    if (_legacySocketStreamProperties)
    {
      _legacySocketStreamProperties2 = [taskCopy _legacySocketStreamProperties];
      v22 = [_legacySocketStreamProperties2 mutableCopy];
    }

    else
    {
      v22 = objc_opt_new();
    }

    v23 = objc_opt_new();
    _loggableDescription2 = [taskCopy _loggableDescription];
    [v23 setObject:_loggableDescription2 forKeyedSubscript:kConditionalConnectionActivityName];

    if ([infoCopy taskKind] == 1 || objc_msgSend(infoCopy, "taskKind") == 2 && (objc_msgSend(taskCopy, "originalRequest"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "HTTPBodyStream"), v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26))
    {
      [v23 setObject:&__kCFBooleanTrue forKeyedSubscript:kConditionalConnectionIsUpload];
    }

    [taskCopy set_DuetActivityProperties:v23];
    if (statusCopy && v11 > 0.0)
    {
      currentRequest = [infoCopy currentRequest];
      [currentRequest _timeWindowDelay];
      v29 = v28;

      if (v11 > v29)
      {
        v30 = qword_1000EB210;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          uuid2 = [(NDBackgroundSession *)self uuid];
          _loggableDescription3 = [infoCopy _loggableDescription];
          *buf = 138543874;
          v45 = uuid2;
          v46 = 2114;
          v47 = _loggableDescription3;
          v48 = 2048;
          v49 = v11;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ adding delay of %f", buf, 0x20u);
        }

        v33 = [NSNumber numberWithDouble:v11];
        [v19 setObject:v33 forKeyedSubscript:kConditionalConnectionRequirementTimeWindowDelay];

        [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:kConditionalConnectionIsDiscretionary];
      }
    }

    _effectiveConfiguration2 = [taskCopy _effectiveConfiguration];
    _onBehalfOfPairedDevice = [_effectiveConfiguration2 _onBehalfOfPairedDevice];

    if (_onBehalfOfPairedDevice)
    {
      [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:kConditionalConnectionOnBehalfOfPairedDevice];
    }

    if ([infoCopy isDiscretionary] && objc_msgSend(infoCopy, "startedUserInitiated"))
    {
      v36 = self->_clientApplication;
      if (self->_infersDiscretionary)
      {
        monitoredApplication = self->_monitoredApplication;
        if (monitoredApplication)
        {
          v38 = monitoredApplication;

          v36 = v38;
        }
      }

      if ([(NDApplication *)v36 isInTransitionalDiscretionaryPeriod])
      {
        [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:kConditionalConnectionInTransitionalDiscretionaryPeriod];
      }
    }

    if (self->_shouldElevateDiscretionaryPriority)
    {
      [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:kConditionalConnectionRequirementDiscretionaryElevated];
    }

    additionalProperties = [infoCopy additionalProperties];
    v40 = [additionalProperties objectForKeyedSubscript:@"TimeoutIntervalForResource"];

    if (v40)
    {
      [v19 setObject:v40 forKeyedSubscript:kConditionalConnectionRequirementTimeWindowDuration];
    }

    [v22 setObject:v19 forKeyedSubscript:v43];
    [taskCopy set_legacySocketStreamProperties:v22];
  }
}

- (void)wakeUpClient:(int64_t)client
{
  if (client)
  {
    if (self->_sendsLaunchEvents)
    {
      if ([(NDApplication *)self->_clientApplication supportsWakes])
      {
        if (self->_obliterated)
        {
          uUIDString = qword_1000EB210;
          if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_DEFAULT))
          {
            uuid = [(NDBackgroundSession *)self uuid];
            clientBundleID = self->_clientBundleID;
            *buf = 138543618;
            v39 = uuid;
            v40 = 2114;
            v41 = clientBundleID;
            _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Not waking up client %{public}@ since session is obliterated", buf, 0x16u);
          }
        }

        else if ([(NDBackgroundSession *)self clientIsActive])
        {
          uUIDString = qword_1000EB210;
          if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_DEFAULT))
          {
            uuid2 = [(NDBackgroundSession *)self uuid];
            v16 = self->_clientBundleID;
            *buf = 138543618;
            v39 = uuid2;
            v40 = 2114;
            v41 = v16;
            _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Not waking up client %{public}@ since it's already connected", buf, 0x16u);
          }
        }

        else if ([(NDApplication *)self->_clientApplication backgroundUpdatesEnabled])
        {
          v17 = +[NSUUID UUID];
          uUIDString = [v17 UUIDString];

          v18 = [PendingCallback alloc];
          v37 = uUIDString;
          v19 = [NSArray arrayWithObjects:&v37 count:1];
          v20 = [(PendingCallback *)v18 initWithCallbackType:3 taskIdentifier:0 args:v19];

          v21 = [PendingCallback alloc];
          v36 = uUIDString;
          v22 = [NSArray arrayWithObjects:&v36 count:1];
          v23 = [(PendingCallback *)v21 initWithCallbackType:4 taskIdentifier:0 args:v22];

          [(NDCallbackQueue *)self->_callbackQueue addPendingCallbackToFront:v20];
          [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v23 wakeRequirement:0];
          v24 = self->_clientBundleID;
          v25 = qword_1000EB210;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            uuid3 = [(NDBackgroundSession *)self uuid];
            *buf = 138543618;
            v39 = uuid3;
            v40 = 2114;
            v41 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Waking up the client app: %{public}@", buf, 0x16u);
          }

          clientApplication = self->_clientApplication;
          identifier = self->_identifier;
          uuid4 = [(NDBackgroundSession *)self uuid];
          v30 = [(NDApplication *)clientApplication wakeForSessionIdentifier:identifier withSessionUUID:uuid4 wakeRequirement:client];

          if ((v30 & 1) == 0)
          {
            v31 = qword_1000EB210;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              uuid5 = [(NDBackgroundSession *)self uuid];
              *buf = 138543618;
              v39 = uuid5;
              v40 = 2114;
              v41 = v24;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Failed to wake app: %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          uUIDString = qword_1000EB210;
          if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_DEFAULT))
          {
            uuid6 = [(NDBackgroundSession *)self uuid];
            v33 = self->_clientBundleID;
            *buf = 138543618;
            v39 = uuid6;
            v40 = 2114;
            v41 = v33;
            _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Not waking up client %{public}@ since background updates are not enabled", buf, 0x16u);
          }
        }
      }

      else
      {
        if ([(NDApplication *)self->_clientApplication maySupportWakesLater])
        {
          v12 = +[NDUserEventAgentConnection sharedUserEventAgentConnection];
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_100030690;
          v35[3] = &unk_1000D6470;
          v35[4] = self;
          v35[5] = client;
          [v12 performWake:v35 uponNotification:self->_clientBundleID sessionIdentifier:self->_identifier];
        }

        uUIDString = qword_1000EB210;
        if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_DEFAULT))
        {
          uuid7 = [(NDBackgroundSession *)self uuid];
          v14 = self->_clientBundleID;
          *buf = 138543618;
          v39 = uuid7;
          v40 = 2114;
          v41 = v14;
          _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Not waking up client %{public}@ since it doesn't support app wakes", buf, 0x16u);
        }
      }
    }

    else
    {
      uUIDString = qword_1000EB210;
      if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_DEFAULT))
      {
        uuid8 = [(NDBackgroundSession *)self uuid];
        v11 = self->_clientBundleID;
        *buf = 138543618;
        v39 = uuid8;
        v40 = 2114;
        v41 = v11;
        _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Not waking up client %{public}@ since sessionSendsLaunchEvents is NO", buf, 0x16u);
      }
    }
  }

  else
  {
    uUIDString = qword_1000EB210;
    if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_DEFAULT))
    {
      uuid9 = [(NDBackgroundSession *)self uuid];
      v9 = self->_clientBundleID;
      *buf = 138543618;
      v39 = uuid9;
      v40 = 2114;
      v41 = v9;
      _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Not waking up client %{public}@ since wake request is unnecessary", buf, 0x16u);
    }
  }
}

- (void)clientAcknowledgedTerminalCallbackForTask:(unint64_t)task
{
  identifiersToTasks = self->_identifiersToTasks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v6];

  if (!v7)
  {
LABEL_4:
    v10 = [NSNumber numberWithUnsignedInteger:task];
    [(NDBackgroundSession *)self queueUpdatesForTask:v10 updateType:13 highPriority:0];

    [(NDCallbackQueue *)self->_callbackQueue drainCallbacksForTaskIdentifier:task];
    if (![(NDCallbackQueue *)self->_callbackQueue count]&& ![(NDBackgroundSession *)self sessionHasOutstandingTasks])
    {
      invalidateReply = [(NDBackgroundSession *)self invalidateReply];

      if (invalidateReply)
      {
        invalidateReply2 = [(NDBackgroundSession *)self invalidateReply];
        [(NDBackgroundSession *)self setInvalidateReply:0];
        [(NDBackgroundSession *)self cleanupSessionWithCompletionHandler:invalidateReply2];
      }
    }

    goto LABEL_11;
  }

  if ([v7 state] == 3)
  {
    [(NSMutableDictionary *)self->_tasksToIdentifiers removeObjectForKey:v7];
    v8 = self->_identifiersToTasks;
    v9 = [NSNumber numberWithUnsignedInteger:task];
    [(NSMutableDictionary *)v8 removeObjectForKey:v9];

    goto LABEL_4;
  }

  v13 = qword_1000EB210;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [v7 _loggableDescription];
    v16 = 138543618;
    v17 = uuid;
    v18 = 2114;
    v19 = _loggableDescription;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ skipping acknowledgement teardown since it's not actually complete", &v16, 0x16u);
  }

LABEL_11:
}

- (void)errorOccurredDuringAuthCallbackDelivery:(id)delivery completionHandler:(id)handler
{
  deliveryCopy = delivery;
  handlerCopy = handler;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    v11 = 138543618;
    v12 = uuid;
    v13 = 2112;
    v14 = deliveryCopy;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Encountered error %@ error delivering auth challenge to client, performing default handling", &v11, 0x16u);
  }

  clientProxy = self->_clientProxy;
  self->_clientProxy = 0;

  handlerCopy[2](handlerCopy, 1, 0);
}

- (void)errorOccurredDuringFinishedCallbackDelivery:(id)delivery
{
  deliveryCopy = delivery;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    v8 = 138543618;
    v9 = uuid;
    v10 = 2112;
    v11 = deliveryCopy;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Encountered error %@ during task completion callback delivery", &v8, 0x16u);
  }

  clientProxy = self->_clientProxy;
  self->_clientProxy = 0;

  if (![(NDBackgroundSession *)self sessionHasOutstandingTasks])
  {
    [(NDBackgroundSession *)self wakeUpClient:1];
  }
}

- (void)taskMonitor:(id)monitor terminateTask:(unint64_t)task reason:(int)reason
{
  identifiersToTasks = self->_identifiersToTasks;
  v7 = [NSNumber numberWithUnsignedInteger:task];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v7];

  v8 = [v9 error:@"_nsurlsessiondErrorDomain" code:reason];
  [v9 cancel_with_error:v8];
}

- (void)taskMonitor:(id)monitor retryTask:(unint64_t)task reason:(int)reason
{
  identifiersToTasks = self->_identifiersToTasks;
  v7 = [NSNumber numberWithUnsignedInteger:task];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v7];

  v8 = [v9 error:@"_nsurlsessiondErrorDomain" code:reason];
  [v9 cancel_with_error:v8];
}

- (void)taskMonitor:(id)monitor updateTaskPriority:(unint64_t)priority reason:(int)reason
{
  monitorCopy = monitor;
  identifiersToTasks = self->_identifiersToTasks;
  v9 = [NSNumber numberWithUnsignedInteger:priority];
  v10 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v9];

  if (reason == -1)
  {
    sub_100008C24(v10, [monitorCopy basePriority], self->_monitoredApplication);
  }

  else
  {
    v11 = [v10 error:@"_nsurlsessiondErrorDomain" code:reason];
    [v10 cancel_with_error:v11];
  }
}

- (BOOL)errorIfBlockedTracker:(id)tracker url:(id)url
{
  trackerCopy = tracker;
  urlCopy = url;
  [(NSString *)self->_monitoredAppBundleID UTF8String];
  neTrackerTCCResult = self->_neTrackerTCCResult;
  host = [urlCopy host];
  [host UTF8String];
  v9 = ne_tracker_check_is_hostname_blocked();

  if (v9 == 1)
  {
    v10 = qword_1000EB210;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      uuid = [(NDBackgroundSession *)self uuid];
      _loggableDescription = [trackerCopy _loggableDescription];
      *buf = 138543618;
      v17 = uuid;
      v18 = 2114;
      v19 = _loggableDescription;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ is blocked due to tracker policy", buf, 0x16u);
    }

    v11 = [trackerCopy error:NSURLErrorDomain code:-1004];
    [trackerCopy cancel_with_error:v11];
  }

  return v9 == 1;
}

- (id)inputStreamWithFileHandle:(id)handle taskIdentifier:(unint64_t)identifier
{
  handleCopy = handle;
  readStream = 0;
  v7 = dup([handleCopy fileDescriptor]);
  CFStreamCreatePairWithSocket(0, v7, &readStream, 0);
  CFReadStreamSetProperty(readStream, kCFStreamPropertyShouldCloseNativeSocket, kCFBooleanTrue);
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    *buf = 138543618;
    v17 = uuid;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Created stream with file descriptor: %d", buf, 0x12u);
  }

  [handleCopy closeFile];
  v10 = readStream;
  identifiersToStreams = self->_identifiersToStreams;
  v12 = [NSNumber numberWithUnsignedInteger:identifier];
  [(NSMutableDictionary *)identifiersToStreams setObject:v10 forKeyedSubscript:v12];

  v13 = readStream;

  return v13;
}

- (id)makeTempUploadFile:(id)file withExtensionData:(id)data
{
  fileCopy = file;
  dataCopy = data;
  bytes = [dataCopy bytes];
  v9 = [dataCopy length];
  if (v9 && !v9[bytes - 1])
  {
    v10 = sandbox_extension_consume();
    v31 = qword_1000EB210;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(NDBackgroundSession *)self uuid];
      *buf = 138543874;
      v47 = uuid;
      v48 = 2112;
      v49 = fileCopy;
      v50 = 2048;
      v51 = v10;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Consumed sandbox extension for file %@, extension = %lld", buf, 0x20u);
    }

    if (v10 < 0)
    {
      v33 = qword_1000EB210;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [(NDBackgroundSession *)self uuid];
        *buf = 138543874;
        v47 = uuid2;
        v48 = 2080;
        v49 = bytes;
        v50 = 2112;
        v51 = fileCopy;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Failed to consume sandbox extension %s for fileURL %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v10 = -1;
  }

  v11 = +[NSUUID UUID];
  uUIDString = [v11 UUIDString];
  v13 = [NSString stringWithFormat:@"CFNetworkUpload_%@", uUIDString];

  v14 = [(NSURL *)self->_uploadsDirectory URLByAppendingPathComponent:v13];
  LODWORD(uUIDString) = [fileCopy fileDescriptor];
  v15 = v14;
  if (fclonefileat(uUIDString, -2, [v14 fileSystemRepresentation], 0))
  {
    v16 = *__error();
    if (v16 != 45 && v16 != 18)
    {
      v23 = qword_1000EB210;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        uuid3 = [(NDBackgroundSession *)self uuid];
        *buf = 138543618;
        v47 = uuid3;
        v48 = 1024;
        LODWORD(v49) = v16;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Error cloning file: %{errno}d", buf, 0x12u);
      }

      goto LABEL_37;
    }

    v17 = qword_1000EB210;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      uuid4 = [(NDBackgroundSession *)self uuid];
      *buf = 138543362;
      v47 = uuid4;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Falling back to copy", buf, 0xCu);
    }

    v19 = v14;
    v20 = open([v14 fileSystemRepresentation], 513, 384);
    if (v20 == -1)
    {
      v23 = qword_1000EB210;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        uuid5 = [(NDBackgroundSession *)self uuid];
        v41 = *__error();
        *buf = 138543618;
        v47 = uuid5;
        v48 = 1024;
        LODWORD(v49) = v41;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Error creating file: %{errno}d", buf, 0x12u);
      }

      goto LABEL_37;
    }

    v21 = fcopyfile([fileCopy fileDescriptor], v20, 0, 8u);
    close(v20);
    if (v21)
    {
      v22 = qword_1000EB210;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        uuid6 = [(NDBackgroundSession *)self uuid];
        v39 = *__error();
        *buf = 138543618;
        v47 = uuid6;
        v48 = 1024;
        LODWORD(v49) = v39;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Error copying file: %{errno}d", buf, 0x12u);
      }

      v23 = +[NSFileManager defaultManager];
      [v23 removeItemAtURL:v14 error:0];
LABEL_37:
      v30 = 0;
      goto LABEL_38;
    }
  }

  v45 = 0;
  v44 = 0;
  v24 = [v14 getResourceValue:&v45 forKey:NSURLIsSymbolicLinkKey error:&v44];
  v25 = v45;
  v23 = v44;
  if ((v24 & 1) == 0)
  {
    v26 = qword_1000EB210;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      uuid7 = [(NDBackgroundSession *)self uuid];
      code = [v23 code];
      *buf = 138543874;
      v47 = uuid7;
      v48 = 2112;
      v49 = v23;
      v50 = 2048;
      v51 = code;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Error checking resource value: %@ [%ld]", buf, 0x20u);
    }

    goto LABEL_21;
  }

  if ([v25 BOOLValue])
  {
    v26 = qword_1000EB210;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      uuid8 = [(NDBackgroundSession *)self uuid];
      *buf = 138543362;
      v47 = uuid8;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> File is a symlink", buf, 0xCu);
    }

LABEL_21:

    v27 = +[NSFileManager defaultManager];
    [v27 removeItemAtURL:v14 error:0];

    v14 = 0;
  }

  if (v10 >= 1)
  {
    sandbox_extension_release();
    v28 = qword_1000EB210;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      uuid9 = [(NDBackgroundSession *)self uuid];
      *buf = 138543618;
      v47 = uuid9;
      v48 = 2048;
      v49 = v10;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Released sandbox extension %lld", buf, 0x16u);
    }
  }

  v14 = v14;

  v30 = v14;
LABEL_38:

  return v30;
}

- (void)requeueTask:(unint64_t)task skipResume:(BOOL)resume
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031A6C;
  block[3] = &unk_1000D5640;
  block[4] = self;
  block[5] = task;
  resumeCopy = resume;
  dispatch_async(workQueue, block);
}

- (void)removeOutstandingTaskWithIdentifier:(unint64_t)identifier
{
  outstandingTaskIDs = self->_outstandingTaskIDs;
  v4 = [NSNumber numberWithUnsignedInteger:identifier];
  [(NSMutableArray *)outstandingTaskIDs removeObject:?];
}

- (void)addOutstandingTaskWithIdentifier:(unint64_t)identifier
{
  outstandingTaskIDs = self->_outstandingTaskIDs;
  v4 = [NSNumber numberWithUnsignedInteger:identifier];
  [(NSMutableArray *)outstandingTaskIDs addObject:?];
}

- (void)enqueueTaskWithIdentifier:(unint64_t)identifier
{
  identifiersToTasks = self->_identifiersToTasks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v14 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v6];

  v7 = v14;
  if (v14)
  {
    identifiersToTaskInfo = self->_identifiersToTaskInfo;
    v9 = [NSNumber numberWithUnsignedInteger:identifier];
    v10 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v9];

    v11 = +[NDUserSyncStakeholder sharedStakeholder];
    uniqueIdentifier = [v10 uniqueIdentifier];
    [v11 restoredTaskActive:uniqueIdentifier];

    v13 = +[NDUserSyncStakeholder sharedStakeholder];
    [v13 endBridgingUMTask:v10];

    v7 = v14;
  }
}

- (void)taskShouldSuspend:(unint64_t)suspend
{
  identifiersToTasks = self->_identifiersToTasks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v6];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v9 = [NSNumber numberWithUnsignedInteger:suspend];
  v10 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v9];

  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [v7 _loggableDescription];
    v17 = 138543618;
    v18 = uuid;
    v19 = 2114;
    v20 = _loggableDescription;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ suspending", &v17, 0x16u);
  }

  [v7 suspend];
  identifiersToMonitors = self->_identifiersToMonitors;
  v15 = [NSNumber numberWithUnsignedInteger:suspend];
  v16 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v15];

  [v16 taskWillSuspend];
  if (([v10 resumedAndWaitingForEarliestBeginDate] & 1) == 0)
  {
    sub_10006E370(2, self->_clientBundleID, self->_identifier, self->_monitoredAppBundleID, self->_secondaryID, v7, v10, 0);
  }

  [v10 setResumedAndWaitingForEarliestBeginDate:0];
}

- (void)taskShouldResume:(unint64_t)resume
{
  identifiersToTasks = self->_identifiersToTasks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v6];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v9 = [NSNumber numberWithUnsignedInteger:resume];
  v10 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v9];

  if (v7)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = qword_1000EB210;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      uuid = [(NDBackgroundSession *)self uuid];
      _loggableDescription = [v10 _loggableDescription];
      *buf = 138544130;
      v25 = uuid;
      v26 = 2114;
      v27 = _loggableDescription;
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ cannot resume because task: %@ or taskInfo: %@ is nil", buf, 0x2Au);
    }
  }

  else
  {
    if ([v7 _hasSZExtractor])
    {
      downloadFileURL = [v10 downloadFileURL];

      if (downloadFileURL)
      {
        downloadFileURL2 = [v10 downloadFileURL];
        [NDFileUtilities removeStreamingZipModificationDate:downloadFileURL2];
      }
    }

    workQueue = self->_workQueue;
    v16 = [v10 qos];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000322EC;
    v20[3] = &unk_1000D6498;
    v20[4] = self;
    v21 = v10;
    v22 = v7;
    resumeCopy = resume;
    v17 = dispatch_block_create_with_qos_class(0, v16, 0, v20);
    dispatch_async(workQueue, v17);
  }
}

- (void)handleWillBeginDelayedRequestForTaskWithIdentifier:(unint64_t)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:identifier];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v11 = [NSNumber numberWithUnsignedInteger:identifier];
  v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

  if (v9 && v12)
  {
    if (!self->_clientImplementsWillBeginDelayedRequest)
    {
      v14 = qword_1000EB210;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        uuid = [(NDBackgroundSession *)self uuid];
        _loggableDescription = [v9 _loggableDescription];
        *buf = 138543618;
        v45 = uuid;
        v46 = 2114;
        v47 = _loggableDescription;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ skipping delayed request callback - delegate not implemented", buf, 0x16u);
      }

      goto LABEL_24;
    }

    respondedToWillBeginDelayedRequestCallback = [v12 respondedToWillBeginDelayedRequestCallback];
    v14 = qword_1000EB210;
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (respondedToWillBeginDelayedRequestCallback)
    {
      if (v15)
      {
        uuid2 = [(NDBackgroundSession *)self uuid];
        _loggableDescription2 = [v9 _loggableDescription];
        *buf = 138543618;
        v45 = uuid2;
        v46 = 2114;
        v47 = _loggableDescription2;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ already replied to delayed request callback - not calling again", buf, 0x16u);
      }

LABEL_24:

      handlerCopy[2](handlerCopy);
      goto LABEL_25;
    }

    if (v15)
    {
      uuid3 = [(NDBackgroundSession *)self uuid];
      _loggableDescription3 = [v9 _loggableDescription];
      *buf = 138543618;
      v45 = uuid3;
      v46 = 2114;
      v47 = _loggableDescription3;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ receiving delayed request callback", buf, 0x16u);
    }

    if (!self->_clientProxy && (!self->_sendsLaunchEvents || ![(NDApplication *)self->_clientApplication supportsWakes]))
    {
      v30 = qword_1000EB210;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        uuid4 = [(NDBackgroundSession *)self uuid];
        _loggableDescription4 = [v9 _loggableDescription];
        *buf = 138543618;
        v45 = uuid4;
        v46 = 2114;
        v47 = _loggableDescription4;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ client is not running and doesn't support wakes, continuing load for delayed request", buf, 0x16u);
      }

      [v12 setRespondedToWillBeginDelayedRequestCallback:1];
      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 identifier]);
      [(NDBackgroundSession *)self queueUpdatesForTask:v14 updateType:9 highPriority:0];
      goto LABEL_24;
    }

    currentRequest = [v12 currentRequest];
    v35 = _NSConcreteStackBlock;
    v36 = 3221225472;
    v37 = sub_100033098;
    v38 = &unk_1000D5750;
    selfCopy = self;
    identifierCopy = identifier;
    v40 = v12;
    v41 = handlerCopy;
    v23 = objc_retainBlock(&v35);
    v24 = [PendingCallback alloc];
    v43[0] = currentRequest;
    v25 = objc_retainBlock(v23);
    v43[1] = v25;
    selfCopy = [NSArray arrayWithObjects:v43 count:2, v35, v36, v37, v38, selfCopy];
    v27 = [(PendingCallback *)v24 initWithCallbackType:9 taskIdentifier:identifier args:selfCopy];

    callbackQueue = self->_callbackQueue;
    if (self->_sendsLaunchEvents)
    {
      if ([(NDApplication *)self->_clientApplication supportsWakes])
      {
        v29 = 2;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }

    [(NDCallbackQueue *)callbackQueue addPendingCallback:v27 wakeRequirement:v29];
  }

  else
  {
    currentRequest = qword_1000EB210;
    if (os_log_type_enabled(currentRequest, OS_LOG_TYPE_ERROR))
    {
      uuid5 = [(NDBackgroundSession *)self uuid];
      _loggableDescription5 = [v12 _loggableDescription];
      *buf = 138544130;
      v45 = uuid5;
      v46 = 2114;
      v47 = _loggableDescription5;
      v48 = 2112;
      v49 = v9;
      v50 = 2112;
      v51 = v12;
      _os_log_error_impl(&_mh_execute_header, currentRequest, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ cannot handle delayed request callback because task: %@ or taskInfo: %@ is nil", buf, 0x2Au);
    }
  }

LABEL_25:
}

- (void)handleEarliestBeginDateForTaskWithIdentifier:(unint64_t)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:identifier];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v11 = [NSNumber numberWithUnsignedInteger:identifier];
  v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

  if (([v12 resumedAndWaitingForEarliestBeginDate] & 1) == 0)
  {
    earliestBeginDate = [v9 earliestBeginDate];

    v14 = qword_1000EB210;
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (earliestBeginDate)
    {
      if (v15)
      {
        uuid = [(NDBackgroundSession *)self uuid];
        _loggableDescription = [v12 _loggableDescription];
        earliestBeginDate2 = [v9 earliestBeginDate];
        *buf = 138543874;
        v37 = uuid;
        v38 = 2114;
        v39 = _loggableDescription;
        v40 = 2114;
        v41 = earliestBeginDate2;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ should not begin before %{public}@", buf, 0x20u);
      }

      earliestBeginDate3 = [v9 earliestBeginDate];
      [earliestBeginDate3 timeIntervalSinceNow];
      v21 = v20;

      if (v21 <= 0.0)
      {
        v28 = qword_1000EB210;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          uuid2 = [(NDBackgroundSession *)self uuid];
          _loggableDescription2 = [v12 _loggableDescription];
          *buf = 138543618;
          v37 = uuid2;
          v38 = 2114;
          v39 = _loggableDescription2;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ can begin immediately - begin date is in past", buf, 0x16u);
        }

        handlerCopy[2](handlerCopy, 0);
      }

      else
      {
        [v12 setResumedAndWaitingForEarliestBeginDate:1];
        v22 = dispatch_time(0x8000000000000000, (v21 * 1000000000.0));
        workQueue = self->_workQueue;
        v24 = [v12 qos];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_10003393C;
        v31[3] = &unk_1000D53C0;
        v32 = v12;
        selfCopy = self;
        identifierCopy = identifier;
        v34 = handlerCopy;
        v25 = dispatch_block_create_with_qos_class(0, v24, 0, v31);
        dispatch_after(v22, workQueue, v25);
      }
    }

    else
    {
      if (v15)
      {
        uuid3 = [(NDBackgroundSession *)self uuid];
        _loggableDescription3 = [v12 _loggableDescription];
        *buf = 138543618;
        v37 = uuid3;
        v38 = 2114;
        v39 = _loggableDescription3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ has not requested a begin delay", buf, 0x16u);
      }

      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)cancelMonitorForTask:(unint64_t)task
{
  identifiersToMonitors = self->_identifiersToMonitors;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v9 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v6];

  [v9 cancel];
  v7 = self->_identifiersToMonitors;
  v8 = [NSNumber numberWithUnsignedInteger:task];
  [(NSMutableDictionary *)v7 removeObjectForKey:v8];
}

- (BOOL)currentDiscretionaryStatus:(id)status withOptionalTaskInfo:(id)info
{
  statusCopy = status;
  infoCopy = info;
  if (statusCopy)
  {
    v8 = [statusCopy _propertyForKey:@"_NSURLRequestIsDiscretionaryOverrideValue"];
    if (v8)
    {
      v9 = +[NSXPCConnection currentConnection];
      v10 = sub_100008D00(v9, @"com.apple.private.nsurlsession.set-discretionary-override-value");

      if (v10)
      {
        v11 = qword_1000EB210;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          uuid = [(NDBackgroundSession *)self uuid];
          if (infoCopy)
          {
            _loggableDescription = [infoCopy _loggableDescription];
          }

          else
          {
            _loggableDescription = @"New task";
          }

          bundleIdentifier = [(NDApplication *)self->_clientApplication bundleIdentifier];
          v41 = 138544130;
          if ([(NDApplication *)v8 BOOLValue])
          {
            v37 = 89;
          }

          else
          {
            v37 = 78;
          }

          v42 = uuid;
          v43 = 2114;
          v44 = _loggableDescription;
          v45 = 2114;
          v46 = bundleIdentifier;
          v47 = 1024;
          v48 = v37;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for %{public}@ is overriding discretionary status by request - forcing to %c", &v41, 0x26u);
          if (infoCopy)
          {
          }
        }

        bOOLValue = [(NDApplication *)v8 BOOLValue];
        goto LABEL_66;
      }
    }
  }

  if (!infoCopy || ![infoCopy discretionaryOverride])
  {
    v8 = self->_clientApplication;
    if (self->_infersDiscretionary)
    {
      monitoredApplication = self->_monitoredApplication;
      if (monitoredApplication)
      {
        v22 = monitoredApplication;

        v8 = v22;
      }
    }

    xpcConn = self->_xpcConn;
    if (xpcConn)
    {
      _xpcConnection = [(NSXPCConnection *)xpcConn _xpcConnection];
      if (xpc_connection_is_extension())
      {
        discretionary = self->_discretionary;

        if (!discretionary)
        {
          v26 = qword_1000EB210;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            uuid2 = [(NDBackgroundSession *)self uuid];
            if (infoCopy)
            {
              _loggableDescription2 = [infoCopy _loggableDescription];
            }

            else
            {
              _loggableDescription2 = @"Task <?>.<0>";
            }

            bundleIdentifier2 = [(NDApplication *)self->_clientApplication bundleIdentifier];
            v41 = 138543874;
            v42 = uuid2;
            v43 = 2114;
            v44 = _loggableDescription2;
            v45 = 2114;
            v46 = bundleIdentifier2;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ current discretionary status for %{public}@ is non-discretionary because the connected client is an extension", &v41, 0x20u);
            if (infoCopy)
            {
            }

LABEL_63:

            goto LABEL_64;
          }

          goto LABEL_64;
        }
      }

      else
      {
      }
    }

    v29 = +[Daemon sharedDaemon];
    isInSyncBubble = [v29 isInSyncBubble];

    if (isInSyncBubble)
    {
      v26 = qword_1000EB210;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        uuid2 = [(NDBackgroundSession *)self uuid];
        if (infoCopy)
        {
          _loggableDescription3 = [infoCopy _loggableDescription];
        }

        else
        {
          _loggableDescription3 = @"Task <?>.<0>";
        }

        bundleIdentifier2 = [(NDApplication *)v8 bundleIdentifier];
        v41 = 138543874;
        v42 = uuid2;
        v43 = 2114;
        v44 = _loggableDescription3;
        v45 = 2114;
        v46 = bundleIdentifier2;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ current discretionary status for %{public}@ is non-discretionary, since nsurlsessiond is running in EDU sync mode", &v41, 0x20u);
        if (infoCopy)
        {
        }

        goto LABEL_63;
      }
    }

    else
    {
      if (self->_discretionary || [(NDApplication *)v8 hasForegroundBackgroundStates]&& ![(NDApplication *)v8 isForeground]&& ![(NDApplication *)v8 hasBackgroundTaskCompletion])
      {
        v26 = qword_1000EB210;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          uuid3 = [(NDBackgroundSession *)self uuid];
          if (infoCopy)
          {
            _loggableDescription4 = [infoCopy _loggableDescription];
          }

          else
          {
            _loggableDescription4 = @"Task <?>.<0>";
          }

          bundleIdentifier3 = [(NDApplication *)v8 bundleIdentifier];
          v39 = self->_discretionary;
          v41 = 138544130;
          v42 = uuid3;
          v43 = 2114;
          v44 = _loggableDescription4;
          v45 = 2114;
          v46 = bundleIdentifier3;
          v47 = 1024;
          v48 = v39;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ current discretionary status for %{public}@ is discretionary (opt-in: %d)", &v41, 0x26u);
          if (infoCopy)
          {
          }
        }

        bOOLValue = 1;
        goto LABEL_65;
      }

      v26 = qword_1000EB210;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        uuid2 = [(NDBackgroundSession *)self uuid];
        if (infoCopy)
        {
          _loggableDescription5 = [infoCopy _loggableDescription];
        }

        else
        {
          _loggableDescription5 = @"Task <?>.<0>";
        }

        bundleIdentifier2 = [(NDApplication *)v8 bundleIdentifier];
        v41 = 138543874;
        v42 = uuid2;
        v43 = 2114;
        v44 = _loggableDescription5;
        v45 = 2114;
        v46 = bundleIdentifier2;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ current discretionary status for %{public}@ is non-discretionary", &v41, 0x20u);
        if (infoCopy)
        {
        }

        goto LABEL_63;
      }
    }

LABEL_64:
    bOOLValue = 0;
LABEL_65:

    goto LABEL_66;
  }

  discretionaryOverride = [infoCopy discretionaryOverride];
  bOOLValue = discretionaryOverride == 1;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEFAULT))
  {
    uuid4 = [(NDBackgroundSession *)self uuid];
    _loggableDescription6 = [infoCopy _loggableDescription];
    bundleIdentifier4 = [(NDApplication *)self->_clientApplication bundleIdentifier];
    v19 = bundleIdentifier4;
    v41 = 138544130;
    if (discretionaryOverride == 1)
    {
      v20 = 89;
    }

    else
    {
      v20 = 78;
    }

    v42 = uuid4;
    v43 = 2114;
    v44 = _loggableDescription6;
    v45 = 2114;
    v46 = bundleIdentifier4;
    v47 = 1024;
    v48 = v20;
    _os_log_impl(&_mh_execute_header, &v8->super, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for %{public}@ is overriding discretionary status - forcing to %c", &v41, 0x26u);
  }

LABEL_66:

  return bOOLValue;
}

- (int64_t)priorityForDiscretionaryStatus:(BOOL)status
{
  if (status)
  {
    return 600;
  }

  else
  {
    return 300;
  }
}

- (void)fillInByteCountsForTaskInfo:(id)info withTaskID:(id)d
{
  infoCopy = info;
  v6 = [(NSMutableDictionary *)self->_identifiersToTasks objectForKeyedSubscript:d];
  [infoCopy setCountOfBytesSent:{objc_msgSend(v6, "countOfBytesSent")}];
  [infoCopy setCountOfBytesReceived:{objc_msgSend(v6, "countOfBytesReceived")}];
  [infoCopy setCountOfBytesExpectedToSend:{objc_msgSend(v6, "countOfBytesExpectedToSend")}];
  [infoCopy setCountOfBytesExpectedToReceive:{objc_msgSend(v6, "countOfBytesExpectedToReceive")}];
}

- (void)allowReconnect
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000345A4;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)reconnectClient:(id)client withCompletion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100034B2C;
  v26[3] = &unk_1000D5F80;
  v26[4] = self;
  v8 = clientCopy;
  v27 = v8;
  v9 = completionCopy;
  v28 = v9;
  v10 = objc_retainBlock(v26);
  clientApplication = self->_clientApplication;
  identifier = self->_identifier;
  uuid = [(NDBackgroundSession *)self uuid];
  v14 = [(NDApplication *)clientApplication isHandlingBackgroundURLSessionWithIdentifier:identifier withSessionUUID:uuid];

  LOBYTE(identifier) = self->_hasBeenSignalledToDeliverPendingEvents;
  v15 = qword_1000EB210;
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if ((identifier & 1) != 0 || v14 != 1)
  {
    if (v16)
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      v24 = self->_identifier;
      clientBundleID = self->_clientBundleID;
      hasBeenSignalledToDeliverPendingEvents = self->_hasBeenSignalledToDeliverPendingEvents;
      *buf = 138544386;
      v30 = uuid2;
      v31 = 2114;
      v32 = clientBundleID;
      v33 = 2112;
      v34 = v24;
      v35 = 1024;
      v36 = hasBeenSignalledToDeliverPendingEvents;
      v37 = 1024;
      v38 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Delivering pending events immediately for client session: <%{public}@>.<%@>. Signalled already: %d, isHandlingBackgroundSession: %d", buf, 0x2Cu);
    }

    self->_hasBeenSignalledToDeliverPendingEvents = 0;
    (v10[2])(v10);
  }

  else
  {
    if (v16)
    {
      uuid3 = [(NDBackgroundSession *)self uuid];
      v19 = self->_identifier;
      v18 = self->_clientBundleID;
      *buf = 138543874;
      v30 = uuid3;
      v31 = 2114;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Waiting for notification to deliver pending events for client session: <%{public}@>.<%@>", buf, 0x20u);
    }

    v20 = objc_retainBlock(v10);
    completeReconnectionBlock = self->_completeReconnectionBlock;
    self->_completeReconnectionBlock = v20;
  }
}

- (void)clientDidDisconnect
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    v5 = uuid;
    if (self->_xpcConn)
    {
      v6 = 89;
    }

    else
    {
      v6 = 78;
    }

    if (self->_clientProxy)
    {
      v7 = 89;
    }

    else
    {
      v7 = 78;
    }

    identifier = self->_identifier;
    clientBundleID = self->_clientBundleID;
    v17 = 138544386;
    v18 = uuid;
    v19 = 2114;
    v20 = clientBundleID;
    v21 = 1024;
    v22 = v6;
    v23 = 1024;
    v24 = v7;
    v25 = 2112;
    v26 = identifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> client %{public}@ disconnected, XPC(%c) proxy(%c) for %@", &v17, 0x2Cu);
  }

  clientProxy = self->_clientProxy;
  if (clientProxy)
  {
    self->_clientProxy = 0;

    self->_clientPID = -1;
    [(NDBackgroundSession *)self cancelTasksRequiringClientConnectionAndResumeUnstartedTasks];
    if (![(NDBackgroundSession *)self sessionHasOutstandingTasks]&& ![(NDCallbackQueue *)self->_callbackQueue count])
    {
      [(NDBackgroundSession *)self cleanupSessionWithCompletionHandler:0];
    }
  }

  xpcConn = self->_xpcConn;
  self->_xpcConn = 0;

  connectedExtension = self->_connectedExtension;
  if (connectedExtension)
  {
    [(NDApplication *)connectedExtension removeObserver:self];
    v13 = self->_connectedExtension;
    self->_connectedExtension = 0;
  }

  [(NDBackgroundSession *)self setInvalidateReply:0];
  v14 = [(NDTaskStorageDB *)self->tasksDB _getOptionsForBundleID:self->_clientBundleID sessionID:self->_identifier];
  v15 = [v14 mutableCopy];
  v16 = +[NSDate now];
  [v15 setObject:v16 forKeyedSubscript:@"NSURLSessionLastDisconnectDateKey"];

  [(NDTaskStorageDB *)self->tasksDB _updateOptionsForBundleID:self->_clientBundleID sessionID:self->_identifier with:v15];
}

- (void)cancelTasksRequiringClientConnectionAndResumeUnstartedTasks
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = self->_outstandingTaskIDs;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v4)
  {
    v6 = *v22;
    *&v5 = 138543618;
    v19 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v9 = [(NSMutableDictionary *)self->_identifiersToTaskInfo objectForKeyedSubscript:v8, v19];
        if ([v9 shouldCancelOnDisconnect])
        {
          [v9 setResumedAndWaitingForEarliestBeginDate:0];
          additionalProperties = [(NSMutableDictionary *)self->_identifiersToTasks objectForKeyedSubscript:v8];
          resourceTimeoutError = [additionalProperties error:NSURLErrorDomain code:-997];
          [additionalProperties cancel_with_error:resourceTimeoutError];
          goto LABEL_8;
        }

        if (([v9 hasStarted] & 1) == 0)
        {
          if ([(NSString *)self->_clientBundleID isEqualToString:@"com.apple.mobileassetd"])
          {
            additionalProperties = [(NSMutableDictionary *)self->_identifiersToTasks objectForKeyedSubscript:v8];
            v12 = qword_1000EB210;
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              uuid = [(NDBackgroundSession *)self uuid];
              _loggableDescription = [v9 _loggableDescription];
              *buf = v19;
              v26 = uuid;
              v27 = 2114;
              v28 = _loggableDescription;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ not resumed but client disconnected, terminating it with timeout", buf, 0x16u);
            }

            resourceTimeoutError = [additionalProperties resourceTimeoutError];
            [additionalProperties cancel_with_error:resourceTimeoutError];
LABEL_8:
          }

          else
          {
            v13 = qword_1000EB210;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              uuid2 = [(NDBackgroundSession *)self uuid];
              _loggableDescription2 = [v9 _loggableDescription];
              *buf = v19;
              v26 = uuid2;
              v27 = 2114;
              v28 = _loggableDescription2;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ not resumed but client disconnected, resuming it implicitly", buf, 0x16u);
            }

            identifier = [v9 identifier];
            additionalProperties = [v9 additionalProperties];
            [(NDBackgroundSession *)self resumeTaskWithIdentifier:identifier withProperties:additionalProperties];
          }
        }

        v7 = v7 + 1;
      }

      while (v4 != v7);
      v18 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v21 objects:v29 count:16];
      v4 = v18;
    }

    while (v18);
  }
}

- (BOOL)finalizeTaskCompletionWithSuppressedWake:(BOOL)wake
{
  if (![(NDBackgroundSession *)self sessionHasOutstandingTasks]&& ![(NDBackgroundSession *)self clientIsActive])
  {
    if (!wake)
    {
      v5 = 1;
      [(NDBackgroundSession *)self wakeUpClient:1];
      return v5;
    }

    if (![(NDCallbackQueue *)self->_callbackQueue count])
    {
      [(NDBackgroundSession *)self cleanupSessionWithCompletionHandler:0];
    }
  }

  return 0;
}

- (void)removeUploadFileForTaskInfo:(id)info
{
  fileURL = [info fileURL];
  [NDFileUtilities removeItemAtURL:?];
}

- (void)removeDownloadFileForTaskInfo:(id)info
{
  infoCopy = info;
  pathToDownloadTaskFile = [infoCopy pathToDownloadTaskFile];
  if (pathToDownloadTaskFile || ([infoCopy additionalProperties], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", @"pathToDownloadTaskFile"), pathToDownloadTaskFile = objc_claimAutoreleasedReturnValue(), v4, pathToDownloadTaskFile))
  {
    [NDFileUtilities removeItemAtPath:pathToDownloadTaskFile];
  }

  else
  {
    downloadFileURL = [infoCopy downloadFileURL];

    if (downloadFileURL)
    {
      downloadFileURL2 = [infoCopy downloadFileURL];
      [NDFileUtilities removeItemAtURL:downloadFileURL2];
    }

    pathToDownloadTaskFile = 0;
  }
}

- (BOOL)retryTask:(id)task originalError:(id)error transactionMetrics:(id)metrics
{
  taskCopy = task;
  errorCopy = error;
  metricsCopy = metrics;
  v11 = [(NDBackgroundSession *)self restoreInProgressTask:taskCopy];
  if (v11)
  {
    taskDescription = [taskCopy taskDescription];
    [v11 setTaskDescription:taskDescription];

    earliestBeginDate = [taskCopy earliestBeginDate];
    [v11 setEarliestBeginDate:earliestBeginDate];

    [v11 setCountOfBytesClientExpectsToSend:{objc_msgSend(taskCopy, "countOfBytesClientExpectsToSend")}];
    [v11 setCountOfBytesClientExpectsToReceive:{objc_msgSend(taskCopy, "countOfBytesClientExpectsToReceive")}];
    originalRequest = [taskCopy originalRequest];
    [v11 setOriginalRequest:originalRequest];

    [v11 setTaskIdentifier:{objc_msgSend(taskCopy, "identifier")}];
    uniqueIdentifier = [taskCopy uniqueIdentifier];
    [v11 set_uniqueIdentifier:uniqueIdentifier];

    storagePartitionIdentifier = [taskCopy storagePartitionIdentifier];
    [v11 set_storagePartitionIdentifier:storagePartitionIdentifier];

    pathToDownloadTaskFile = [taskCopy pathToDownloadTaskFile];
    [v11 set_pathToDownloadTaskFile:pathToDownloadTaskFile];

    [v11 setState:1];
    [taskCopy creationTime];
    [v11 setStartTime:?];
    sub_100008C24(v11, [taskCopy basePriority], self->_monitoredApplication);
    [taskCopy loadingPriority];
    [v11 set_loadingPriority:?];
    [v11 set_bytesPerSecondLimit:{objc_msgSend(taskCopy, "bytesPerSecondLimit")}];
    [v11 set_expectedProgressTarget:{objc_msgSend(taskCopy, "expectedProgressTarget")}];
    [v11 set_TLSMinimumSupportedProtocolVersion:{objc_msgSend(taskCopy, "_TLSMinimumSupportedProtocolVersion")}];
    [v11 set_TLSMaximumSupportedProtocolVersion:{objc_msgSend(taskCopy, "_TLSMaximumSupportedProtocolVersion")}];
    [v11 set_requiresPowerPluggedIn:{objc_msgSend(taskCopy, "_requiresPowerPluggedIn")}];
    _extractor = [v11 _extractor];

    if (!_extractor)
    {
      _extractor2 = [taskCopy _extractor];
      [v11 set_extractor:_extractor2];
    }

    [v11 set_hasSZExtractor:{objc_msgSend(taskCopy, "_hasSZExtractor")}];
    [v11 set_doesSZExtractorConsumeExtractedData:{objc_msgSend(taskCopy, "_doesSZExtractorConsumeExtractedData")}];
    taskMetrics = [taskCopy taskMetrics];
    [v11 set_metrics:taskMetrics];

    [taskCopy setTaskMetrics:0];
    additionalProperties = [taskCopy additionalProperties];

    if (additionalProperties)
    {
      [(NDBackgroundSession *)self configureAdditionalPropertiesOnTask:v11 taskInfo:taskCopy];
    }

    -[NDBackgroundSession setupDASPropertiesOnTask:taskInfo:discretionaryStatus:](self, "setupDASPropertiesOnTask:taskInfo:discretionaryStatus:", v11, taskCopy, [taskCopy isDiscretionary]);
    identifiersToTasks = self->_identifiersToTasks;
    v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy identifier]);
    [(NSMutableDictionary *)identifiersToTasks setObject:v11 forKeyedSubscript:v23];

    v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy identifier]);
    [(NSMutableDictionary *)self->_tasksToIdentifiers setObject:v24 forKeyedSubscript:v11];

    [v11 startResourceTimer];
    if ([taskCopy taskKind] == 2 || objc_msgSend(taskCopy, "taskKind") == 1 && (objc_msgSend(taskCopy, "fileURL"), v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
    {
      v25 = [(NDBackgroundSession *)self clientErrorForError:errorCopy];
      -[NSXPCProxyCreating willRetryBackgroundDataTask:withError:transactionMetrics:](self->_clientProxy, "willRetryBackgroundDataTask:withError:transactionMetrics:", [taskCopy identifier], v25, metricsCopy);
    }

    -[NDBackgroundSession requeueTask:skipResume:](self, "requeueTask:skipResume:", [taskCopy identifier], 1);
    domain = [errorCopy domain];
    if ([domain isEqualToString:@"_nsurlsessiondErrorDomain"])
    {
      code = [errorCopy code];

      if (code == 3)
      {
        v29 = +[NDStatusMonitor sharedMonitor];
        [v29 performCallbackAfterNetworkChangedEvent:self identifier:objc_msgSend(taskCopy numberOfPreviousRetries:{"identifier"), objc_msgSend(taskCopy, "lowThroughputTimerRetryCount")}];

        [taskCopy setLowThroughputTimerRetryCount:{objc_msgSend(taskCopy, "lowThroughputTimerRetryCount") + 1}];
        goto LABEL_19;
      }
    }

    else
    {
    }

    domain2 = [errorCopy domain];
    v31 = [domain2 isEqualToString:@"_nsurlsessiondErrorDomain"];

    v32 = 1.0;
    if ((v31 & 1) == 0)
    {
      retryCount = [taskCopy retryCount];
      [taskCopy setRetryCount:retryCount + 1];
      v32 = exp2(retryCount);
    }

    v34 = fmin(v32, 1800.0);
    v35 = qword_1000EB210;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(NDBackgroundSession *)self uuid];
      _loggableDescription = [taskCopy _loggableDescription];
      v40 = 138543874;
      v41 = uuid;
      v42 = 2114;
      v43 = _loggableDescription;
      v44 = 2048;
      v45 = v34;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ will retry after %lld seconds", &v40, 0x20u);
    }

    v38 = +[NDStatusMonitor sharedMonitor];
    [v38 performCallbackAfterNetworkChangedEvent:self identifier:objc_msgSend(taskCopy delay:{"identifier"), v34}];
  }

LABEL_19:

  return v11 != 0;
}

- (void)statusMonitor:(id)monitor callbackForIdentifier:(unint64_t)identifier networkChanged:(BOOL)changed
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035BE0;
  block[3] = &unk_1000D5640;
  block[4] = self;
  block[5] = identifier;
  changedCopy = changed;
  dispatch_async(workQueue, block);
}

- (id)clientErrorForError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    v8 = 0;
    goto LABEL_13;
  }

  if (sub_100008B54(errorCopy))
  {
    userInfo = [v4 userInfo];
    if (userInfo)
    {
      userInfo2 = [v4 userInfo];
      domain = [userInfo2 mutableCopy];
    }

    else
    {
      domain = objc_opt_new();
    }

    userInfo3 = sub_100008BA4(v4);
    if (userInfo3)
    {
      [domain setObject:userInfo3 forKeyedSubscript:NSURLErrorBackgroundTaskCancelledReasonKey];
    }

    v11 = [NSURLError errorWithDomain:NSURLErrorDomain code:-999 userInfo:domain];
  }

  else
  {
    objc_opt_class();
    v8 = v4;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_13;
    }

    domain = [v4 domain];
    code = [v4 code];
    userInfo3 = [v4 userInfo];
    v11 = [NSURLError errorWithDomain:domain code:code userInfo:userInfo3];
  }

  v8 = v11;

LABEL_13:

  return v8;
}

- (id)restoreTasks:(BOOL *)tasks
{
  v5 = +[NSMutableArray array];
  if (self->_hasSqliteSupport)
  {
    v6 = [(NDBackgroundSession *)self restoreTasksFromSqliteDB:v5];
  }

  else
  {
    tasksArchivePath = [(NDBackgroundSession *)self tasksArchivePath];
    v8 = sub_100008D9C(NSKeyedUnarchiver, tasksArchivePath);
    v6 = [(NDBackgroundSession *)self restoreTasksFromArchivedInfo:v8];
  }

  v9 = [(NSMutableDictionary *)self->_identifiersToTaskInfo count];
  if (!v9)
  {
    [(NDBackgroundSession *)self cleanupSessionWithCompletionHandler:0];
  }

  if (tasks)
  {
    *tasks = v9 == 0;
  }

  if (v9)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = self->_identifiersToTaskInfo;
    v11 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [(NDBackgroundSession *)self queueUpdatesForTask:*(*(&v15 + 1) + 8 * i) updateType:14 highPriority:1, v15];
        }

        v11 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    if ([v5 count])
    {
      [(NDTaskStorageDB *)self->tasksDB _deleteTaskEntriesWithIdentifiers:v5 forSession:self->_identifier sessionUUID:self->_uuid];
    }
  }

  if ([(NSMutableDictionary *)self->_identifiersToTaskInfo count]&& ![(NDBackgroundSession *)self sessionHasOutstandingTasks]&& self->_sendsLaunchEvents && ![(NDApplication *)self->_clientApplication canBeSuspended])
  {
    [(NDBackgroundSession *)self wakeUpClient:2];
  }

  return v6;
}

- (id)restoreTasksFromArchivedInfo:(id)info
{
  infoCopy = info;
  +[NSMutableArray array];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100036250;
  v10[3] = &unk_1000D5398;
  v5 = v10[4] = self;
  v11 = v5;
  v13 = v14;
  v6 = infoCopy;
  v12 = v6;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];
  v7 = v12;
  v8 = v5;

  _Block_object_dispose(v14, 8);

  return v8;
}

- (id)restoreTasksFromSqliteDB:(id)b
{
  bCopy = b;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    *buf = 138543362;
    v65 = uuid;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> restoreTasksFromSqliteDB", buf, 0xCu);
  }

  tasksDB = self->tasksDB;
  if (tasksDB)
  {
    v7 = [(NDTaskStorageDB *)tasksDB _getAllTasksFromDBForSession:self->_identifier sessionUUID:self->_uuid];
  }

  else
  {
    v7 = 0;
  }

  v54 = +[NSMutableArray array];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (v8)
  {
    v53 = 0;
    v57 = *v61;
    *&v9 = 138543618;
    v52 = v9;
    do
    {
      v10 = 0;
      v11 = v53 <= 0x200;
      v12 = 512 - v53;
      v53 += v8;
      if (v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v58 = v13;
      do
      {
        if (*v61 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v60 + 1) + 8 * v10);
        if (v14)
        {
          downloadFileURL = [*(*(&v60 + 1) + 8 * v10) downloadFileURL];
          v16 = downloadFileURL == 0;

          if (!v16)
          {
            downloadFileURL2 = [v14 downloadFileURL];
            v18 = +[Daemon sharedDaemon];
            if (([v18 isPrivileged]& 1) != 0)
            {
              goto LABEL_17;
            }

            path = [downloadFileURL2 path];
            path2 = [(NSURL *)self->_downloadDirectory path];
            v21 = [path hasPrefix:path2];

            if ((v21 & 1) == 0)
            {
              v31 = qword_1000EB210;
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                uuid2 = [(NDBackgroundSession *)self uuid];
                clientBundleID = self->_clientBundleID;
                path3 = [(NSURL *)self->_downloadDirectory path];
                path4 = [downloadFileURL2 path];
                *buf = 138544130;
                v65 = uuid2;
                v66 = 2114;
                v67 = clientBundleID;
                v68 = 2112;
                v69 = path3;
                v70 = 2112;
                v71 = path4;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Download directory for bundle %{public}@ has moved to %@, but saved download file path is %@. Need to fix download path", buf, 0x2Au);
              }

              downloadDirectory = self->_downloadDirectory;
              lastPathComponent = [downloadFileURL2 lastPathComponent];
              v38 = [(NSURL *)downloadDirectory URLByAppendingPathComponent:lastPathComponent];
              [v14 setDownloadFileURL:v38];

              v18 = qword_1000EB210;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                uuid3 = [(NDBackgroundSession *)self uuid];
                downloadFileURL3 = [v14 downloadFileURL];
                path5 = [downloadFileURL3 path];
                *buf = v52;
                v65 = uuid3;
                v66 = 2112;
                v67 = path5;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> New download path: %@", buf, 0x16u);
              }

LABEL_17:
            }
          }

          v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 identifier]);
          v59 = 0;
          if ([v14 shouldCancelOnDisconnect] && objc_msgSend(v14, "state") <= 2)
          {
            [v14 setState:3];
            currentRequest = [v14 currentRequest];
            v24 = [currentRequest URL];
            v25 = [NSURLError _web_errorWithDomain:NSURLErrorDomain code:-997 URL:v24];
            [v14 setError:v25];

            v26 = qword_1000EB210;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              uuid4 = [(NDBackgroundSession *)self uuid];
              _loggableDescription = [v14 _loggableDescription];
              error = [v14 error];
              error2 = [v14 error];
              code = [error2 code];
              *buf = 138544130;
              v65 = uuid4;
              v66 = 2114;
              v67 = _loggableDescription;
              v68 = 2112;
              v69 = error;
              v70 = 2048;
              v71 = code;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ completed with error %@ [%ld] (was active before nsurlsessiond exit)", buf, 0x2Au);
            }
          }

          v27 = [(NDBackgroundSession *)self restoreTask:v14 isOutstanding:&v59];
          if (v27)
          {
            if (v59 == 1)
            {
              v28 = qword_1000EB210;
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                _loggableDescription2 = [v14 _loggableDescription];
                *buf = 138543362;
                v65 = _loggableDescription2;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Adding %{public}@ to outstanding tasks", buf, 0xCu);
              }

              -[NDBackgroundSession addOutstandingTaskWithIdentifier:](self, "addOutstandingTaskWithIdentifier:", [v14 identifier]);
              [v54 addObject:v14];
            }

            [(NSMutableDictionary *)self->_identifiersToTaskInfo setObject:v14 forKeyedSubscript:v22];
            [(NSMutableDictionary *)self->_identifiersToTasks setObject:v27 forKeyedSubscript:v22];
            [(NSMutableDictionary *)self->_tasksToIdentifiers setObject:v22 forKeyedSubscript:v27];
          }

          else
          {
            [bCopy addObject:v22];
            v30 = qword_1000EB210;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              uuid5 = [(NDBackgroundSession *)self uuid];
              identifier = self->_identifier;
              v43 = self->_clientBundleID;
              *buf = 138544130;
              v65 = uuid5;
              v66 = 2114;
              v67 = v22;
              v68 = 2114;
              v69 = v43;
              v70 = 2112;
              v71 = identifier;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Couldn't recreate existing task with identifier: %{public}@ in session: <%{public}@>.<%@>", buf, 0x2Au);
            }
          }
        }

        if (v58 == v10)
        {
          goto LABEL_43;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v50 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
      v8 = v50;
    }

    while (v50);
  }

LABEL_43:

  return v54;
}

- (id)restoreTask:(id)task isOutstanding:(BOOL *)outstanding
{
  taskCopy = task;
  *outstanding = 1;
  if ([taskCopy state] == 2)
  {
    [taskCopy setState:3];
    currentRequest = [taskCopy currentRequest];
    v8 = [currentRequest URL];
    v9 = [NSURLError _web_errorWithDomain:NSURLErrorDomain code:-999 URL:v8];
    [taskCopy setError:v9];
  }

  if ([taskCopy state] == 3)
  {
    *outstanding = 0;
    v10 = [(NDBackgroundSession *)self restoreCompletedTask:taskCopy];
  }

  else
  {
    if (![taskCopy hasStarted])
    {
      v13 = qword_1000EB210;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        uuid = [(NDBackgroundSession *)self uuid];
        _loggableDescription = [taskCopy _loggableDescription];
        *buf = 138543618;
        v27 = uuid;
        v28 = 2114;
        v29 = _loggableDescription;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ not restoring, which had never been started", buf, 0x16u);
      }

      bundleID = [taskCopy bundleID];
      v15 = [bundleID isEqualToString:@"com.apple.mobileassetd"];

      if (v15)
      {
        resourceTimeoutError = [0 resourceTimeoutError];
        workQueue = self->_workQueue;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000377CC;
        v22[3] = &unk_1000D5370;
        v22[4] = self;
        v23 = taskCopy;
        v24 = 0;
        v25 = resourceTimeoutError;
        v18 = resourceTimeoutError;
        dispatch_async(workQueue, v22);
      }

      goto LABEL_13;
    }

    v10 = [(NDBackgroundSession *)self restoreInProgressTask:taskCopy];
  }

  v11 = v10;
  if (v10)
  {
    sub_100008C24(v10, [taskCopy basePriority], self->_monitoredApplication);
    [(NDBackgroundSession *)self configureTask:v11 withTaskInfo:taskCopy];
    [taskCopy loadingPriority];
    [v11 set_loadingPriority:?];
    [v11 set_bytesPerSecondLimit:{objc_msgSend(taskCopy, "bytesPerSecondLimit")}];
    [v11 set_expectedProgressTarget:{objc_msgSend(taskCopy, "expectedProgressTarget")}];
    originalRequest = [taskCopy originalRequest];
    [v11 setOriginalRequest:originalRequest];

    [taskCopy creationTime];
    [v11 setStartTime:?];
    [v11 set_TLSMinimumSupportedProtocolVersion:{objc_msgSend(taskCopy, "_TLSMinimumSupportedProtocolVersion")}];
    [v11 set_TLSMaximumSupportedProtocolVersion:{objc_msgSend(taskCopy, "_TLSMaximumSupportedProtocolVersion")}];
    [v11 set_requiresPowerPluggedIn:{objc_msgSend(taskCopy, "_requiresPowerPluggedIn")}];
    goto LABEL_14;
  }

LABEL_13:
  v11 = 0;
  *outstanding = 0;
LABEL_14:

  return v11;
}

- (id)restoreCompletedTask:(id)task
{
  taskCopy = task;
  if ([taskCopy taskKind])
  {
    if ([taskCopy taskKind] == 1)
    {
      v5 = "__NSCFLocalUploadTask";
    }

    else
    {
      v5 = "__NSCFLocalDataTask";
    }
  }

  else
  {
    v5 = "__NSCFLocalDownloadTask";
  }

  v38 = -[NDBackgroundSession sessionForDiscretionaryStatus:](self, "sessionForDiscretionaryStatus:", [taskCopy isDiscretionary]);
  v6 = objc_alloc(objc_getClass(v5));
  defaultTaskGroup = [v38 defaultTaskGroup];
  v8 = [v6 initWithBackgroundTaskInfo:taskCopy taskGroup:defaultTaskGroup];

  v40 = v8;
  [(NDBackgroundSession *)self configureAdditionalPropertiesOnTask:v8 taskInfo:taskCopy];
  pathToDownloadTaskFile = [taskCopy pathToDownloadTaskFile];
  if (pathToDownloadTaskFile || ([taskCopy additionalProperties], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", @"pathToDownloadTaskFile"), pathToDownloadTaskFile = objc_claimAutoreleasedReturnValue(), v10, pathToDownloadTaskFile))
  {
    path = pathToDownloadTaskFile;
    v37 = path;
  }

  else
  {
    downloadFileURL = [taskCopy downloadFileURL];
    path = [downloadFileURL path];

    v37 = 0;
    v39 = 0;
    if (!path)
    {
      goto LABEL_18;
    }
  }

  v12 = +[NSFileManager defaultManager];
  v13 = [v12 fileExistsAtPath:path];

  if (v13)
  {
    v14 = qword_1000EB210;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      uuid = [(NDBackgroundSession *)self uuid];
      _loggableDescription = [taskCopy _loggableDescription];
      *buf = 138543874;
      v44 = uuid;
      v45 = 2114;
      v46 = _loggableDescription;
      v47 = 2112;
      v48 = path;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "NDSession <%{public}@> %{public}@ is being restored as completed with download file still at %@", buf, 0x20u);
    }

    v15 = [PendingCallback alloc];
    identifier = [taskCopy identifier];
    v42[0] = taskCopy;
    response = [v40 response];
    v18 = response;
    if (!response)
    {
      v18 = +[NSNull null];
    }

    v42[1] = v18;
    v19 = [NSArray arrayWithObjects:v42 count:2];
    v20 = [(PendingCallback *)v15 initWithCallbackType:1 taskIdentifier:identifier args:v19];

    if (!response)
    {
    }

    [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v20 wakeRequirement:0];
  }

  v39 = path;
LABEL_18:
  v21 = objc_alloc_init(NSMutableDictionary);
  _backgroundTrailers = [taskCopy _backgroundTrailers];
  v23 = _backgroundTrailers == 0;

  if (!v23)
  {
    _backgroundTrailers2 = [taskCopy _backgroundTrailers];
    [v21 setObject:_backgroundTrailers2 forKeyedSubscript:@"trailers"];
  }

  v25 = [PendingCallback alloc];
  identifier2 = [taskCopy identifier];
  error = [taskCopy error];
  v28 = error;
  if (!error)
  {
    v28 = +[NSNull null];
  }

  v41[0] = v28;
  taskMetrics = [taskCopy taskMetrics];
  v30 = taskMetrics;
  if (!taskMetrics)
  {
    v30 = +[NSNull null];
  }

  v41[1] = v30;
  v41[2] = v21;
  v31 = [NSArray arrayWithObjects:v41 count:3];
  v32 = [(PendingCallback *)v25 initWithCallbackType:0 taskIdentifier:identifier2 args:v31];

  if (!taskMetrics)
  {
  }

  if (!error)
  {
  }

  [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v32 wakeRequirement:0];

  return v40;
}

- (id)restoreInProgressTask:(id)task
{
  taskCopy = task;
  v6 = [(NDBackgroundSession *)self adjustDiscretionaryStatusForTaskInfo:taskCopy];
  if ([taskCopy taskKind])
  {
    goto LABEL_31;
  }

  response = [taskCopy response];
  if (!response)
  {
    goto LABEL_31;
  }

  downloadFileURL = [taskCopy downloadFileURL];

  if (!downloadFileURL)
  {
    goto LABEL_31;
  }

  [(NDBackgroundSession *)self ensureSessionDownloadDirectoryExists];
  v15 = objc_alloc(objc_getClass("__NSCFLocalDownloadTask"));
  defaultTaskGroup = [v6 defaultTaskGroup];
  v17 = [v15 initWithBackgroundTaskInfo:taskCopy taskGroup:defaultTaskGroup];

  [(NDBackgroundSession *)self configureAdditionalPropertiesOnTask:v17 taskInfo:taskCopy];
  v18 = [(NDBackgroundSession *)self requestWithAdjustedWindowForTaskInfo:taskCopy];
  [v17 updateCurrentRequest:v18];

  pathToDownloadTaskFile = [taskCopy pathToDownloadTaskFile];
  if (pathToDownloadTaskFile || ([taskCopy additionalProperties], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "objectForKeyedSubscript:", @"pathToDownloadTaskFile"), pathToDownloadTaskFile = objc_claimAutoreleasedReturnValue(), v20, pathToDownloadTaskFile))
  {
    v21 = 0;
    path = pathToDownloadTaskFile;
  }

  else
  {
    downloadFileURL2 = [taskCopy downloadFileURL];
    path = [downloadFileURL2 path];
    pathToDownloadTaskFile = 0;
    v21 = 1;
  }

  v23 = [v17 createResumeInformation:path];
  if (v21)
  {
  }

  if (v23)
  {
    v24 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v24 encodeObject:v23 forKey:@"NSKeyedArchiveRootObjectKey"];
    encodedData = [v24 encodedData];
    if (encodedData)
    {
      v11 = [v6 downloadTaskWithResumeData:encodedData];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v24 = qword_1000EB210;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      uuid = [(NDBackgroundSession *)self uuid];
      _loggableDescription = [taskCopy _loggableDescription];
      *buf = 138543618;
      v32 = uuid;
      v33 = 2114;
      v34 = _loggableDescription;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ could not create resume data. The server might not support resumable downloads. Will retry full download", buf, 0x16u);
    }

    v11 = 0;
  }

  if (v11)
  {
    v26 = qword_1000EB210;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      _loggableDescription2 = [v11 _loggableDescription];
      *buf = 138543618;
      v32 = uuid2;
      v33 = 2114;
      v34 = _loggableDescription2;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ download created from resume data", buf, 0x16u);
    }
  }

  else
  {
LABEL_31:
    if (![taskCopy taskKind])
    {
      additionalProperties = [taskCopy additionalProperties];
      v8 = [additionalProperties objectForKeyedSubscript:@"pathToDownloadTaskFile"];
      v9 = v8;
      uTF8String = [v8 UTF8String];

      if (uTF8String)
      {
        unlink(uTF8String);
      }
    }

    v11 = [(NDBackgroundSession *)self createNewTaskFromInfo:taskCopy];
  }

  return v11;
}

- (id)createNewTaskFromInfo:(id)info
{
  infoCopy = info;
  [(NDBackgroundSession *)self removeDownloadFileForTaskInfo:infoCopy];
  v5 = [(NDBackgroundSession *)self adjustDiscretionaryStatusForTaskInfo:infoCopy];
  v6 = [(NDBackgroundSession *)self requestWithAdjustedWindowForTaskInfo:infoCopy];
  if (!v6)
  {
    v14 = qword_1000EB210;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(NDBackgroundSession *)self uuid];
      _loggableDescription = [infoCopy _loggableDescription];
      currentRequest = [infoCopy currentRequest];
      v34 = 138543874;
      v35 = uuid;
      v36 = 2114;
      v37 = _loggableDescription;
      v38 = 2112;
      v39 = currentRequest;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ couldn't create new task becuase adjusted request is nil, taskInfo.currentRequest = %@", &v34, 0x20u);
    }

    v8 = 0;
    goto LABEL_18;
  }

  if ([infoCopy taskKind])
  {
    if ([infoCopy taskKind] == 1)
    {
      fileURL = [infoCopy fileURL];
      v8 = [v5 uploadTaskWithRequest:v6 fromFile:fileURL];

      resumableUploadData = [infoCopy resumableUploadData];

      if (resumableUploadData)
      {
        Class = objc_getClass("__NSCFResumableUploadState");
        resumableUploadData2 = [infoCopy resumableUploadData];
        originalRequest = [infoCopy originalRequest];
        v13 = [(objc_class *)Class rusWithResumeData:resumableUploadData2 originalRequest:originalRequest];

        if (v13)
        {
          [v8 setResumableUploadState:v13];
        }
      }
    }

    else
    {
      v8 = [v5 dataTaskWithRequest:v6];
    }

    goto LABEL_18;
  }

  v18 = +[Daemon sharedDaemon];
  if ([v18 isPrivileged])
  {
    downloadFileURL = [infoCopy downloadFileURL];
    path = [downloadFileURL path];
  }

  else
  {
    path = 0;
  }

  [(NDBackgroundSession *)self ensureSessionDownloadDirectoryExists];
  v21 = [v5 _downloadTaskWithRequest:v6 downloadFilePath:path];
  v8 = v21;
  if (v21)
  {
    downloadFile = [v21 downloadFile];
    path2 = [downloadFile path];

    if (path2)
    {
      downloadFile2 = [v8 downloadFile];
      path3 = [downloadFile2 path];
      v26 = [NSURL fileURLWithPath:path3];
      [infoCopy setDownloadFileURL:v26];

LABEL_18:
      [v8 set_suspensionThreshhold:0x80000];
      v8 = v8;
      v27 = v8;
      goto LABEL_19;
    }
  }

  v29 = qword_1000EB210;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    uuid2 = [(NDBackgroundSession *)self uuid];
    _loggableDescription2 = [infoCopy _loggableDescription];
    downloadFile3 = [v8 downloadFile];
    path4 = [downloadFile3 path];
    v34 = 138544130;
    v35 = uuid2;
    v36 = 2114;
    v37 = _loggableDescription2;
    v38 = 2112;
    v39 = v8;
    v40 = 2112;
    v41 = path4;
    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ couldn't create new task. task: %@, path: %@", &v34, 0x2Au);
  }

  v27 = 0;
LABEL_19:

  return v27;
}

- (void)configureTask:(id)task withTaskInfo:(id)info
{
  taskCopy = task;
  infoCopy = info;
  [taskCopy setTaskIdentifier:{objc_msgSend(infoCopy, "identifier")}];
  taskDescription = [infoCopy taskDescription];
  [taskCopy setTaskDescription:taskDescription];

  earliestBeginDate = [infoCopy earliestBeginDate];
  [taskCopy setEarliestBeginDate:earliestBeginDate];

  [taskCopy setCountOfBytesClientExpectsToSend:{objc_msgSend(infoCopy, "countOfBytesClientExpectsToSend")}];
  [taskCopy setCountOfBytesClientExpectsToReceive:{objc_msgSend(infoCopy, "countOfBytesClientExpectsToReceive")}];
  uniqueIdentifier = [infoCopy uniqueIdentifier];
  [taskCopy set_uniqueIdentifier:uniqueIdentifier];

  storagePartitionIdentifier = [infoCopy storagePartitionIdentifier];
  [taskCopy set_storagePartitionIdentifier:storagePartitionIdentifier];

  pathToDownloadTaskFile = [infoCopy pathToDownloadTaskFile];
  [taskCopy set_pathToDownloadTaskFile:pathToDownloadTaskFile];

  taskMetrics = [infoCopy taskMetrics];

  if (taskMetrics)
  {
    taskMetrics2 = [infoCopy taskMetrics];
    [taskCopy set_metrics:taskMetrics2];

    [infoCopy setTaskMetrics:0];
  }

  [(NDBackgroundSession *)self configureAdditionalPropertiesOnTask:taskCopy taskInfo:infoCopy];
}

- (void)configureAdditionalPropertiesOnTask:(id)task taskInfo:(id)info
{
  taskCopy = task;
  infoCopy = info;
  additionalProperties = [infoCopy additionalProperties];

  if (additionalProperties)
  {
    additionalProperties2 = [infoCopy additionalProperties];
    v9 = [additionalProperties2 objectForKeyedSubscript:@"effectiveConfig"];
    if (v9)
    {
      v10 = -[NDBackgroundSession configurationWithClientConfiguration:discretionary:](self, "configurationWithClientConfiguration:discretionary:", v9, [infoCopy isDiscretionary]);
      v11 = [additionalProperties2 mutableCopy];
      [v11 setObject:v10 forKeyedSubscript:@"effectiveConfig"];

      additionalProperties2 = v11;
    }

    additionalProperties3 = [infoCopy additionalProperties];
    v13 = [additionalProperties3 objectForKeyedSubscript:@"TimeoutIntervalForResource"];

    if (v13)
    {
      currentRequest = [taskCopy currentRequest];
      v15 = [(NDBackgroundSession *)self currentDiscretionaryStatus:currentRequest withOptionalTaskInfo:infoCopy];

      [(NDBackgroundSession *)self setupDASPropertiesOnTask:taskCopy taskInfo:infoCopy discretionaryStatus:v15];
    }

    sub_100003A38(taskCopy, additionalProperties2);
  }
}

- (id)sanitizeTaskProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [propertiesCopy objectForKeyedSubscript:@"effectiveConfig"];
  v7 = v6;
  if (v6)
  {
    _sourceApplicationBundleIdentifier = [v6 _sourceApplicationBundleIdentifier];
    if (_sourceApplicationBundleIdentifier)
    {
      v9 = sub_100008D00(v5, @"com.apple.private.nsurlsession.impersonate");

      if ((v9 & 1) == 0)
      {
        [v7 set_sourceApplicationBundleIdentifier:0];
        v10 = qword_1000EB210;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          uuid = [(NDBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543618;
          *(v60 + 4) = uuid;
          WORD6(v60[0]) = 2112;
          *(v60 + 14) = @"com.apple.private.nsurlsession.impersonate";
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _sourceApplicationBundleIdentifier but is missing the %@ entitlement", v60, 0x16u);
        }
      }
    }

    _sourceApplicationSecondaryIdentifier = [v7 _sourceApplicationSecondaryIdentifier];
    if (_sourceApplicationSecondaryIdentifier)
    {
      v12 = sub_100008D00(v5, @"com.apple.private.nsurlsession.impersonate");

      if ((v12 & 1) == 0)
      {
        [v7 set_sourceApplicationSecondaryIdentifier:0];
        v13 = qword_1000EB210;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          uuid2 = [(NDBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543618;
          *(v60 + 4) = uuid2;
          WORD6(v60[0]) = 2112;
          *(v60 + 14) = @"com.apple.private.nsurlsession.impersonate";
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _sourceApplicationSecondaryIdentifier but is missing the %@ entitlement", v60, 0x16u);
        }
      }
    }

    _sourceApplicationAuditTokenData = [v7 _sourceApplicationAuditTokenData];
    if (_sourceApplicationAuditTokenData)
    {
      v15 = sub_100008D00(v5, @"com.apple.private.nsurlsession.impersonate");

      if ((v15 & 1) == 0)
      {
        [v7 set_sourceApplicationAuditTokenData:0];
        v16 = qword_1000EB210;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          uuid3 = [(NDBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543618;
          *(v60 + 4) = uuid3;
          WORD6(v60[0]) = 2112;
          *(v60 + 14) = @"com.apple.private.nsurlsession.impersonate";
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _sourceApplicationAuditTokenData but is missing the %@ entitlement", v60, 0x16u);
        }
      }
    }

    [v7 set_attributedBundleIdentifier:0];
    if ([v7 _respectsAllowsCellularAccessForDiscretionaryTasks] && (sub_100008D00(v5, @"com.apple.private.nsurlsession.allow-discretionary-cellular") & 1) == 0)
    {
      [v7 set_respectsAllowsCellularAccessForDiscretionaryTasks:0];
      v17 = qword_1000EB210;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        uuid4 = [(NDBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = uuid4;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = @"com.apple.private.nsurlsession.allow-discretionary-cellular";
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _respectsAllowsCellularAccessForDiscretionaryTasks but is missing the %@ entitlement", v60, 0x16u);
      }
    }

    if ([v7 _allowsPowerNapScheduling] && (sub_100008D00(v5, @"com.apple.private.dark-wake-network-reachability") & 1) == 0)
    {
      [v7 set_allowsPowerNapScheduling:0];
      v18 = qword_1000EB210;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        uuid5 = [(NDBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = uuid5;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = @"com.apple.private.dark-wake-network-reachability";
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _allowsPowerNapScheduling but is missing the %@ entitlement", v60, 0x16u);
      }
    }

    _connectionPoolName = [v7 _connectionPoolName];
    if (_connectionPoolName)
    {
      v20 = sub_100008D00(v5, @"com.apple.private.nsurlsession-allow-override-connection-pool");

      if ((v20 & 1) == 0)
      {
        [v7 set_connectionPoolName:0];
        v21 = qword_1000EB210;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          uuid6 = [(NDBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543618;
          *(v60 + 4) = uuid6;
          WORD6(v60[0]) = 2112;
          *(v60 + 14) = @"com.apple.private.nsurlsession-allow-override-connection-pool";
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _connectionPoolName but is missing the %@ entitlement", v60, 0x16u);
        }
      }
    }

    _directoryForDownloadedFiles = [v7 _directoryForDownloadedFiles];
    if (_directoryForDownloadedFiles)
    {
      v23 = +[Daemon sharedDaemon];
      isPrivileged = [v23 isPrivileged];

      if ((isPrivileged & 1) == 0)
      {
        _directoryForDownloadedFiles2 = [v7 _directoryForDownloadedFiles];
        if (v5)
        {
          [v5 auditToken];
        }

        else
        {
          memset(v60, 0, sizeof(v60));
        }

        v26 = [NDFileUtilities safeDirectoryForDownloads:_directoryForDownloadedFiles2 auditToken:v60];
        [v7 set_directoryForDownloadedFiles:v26];

        _directoryForDownloadedFiles3 = [v7 _directoryForDownloadedFiles];
        v28 = _directoryForDownloadedFiles3 == 0;

        if (v28)
        {
          v29 = qword_1000EB210;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            uuid7 = [(NDBackgroundSession *)self uuid];
            LODWORD(v60[0]) = 138543362;
            *(v60 + 4) = uuid7;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _directoryForDownloadedFiles but does not have access to directory", v60, 0xCu);
          }
        }
      }
    }

    if ([v7 _duetPreauthorized] && (sub_100008D00(v5, @"com.apple.private.nsurlsession.allow-duet-preauthorization") & 1) == 0)
    {
      [v7 set_duetPreauthorized:0];
      v30 = qword_1000EB210;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        uuid8 = [(NDBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = uuid8;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = @"com.apple.private.nsurlsession.allow-duet-preauthorization";
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _duetPreauthorized but is missing the %@ entitlement", v60, 0x16u);
      }
    }

    _maximumWatchCellularTransferSize = [v7 _maximumWatchCellularTransferSize];
    if (_maximumWatchCellularTransferSize)
    {
      v32 = sub_100008D00(v5, @"com.apple.private.nsurlsession.set-max-watch-cell-transfer-size");

      if ((v32 & 1) == 0)
      {
        [v7 set_maximumWatchCellularTransferSize:0];
        v33 = qword_1000EB210;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          uuid9 = [(NDBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543362;
          *(v60 + 4) = uuid9;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _maximumWatchCellularTransferSize but is missing the necessary entitlement", v60, 0xCu);
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

    [v7 set_pidForHAR:processIdentifier];
  }

  v35 = [propertiesCopy mutableCopy];
  v36 = [propertiesCopy objectForKeyedSubscript:@"pathToDownloadTaskFile"];
  if (v36)
  {
    v37 = [NSURL fileURLWithPath:v36 isDirectory:0];
    v38 = +[NSXPCConnection currentConnection];
    v39 = v38;
    if (v38)
    {
      [v38 auditToken];
    }

    else
    {
      memset(v60, 0, sizeof(v60));
    }

    v40 = [NDFileUtilities safeURLForDownload:v37 auditToken:v60];

    if (!v40)
    {
      v41 = qword_1000EB210;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        uuid10 = [(NDBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = uuid10;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = v36;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _pathToDownloadTaskFile but is not allowed to create %@", v60, 0x16u);
      }
    }

    path = [v40 path];
    [v35 setObject:path forKeyedSubscript:@"pathToDownloadTaskFile"];
  }

  v43 = [propertiesCopy objectForKeyedSubscript:@"sourceApplicationBundleIdentifierForMobileAsset"];
  if (v43)
  {
    v44 = sub_100008D00(v5, @"com.apple.private.nsurlsession.impersonate");

    if ((v44 & 1) == 0)
    {
      v45 = qword_1000EB210;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        uuid11 = [(NDBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = uuid11;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = @"com.apple.private.nsurlsession.impersonate";
        _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _sourceApplicationBundleIdentifier but is missing the %@ entitlement", v60, 0x16u);
      }

      [v35 setObject:0 forKeyedSubscript:@"sourceApplicationBundleIdentifierForMobileAsset"];
    }
  }

  v46 = [propertiesCopy objectForKeyedSubscript:@"SZExtractor"];
  if (v46)
  {
    v47 = [NSKeyedArchiver archivedDataWithRootObject:v46 requiringSecureCoding:1 error:0];
    [v35 setObject:v47 forKeyedSubscript:@"SerializedSZExtractor"];
    [v35 setObject:0 forKeyedSubscript:@"SZExtractor"];
  }

  return v35;
}

- (id)adjustDiscretionaryStatusForTaskInfo:(id)info
{
  infoCopy = info;
  [(NDBackgroundSession *)self updateTaskInfoBasedOnCurrentDiscretionaryStatus:infoCopy];
  v5 = -[NDBackgroundSession sessionForDiscretionaryStatus:](self, "sessionForDiscretionaryStatus:", [infoCopy isDiscretionary]);

  return v5;
}

- (void)updateTaskInfoBasedOnCurrentDiscretionaryStatus:(id)status
{
  statusCopy = status;
  if (([statusCopy isDiscretionary] & 1) != 0 || objc_msgSend(statusCopy, "mayBeDemotedToDiscretionary"))
  {
    currentRequest = [statusCopy currentRequest];
    v6 = [(NDBackgroundSession *)self currentDiscretionaryStatus:currentRequest withOptionalTaskInfo:statusCopy];

    v7 = qword_1000EB210;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(NDBackgroundSession *)self uuid];
      _loggableDescription = [statusCopy _loggableDescription];
      v10 = 138544130;
      v11 = uuid;
      v12 = 2114;
      v13 = _loggableDescription;
      v14 = 1024;
      isDiscretionary = [statusCopy isDiscretionary];
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ potentially discretionary, re-scheduling, was discretionary: %d, is now discretionary: %d", &v10, 0x22u);
    }

    [statusCopy setDiscretionary:v6];
    if (([statusCopy basePrioritySetExplicitly] & 1) == 0)
    {
      [statusCopy setBasePriority:{-[NDBackgroundSession priorityForDiscretionaryStatus:](self, "priorityForDiscretionaryStatus:", v6)}];
    }
  }
}

- (id)requestWithAdjustedWindowForTaskInfo:(id)info
{
  infoCopy = info;
  currentRequest = [infoCopy currentRequest];
  v6 = [currentRequest mutableCopy];

  originalRequest = [infoCopy originalRequest];
  [originalRequest _timeWindowDuration];
  v9 = v8;

  originalRequest2 = [infoCopy originalRequest];
  [originalRequest2 _timeWindowDelay];
  v12 = v11;

  isDiscretionary = [infoCopy isDiscretionary];
  if (v9 == 0.0)
  {
    v14 = isDiscretionary;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1)
  {
    configuration = [(NSURLSession *)self->_discretionaryPrioritySession configuration];
    [configuration timeoutIntervalForResource];
    [(NDBackgroundSession *)self defaultWindowDurationForResourceTimeout:?];
    v9 = v16;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v18 = v17;
  [infoCopy creationTime];
  v20 = v18 - v19;
  if (v18 - v19 < 0.0)
  {
    v20 = 0.0;
    [infoCopy setCreationTime:v18];
  }

  v21 = v12 - v20;
  if (v12 - v20 >= 0.0)
  {
    v22 = v9;
  }

  else
  {
    v22 = v9 + v12 - v20;
  }

  if (v22 <= 0.0)
  {
    if ([infoCopy isDiscretionary])
    {
      v22 = 60.0;
    }

    else
    {
      v22 = 0.0;
    }
  }

  v23 = fmax(v21, 0.0);
  v24 = qword_1000EB210;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    _loggableDescription = [infoCopy _loggableDescription];
    v28 = 138544386;
    v29 = uuid;
    v30 = 2114;
    v31 = _loggableDescription;
    v32 = 2048;
    v33 = v20;
    v34 = 2048;
    v35 = v23;
    v36 = 2048;
    v37 = v22;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ %f seconds past start time, new delay: %f, new window: %f", &v28, 0x34u);
  }

  [v6 _setTimeWindowDuration:v22];
  [v6 _setTimeWindowDelay:v23];

  return v6;
}

- (id)descriptionForRequest:(id)request
{
  requestCopy = request;
  [requestCopy _timeWindowDelay];
  if (v4 == 0.0 && ([requestCopy _timeWindowDuration], v5 == 0.0))
  {
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ [allowsCellularAccess: %d, allowsExpensiveAccess: %d, allowsConstrainedAccess: %d]", requestCopy, [requestCopy allowsCellularAccess], objc_msgSend(requestCopy, "allowsExpensiveNetworkAccess"), objc_msgSend(requestCopy, "allowsConstrainedNetworkAccess"));
  }

  else
  {
    [requestCopy _timeWindowDelay];
    v7 = v6;
    [requestCopy _timeWindowDuration];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ [delay: %f, duration: %f, allowsCellularAccess: %d, allowsExpensiveAccess: %d, allowsConstrainedAccess: %d]", requestCopy, v7, v8, [requestCopy allowsCellularAccess], objc_msgSend(requestCopy, "allowsExpensiveNetworkAccess"), objc_msgSend(requestCopy, "allowsConstrainedNetworkAccess"));
  }

  v10 = v9;

  return v10;
}

- (id)descriptionForTaskWithIdentifier:(unint64_t)identifier
{
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v5 = [NSNumber numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v5];

  if (v6)
  {
    [v6 _loggableDescription];
  }

  else
  {
    [NSString stringWithFormat:@"Task <?>.<%lu>", identifier];
  }
  v7 = ;

  return v7;
}

- (void)queueUpdatesForTask:(id)task updateType:(unint64_t)type highPriority:(BOOL)priority
{
  taskCopy = task;
  workQueue = self->_workQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003A110;
  v11[3] = &unk_1000D5668;
  v11[4] = self;
  v12 = taskCopy;
  typeCopy = type;
  priorityCopy = priority;
  v10 = taskCopy;
  dispatch_async(workQueue, v11);
}

- (void)storeTaskInfoUpdates:(BOOL)updates
{
  Current = CFAbsoluteTimeGetCurrent();
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A304;
  block[3] = &unk_1000D5640;
  updatesCopy = updates;
  *&block[5] = Current;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)tasksArchivePath
{
  v2 = [(NSURL *)self->_sessionDirectory URLByAppendingPathComponent:@"tasks.plist"];
  path = [v2 path];

  return path;
}

- (void)obliterate
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    identifier = self->_identifier;
    clientBundleID = self->_clientBundleID;
    *buf = 138543874;
    v20 = uuid;
    v21 = 2114;
    v22 = clientBundleID;
    v23 = 2112;
    v24 = identifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Obliterating session: <%{public}@>.<%@>", buf, 0x20u);
  }

  self->_obliterated = 1;
  clientProxy = self->_clientProxy;
  self->_clientProxy = 0;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_outstandingTaskIDs;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [(NSMutableDictionary *)self->_identifiersToTasks objectForKeyedSubscript:*(*(&v14 + 1) + 8 * v11), v14];
        [v12 cancel];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(NDBackgroundSession *)self cleanupSessionWithCompletionHandler:0];
  v13 = +[NDUserEventAgentConnection sharedUserEventAgentConnection];
  [v13 removePendingWakeForClient:self->_clientBundleID sessionIdentifier:self->_identifier];
}

- (void)cleanupSessionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!self->_cleanedUp)
  {
    self->_cleanedUp = 1;
    v5 = qword_1000EB210;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(NDBackgroundSession *)self uuid];
      v13 = 138543362;
      v14 = uuid;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Cleaning up", &v13, 0xCu);
    }

    [(NSURLSession *)self->_userInitiatedSession finishTasksAndInvalidate];
    [(NSURLSession *)self->_discretionaryPrioritySession finishTasksAndInvalidate];
    userInitiatedSession = self->_userInitiatedSession;
    self->_userInitiatedSession = 0;

    discretionaryPrioritySession = self->_discretionaryPrioritySession;
    self->_discretionaryPrioritySession = 0;

    [NDFileUtilities removeItemAtURL:self->_uploadsDirectory];
    tasksDB = self->tasksDB;
    if (tasksDB)
    {
      [(NDTaskStorageDB *)tasksDB _deleteAllTaskEntriesForSession:self->_identifier sessionUUID:self->_uuid];
      v10 = self->tasksDB;
      self->tasksDB = 0;
    }

    [NDFileUtilities removeItemAtURL:self->_sessionDirectory];
    [(NDApplication *)self->_monitoredApplication removeObserver:self];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sessionCompleted:self withCompletionHandler:handlerCopy];

    v12 = +[Daemon sharedDaemon];
    [v12 releaseTransaction];
  }
}

- (void)clientApplicationWasReinstalled
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    *buf = 138543618;
    v32 = uuid;
    v33 = 2114;
    v34 = clientBundleID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Application %{public}@ was reinstalled, adjusting download paths", buf, 0x16u);
  }

  setupDownloadDirectory = [(NDBackgroundSession *)self setupDownloadDirectory];
  v24 = setupDownloadDirectory;
  if (setupDownloadDirectory)
  {
    v7 = setupDownloadDirectory;
    if (([setupDownloadDirectory isEqual:self->_downloadDirectory] & 1) == 0)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = self->_identifiersToTaskInfo;
      v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v8)
      {
        v9 = *v27;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v27 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v26 + 1) + 8 * i);
            v12 = [(NSMutableDictionary *)self->_identifiersToTaskInfo objectForKeyedSubscript:v11];
            if (![v12 taskKind])
            {
              downloadFileURL = [v12 downloadFileURL];
              v14 = downloadFileURL;
              if (downloadFileURL)
              {
                lastPathComponent = [downloadFileURL lastPathComponent];
                v16 = [v24 URLByAppendingPathComponent:lastPathComponent];
              }

              else
              {
                v16 = 0;
              }

              [v12 setDownloadFileURL:v16];
              v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 identifier]);
              [(NDBackgroundSession *)self queueUpdatesForTask:v17 updateType:3 highPriority:0];

              v18 = [(NSMutableDictionary *)self->_identifiersToTasks objectForKeyedSubscript:v11];
              path = [v16 path];
              downloadFile = [v18 downloadFile];
              [downloadFile setPath:path];
            }
          }

          v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v8);
      }

      objc_storeStrong(&self->_downloadDirectory, v24);
      v7 = v24;
    }
  }

  else
  {
    v21 = qword_1000EB210;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      v23 = self->_clientBundleID;
      *buf = 138543618;
      v32 = uuid2;
      v33 = 2114;
      v34 = v23;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Couldn't find out download directory for re-installed application %{public}@. It must not have been re-installed properly. Obliterating session", buf, 0x16u);
    }

    v7 = 0;
    [(NDBackgroundSession *)self obliterate];
  }
}

- (void)backgroundUpdatesEnabledForApplication:(id)application
{
  applicationCopy = application;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003ACBC;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = applicationCopy;
  v6 = applicationCopy;
  dispatch_async(workQueue, v7);
}

- (void)applicationWasSuspended:(id)suspended pid:(int)pid
{
  suspendedCopy = suspended;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AE50;
  block[3] = &unk_1000D5618;
  block[4] = self;
  v10 = suspendedCopy;
  pidCopy = pid;
  v8 = suspendedCopy;
  dispatch_async(workQueue, block);
}

- (void)setXPCConnection:(id)connection
{
  connectionCopy = connection;
  [connectionCopy setUserInfo:self];
  objc_storeStrong(&self->_xpcConn, connection);
  self->_clientPID = [connectionCopy processIdentifier];
  v6 = qword_1000EB210;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDBackgroundSession *)self uuid];
    xpcConn = self->_xpcConn;
    identifier = self->_identifier;
    clientBundleID = self->_clientBundleID;
    clientPID = self->_clientPID;
    *buf = 138544386;
    *&buf[4] = uuid;
    *&buf[12] = 2112;
    *&buf[14] = xpcConn;
    *&buf[22] = 2114;
    *&buf[24] = clientBundleID;
    v21 = 2112;
    v22 = identifier;
    v23 = 1024;
    v24 = clientPID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Using XPC connection %@ for client %{public}@ with identifier %@ and PID %d", buf, 0x30u);
  }

  if (self->_shouldPullInitialCredentials)
  {
    self->_shouldPullInitialCredentials = 0;
    [(NDCredentialStorage *)self->_credentialStorage populateWithInitialCredentials];
  }

  _xpcConnection = [(NSXPCConnection *)self->_xpcConn _xpcConnection];
  is_extension = xpc_connection_is_extension();

  if (is_extension)
  {
    v14 = self->_xpcConn;
    if (v14)
    {
      [(NSXPCConnection *)v14 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    CPCopyBundleIdentifierAndTeamFromAuditToken();
    v15 = qword_1000EB210;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [(NDBackgroundSession *)self uuid];
      v18 = self->_identifier;
      v17 = self->_clientBundleID;
      *buf = 138544130;
      *&buf[4] = uuid2;
      *&buf[12] = 2114;
      *&buf[14] = 0;
      *&buf[22] = 2114;
      *&buf[24] = v17;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> XPC connection is to PlugIn %{public}@ for session <%{public}@>.<%@>", buf, 0x2Au);
    }
  }

  self->_shouldElevateDiscretionaryPriority = [(NDApplication *)self->_clientApplication shouldElevateDiscretionaryPriority];
  v19 = +[NDUserEventAgentConnection sharedUserEventAgentConnection];
  [v19 removePendingWakeForClient:self->_clientBundleID sessionIdentifier:self->_identifier];
}

- (id)sessionForDiscretionaryStatus:(BOOL)status
{
  v3 = 8;
  if (status)
  {
    v3 = 16;
  }

  return *(&self->super.isa + v3);
}

- (NDBackgroundSession)initWithConfiguration:(id)configuration bundleID:(id)d isSpringBoardApp:(BOOL)app downloadDirectory:(id)directory options:(id)options clientProxy:(id)proxy delegate:(id)delegate workQueue:(id)self0 db:(id)self1
{
  appCopy = app;
  configurationCopy = configuration;
  dCopy = d;
  optionsCopy = options;
  proxyCopy = proxy;
  obj = delegate;
  queueCopy = queue;
  dbCopy = db;
  v145.receiver = self;
  v145.super_class = NDBackgroundSession;
  v17 = [(NDBackgroundSession *)&v145 init];
  if (!v17)
  {
LABEL_67:
    v88 = v17;
    goto LABEL_68;
  }

  v18 = +[Daemon sharedDaemon];
  [v18 addTransaction];

  v19 = [optionsCopy objectForKeyedSubscript:@"NDBackgroundSessionManagerKeySessionUUID"];
  v20 = v19;
  if (v19)
  {
    v133 = v17 + 256;
    v21 = v19;
  }

  else
  {
    v21 = objc_alloc_init(NSUUID);
    v133 = v17 + 256;
  }

  v22 = *(v17 + 32);
  *(v17 + 32) = v21;

  objc_storeWeak(v17 + 31, obj);
  objc_storeStrong(v17 + 34, d);
  _sourceApplicationBundleIdentifier = [configurationCopy _sourceApplicationBundleIdentifier];
  if (_sourceApplicationBundleIdentifier)
  {
    _sourceApplicationBundleIdentifier2 = [configurationCopy _sourceApplicationBundleIdentifier];
    v25 = (v17 + 280);
  }

  else
  {
    v25 = (v17 + 280);
    _sourceApplicationBundleIdentifier2 = *(v17 + 34);
  }

  v26 = *(v17 + 35);
  *(v17 + 35) = _sourceApplicationBundleIdentifier2;

  v17[240] = 1;
  v27 = +[NSMutableDictionary dictionary];
  v28 = *(v17 + 22);
  *(v17 + 22) = v27;

  v139 = [[LSApplicationExtensionRecord alloc] initWithBundleIdentifier:*(v17 + 34) error:0];
  _sourceApplicationSecondaryIdentifier = [configurationCopy _sourceApplicationSecondaryIdentifier];
  v30 = *(v17 + 36);
  *(v17 + 36) = _sourceApplicationSecondaryIdentifier;

  v138 = [NDCloudContainer containerIDForPrimaryIdentifier:*(v17 + 35) secondaryIdentifier:*(v17 + 36)];
  if (v138)
  {
    v31 = [NDCloudContainer bundleIDForPrimaryIdentifier:*(v17 + 35) secondaryIdentifier:*(v17 + 36)];
    v32 = qword_1000EB210;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [v17 uuid];
      v34 = *(v17 + 34);
      *buf = 138544130;
      v147 = uuid;
      v148 = 2114;
      v149 = v34;
      v150 = 2112;
      v151 = v138;
      v152 = 2114;
      v153 = v31;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Client %{public}@ is acting on behalf of cloud documents container with container id: %@ and bundle id: %{public}@", buf, 0x2Au);
    }

    if (v31)
    {
      v35 = v31;
    }

    else
    {
      v35 = v138;
    }

    objc_storeStrong(v25, v35);
    v36 = [NDApplication cloudContainerWithIdentifier:v138];
    v37 = *(v17 + 26);
    *(v17 + 26) = v36;
  }

  v38 = (v17 + 208);
  if (!*(v17 + 26))
  {
    v39 = *v25;
    sharedContainerIdentifier = [configurationCopy sharedContainerIdentifier];
    v41 = [NDFPProvider providerIDForBundle:v39 sharedContainerIdentifier:sharedContainerIdentifier];

    if (v41)
    {
      v42 = [NDApplication fileProviderWithIdentifer:v41 applicationIdentifier:*v25];
      v43 = *v38;
      *v38 = v42;

      v44 = qword_1000EB210;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        uuid2 = [v17 uuid];
        v46 = *(v17 + 34);
        v47 = *v25;
        *buf = 138544130;
        v147 = uuid2;
        v148 = 2114;
        v149 = v46;
        v150 = 2112;
        v151 = v41;
        v152 = 2114;
        v153 = v47;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Client %{public}@ is acting on behalf of file provider id: %@ and bundle id: %{public}@", buf, 0x2Au);
      }
    }
  }

  if (v139 && sub_1000093C4(v139))
  {
    v48 = qword_1000EB210;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      uuid3 = [v17 uuid];
      v50 = *(v17 + 34);
      *buf = 138543618;
      v147 = uuid3;
      v148 = 2114;
      v149 = v50;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Client %{public}@ is an independent extension", buf, 0x16u);
    }

    v51 = [NDApplication chronoKitExtensionWithIdentifier:*(v17 + 34)];
    v52 = *(v17 + 4);
    *(v17 + 4) = v51;
  }

  v53 = *(v17 + 4);
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v55 = *(v17 + 34);
    if (appCopy)
    {
      [NDApplication springboardApplicationWithBundleIdentifier:v55];
    }

    else
    {
      [NDApplication applicationWithIdentifier:v55];
    }
    v54 = ;
  }

  v56 = *(v17 + 4);
  *(v17 + 4) = v54;

  if (!*(v17 + 26))
  {
    if ([*v25 isEqualToString:*(v17 + 34)])
    {
      objc_storeStrong(v17 + 26, *(v17 + 4));
      v57 = qword_1000EB210;
      v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
      if (appCopy)
      {
        if (v58)
        {
          uuid4 = [v17 uuid];
          v60 = *v25;
          *buf = 138543618;
          v147 = uuid4;
          v148 = 2114;
          v149 = v60;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Client %{public}@ is a SpringBoard application", buf, 0x16u);
        }
      }

      else if (v58)
      {
        uuid5 = [v17 uuid];
        v65 = *v25;
        *buf = 138543618;
        v147 = uuid5;
        v148 = 2114;
        v149 = v65;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Client %{public}@ is a daemon or non-SpringBoard application", buf, 0x16u);
      }
    }

    else
    {
      v61 = [NDApplication springBoardApplicationExistsWithIdentifier:*v25];
      v62 = *v25;
      if (v61)
      {
        [NDApplication springboardApplicationWithBundleIdentifier:v62];
      }

      else
      {
        [NDApplication applicationWithIdentifier:v62];
      }
      v63 = ;
      v66 = *v38;
      *v38 = v63;

      v57 = qword_1000EB210;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        uuid6 = [v17 uuid];
        v68 = *(v17 + 34);
        v69 = *v25;
        *buf = 138544130;
        v147 = uuid6;
        v148 = 2114;
        v149 = v68;
        v150 = 2114;
        v151 = v69;
        v152 = 1024;
        LODWORD(v153) = v61;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Client %{public}@ is acting on behalf of application %{public}@, impersonatingSpringBoardApp: %d", buf, 0x26u);
      }
    }
  }

  identifier = [configurationCopy identifier];
  v71 = *(v17 + 33);
  *(v17 + 33) = identifier;

  sharedContainerIdentifier2 = [configurationCopy sharedContainerIdentifier];
  v73 = *(v17 + 38);
  *(v17 + 38) = sharedContainerIdentifier2;

  v74 = [NDFileUtilities sessionPath:*(v17 + 33) forBundleID:*(v17 + 34)];
  v75 = [NSURL fileURLWithPath:v74];
  v76 = *(v17 + 13);
  *(v17 + 13) = v75;

  _directoryForDownloadedFiles = [configurationCopy _directoryForDownloadedFiles];
  v78 = _directoryForDownloadedFiles;
  if (_directoryForDownloadedFiles)
  {
    setupDownloadDirectory = _directoryForDownloadedFiles;
  }

  else
  {
    setupDownloadDirectory = [v17 setupDownloadDirectory];
  }

  v80 = *(v17 + 14);
  *(v17 + 14) = setupDownloadDirectory;

  v81 = [*(v17 + 13) URLByAppendingPathComponent:@"Uploads"];
  v82 = *(v17 + 15);
  *(v17 + 15) = v81;

  if (*(v17 + 14))
  {
    objc_storeStrong(v17 + 24, queue);
    objc_storeStrong(v17 + 28, proxy);
    v83 = [[NDCredentialStorage alloc] initWithDelegate:v17 forBundleID:*(v17 + 34)];
    v84 = *(v17 + 3);
    *(v17 + 3) = v83;

    v85 = [v17 configurationWithClientConfiguration:configurationCopy discretionary:0];
    v136 = [v17 configurationWithClientConfiguration:configurationCopy discretionary:1];
    [v85 set_clientIsNSURLSessiond:1];
    [v136 set_clientIsNSURLSessiond:1];
    v17[134] = [configurationCopy isDiscretionary];
    if ([configurationCopy sessionSendsLaunchEvents])
    {
      _sessionSendsLaunchOnDemandEvents = 1;
    }

    else
    {
      _sessionSendsLaunchOnDemandEvents = [configurationCopy _sessionSendsLaunchOnDemandEvents];
    }

    v17[133] = _sessionSendsLaunchOnDemandEvents;
    v89 = +[Daemon sharedDaemon];
    isInSyncBubble = [v89 isInSyncBubble];

    if (isInSyncBubble)
    {
      v17[133] = 0;
    }

    v17[128] = [configurationCopy _performsEVCertCheck];
    [v17 updateOptions:optionsCopy];
    v91 = [NSURLSession _sessionWithConfiguration:v85 delegate:v17 delegateDispatchQueue:*(v17 + 24)];
    v92 = *(v17 + 1);
    *(v17 + 1) = v91;

    v93 = [NSURLSession _sessionWithConfiguration:v136 delegate:v17 delegateDispatchQueue:*(v17 + 24)];
    v94 = *(v17 + 2);
    *(v17 + 2) = v93;

    [*(v17 + 2) _useTLSSessionCacheFromSession:*(v17 + 1)];
    v95 = [[NDCallbackQueue alloc] initWithDelegate:v17];
    v96 = *(v17 + 25);
    *(v17 + 25) = v95;

    v97 = +[NSMutableDictionary dictionary];
    v98 = *(v17 + 6);
    *(v17 + 6) = v97;

    v99 = +[NSMutableDictionary dictionary];
    v100 = *(v17 + 7);
    *(v17 + 7) = v99;

    v101 = +[NSMutableDictionary dictionary];
    v102 = *(v17 + 27);
    *(v17 + 27) = v101;

    v103 = +[NSMutableDictionary dictionary];
    v104 = *(v17 + 8);
    *(v17 + 8) = v103;

    v105 = +[NSMutableDictionary dictionary];
    v106 = *(v17 + 9);
    *(v17 + 9) = v105;

    v107 = +[NSMutableArray array];
    v108 = *(v17 + 10);
    *(v17 + 10) = v107;

    v17[139] = proxyCopy != 0;
    v17[184] = [configurationCopy _allowsRetryForBackgroundDataTasks];
    if (v17[138])
    {
      _infersDiscretionaryFromOriginatingClient = 1;
    }

    else
    {
      _infersDiscretionaryFromOriginatingClient = [configurationCopy _infersDiscretionaryFromOriginatingClient];
    }

    v17[138] = _infersDiscretionaryFromOriginatingClient;
    *(v17 + 135) = 0;
    *(v17 + 38) = [configurationCopy _neTrackerTCCResult];
    *(v17 + 39) = -1;
    [NDFileUtilities createDirectoryAtURL:*(v17 + 13)];
    [NDFileUtilities createDirectoryAtURL:*(v17 + 15)];
    if (*(v17 + 28))
    {
      v110 = [configurationCopy copy];
      v111 = [optionsCopy mutableCopy];
      [v111 setObject:*v133 forKeyedSubscript:@"NDBackgroundSessionManagerKeySessionUUID"];
      [dbCopy _updateConfigurationForBundleID:dCopy sessionID:*(v17 + 33) with:v110];
      [dbCopy _updateOptionsForBundleID:dCopy sessionID:*(v17 + 33) with:v111];
    }

    if (*v38)
    {
      [*v38 addObserver:v17];
    }

    objc_storeStrong(v17 + 29, db);
    v112 = qword_1000EB210;
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      v134 = v85;
      uuid7 = [v17 uuid];
      v113 = *(v17 + 33);
      v114 = *(v17 + 34);
      v115 = *(v17 + 32);
      [configurationCopy timeoutIntervalForResource];
      v117 = v116;
      [configurationCopy timeoutIntervalForRequest];
      v119 = v118;
      allowsCellularAccess = [configurationCopy allowsCellularAccess];
      allowsExpensiveNetworkAccess = [configurationCopy allowsExpensiveNetworkAccess];
      allowsConstrainedNetworkAccess = [configurationCopy allowsConstrainedNetworkAccess];
      _sourceApplicationBundleIdentifier3 = [configurationCopy _sourceApplicationBundleIdentifier];
      v131 = allowsConstrainedNetworkAccess;
      v123 = allowsExpensiveNetworkAccess;
      v124 = allowsCellularAccess;
      _sourceApplicationSecondaryIdentifier2 = [configurationCopy _sourceApplicationSecondaryIdentifier];
      v126 = v17[240];
      allowsUltraConstrainedNetworkAccess = [configurationCopy allowsUltraConstrainedNetworkAccess];
      *buf = 138546434;
      v147 = uuid7;
      v148 = 2114;
      v149 = v115;
      v150 = 2114;
      v151 = v114;
      v152 = 2112;
      v153 = v113;
      v154 = 2048;
      v155 = v117;
      v156 = 2048;
      v157 = v119;
      v158 = 1024;
      v159 = v124;
      v160 = 1024;
      v161 = v123;
      v162 = 1024;
      v163 = v131;
      v164 = 2114;
      v165 = _sourceApplicationBundleIdentifier3;
      v166 = 2114;
      v167 = _sourceApplicationSecondaryIdentifier2;
      v168 = 1024;
      v169 = v126;
      v170 = 1024;
      v171 = allowsUltraConstrainedNetworkAccess;
      _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Session <%{public}@> is for <%{public}@>.<%@> using resource timeout: %f, request timeout: %f allowsCellularAccess: %d, allowsExpensiveAccess: %d, allowsConstrainedAccess: %d, _sourceApplicationBundleIdentifier: %{public}@, _sourceApplicationSecondaryIdentifier: %{public}@, hasSqliteSupport: %u, allowsUltraConstrainedAccess: %d", buf, 0x70u);

      v85 = v134;
    }

    goto LABEL_67;
  }

  v87 = qword_1000EB210;
  if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
  {
    uuid8 = [v17 uuid];
    v130 = *(v17 + 34);
    *buf = 138543618;
    v147 = uuid8;
    v148 = 2114;
    v149 = v130;
    _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Couldn't find out download directory for %{public}@. Not creating session", buf, 0x16u);
  }

  v88 = 0;
LABEL_68:

  return v88;
}

- (id)configurationWithClientConfiguration:(id)configuration discretionary:(BOOL)discretionary
{
  discretionaryCopy = discretionary;
  configurationCopy = configuration;
  v7 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [configurationCopy timeoutIntervalForRequest];
  [v7 setTimeoutIntervalForRequest:?];
  [configurationCopy timeoutIntervalForResource];
  if (v8 == 0.0)
  {
    [v7 timeoutIntervalForResource];
  }

  [v7 setTimeoutIntervalForResource:?];
  connectionProxyDictionary = [configurationCopy connectionProxyDictionary];
  [v7 setConnectionProxyDictionary:connectionProxyDictionary];

  [v7 setTLSMinimumSupportedProtocol:{objc_msgSend(configurationCopy, "TLSMinimumSupportedProtocol")}];
  [v7 setTLSMaximumSupportedProtocol:{objc_msgSend(configurationCopy, "TLSMaximumSupportedProtocol")}];
  hTTPAdditionalHeaders = [configurationCopy HTTPAdditionalHeaders];
  [v7 setHTTPAdditionalHeaders:hTTPAdditionalHeaders];

  [v7 setHTTPMaximumConnectionsPerHost:{objc_msgSend(configurationCopy, "HTTPMaximumConnectionsPerHost")}];
  [v7 setNetworkServiceType:{objc_msgSend(configurationCopy, "networkServiceType")}];
  _authenticatorStatusCodes = [configurationCopy _authenticatorStatusCodes];
  [v7 set_authenticatorStatusCodes:_authenticatorStatusCodes];

  _atsContext = [configurationCopy _atsContext];
  [v7 set_atsContext:_atsContext];

  [v7 set_allowsTLSFalseStart:{objc_msgSend(configurationCopy, "_allowsTLSFalseStart")}];
  [v7 set_allowsTLSFallback:{objc_msgSend(configurationCopy, "_allowsTLSFallback")}];
  _tlsTrustPinningPolicyName = [configurationCopy _tlsTrustPinningPolicyName];
  [v7 set_tlsTrustPinningPolicyName:_tlsTrustPinningPolicyName];

  [v7 set_allowsTLSECH:{objc_msgSend(configurationCopy, "_allowsTLSECH")}];
  [v7 set_forceEnablePQTLS:{objc_msgSend(configurationCopy, "_forceEnablePQTLS")}];
  [v7 set_reportsDataStalls:{objc_msgSend(configurationCopy, "_reportsDataStalls")}];
  [v7 set_TCPAdaptiveReadTimeout:{objc_msgSend(configurationCopy, "_TCPAdaptiveReadTimeout")}];
  [v7 set_TCPAdaptiveWriteTimeout:{objc_msgSend(configurationCopy, "_TCPAdaptiveWriteTimeout")}];
  [v7 set_onBehalfOfPairedDevice:{objc_msgSend(configurationCopy, "_onBehalfOfPairedDevice")}];
  [v7 set_requiresSustainedDataDelivery:{objc_msgSend(configurationCopy, "_requiresSustainedDataDelivery")}];
  [v7 set_IDSMessageTimeout:{objc_msgSend(configurationCopy, "_IDSMessageTimeout")}];
  [v7 set_alwaysPerformDefaultTrustEvaluation:{objc_msgSend(configurationCopy, "_alwaysPerformDefaultTrustEvaluation")}];
  [v7 set_prefersInfraWiFi:{objc_msgSend(configurationCopy, "_prefersInfraWiFi")}];
  if ([(NDApplication *)self->_clientApplication canBeSuspended]&& (_os_feature_enabled_impl() & 1) == 0)
  {
    [v7 setNetworkServiceType:3];
  }

  _maximumWatchCellularTransferSize = [configurationCopy _maximumWatchCellularTransferSize];
  [v7 set_maximumWatchCellularTransferSize:_maximumWatchCellularTransferSize];

  [v7 setHTTPCookieStorage:0];
  [v7 setURLCache:0];
  [v7 setURLCredentialStorage:self->_credentialStorage];
  [v7 setAllowsCellularAccess:{objc_msgSend(configurationCopy, "allowsCellularAccess")}];
  [v7 setWaitsForConnectivity:0];
  [v7 setAllowsExpensiveNetworkAccess:{objc_msgSend(configurationCopy, "allowsExpensiveNetworkAccess")}];
  [v7 setAllowsConstrainedNetworkAccess:{objc_msgSend(configurationCopy, "allowsConstrainedNetworkAccess")}];
  [v7 set_allowsUltraConstrainedInternal:{objc_msgSend(configurationCopy, "_allowsUltraConstrainedInternal")}];
  [v7 set_allowsVirtualInterfaces:{objc_msgSend(configurationCopy, "_allowsVirtualInterfaces")}];
  [v7 set_multipathAlternatePort:{objc_msgSend(configurationCopy, "_multipathAlternatePort")}];
  [v7 set_allowsPowerNapScheduling:{objc_msgSend(configurationCopy, "_allowsPowerNapScheduling")}];
  [v7 set_allowsHSTSWithUntrustedRootCertificate:{objc_msgSend(configurationCopy, "_allowsHSTSWithUntrustedRootCertificate")}];
  _connectionPoolName = [configurationCopy _connectionPoolName];
  v16 = _connectionPoolName;
  if (_connectionPoolName)
  {
    v17 = _connectionPoolName;
  }

  else
  {
    v17 = @"NSURLSessionBackgroundPoolName";
  }

  [v7 set_tcpConnectionPoolName:v17];

  v18 = +[Daemon sharedDaemon];
  if ([v18 isInSyncBubble])
  {
    _connectionPoolName2 = [configurationCopy _connectionPoolName];

    if (_connectionPoolName2)
    {
      goto LABEL_13;
    }

    v18 = [NSString stringWithFormat:@"NSURLSessionBackgroundPoolName-sync-%d", geteuid()];
    [v7 set_tcpConnectionPoolName:v18];
  }

LABEL_13:
  [v7 set_connectionCachePurgeTimeout:1.0];
  [v7 set_longLivedConnectionCachePurgeTimeout:1.0];
  [v7 set_preventsIdleSleepOnceConnected:1];
  [v7 set_timingDataOptions:{objc_msgSend(configurationCopy, "_timingDataOptions")}];
  [v7 set_shouldSkipPreferredClientCertificateLookup:{objc_msgSend(configurationCopy, "_shouldSkipPreferredClientCertificateLookup")}];
  [v7 set_requiresPowerPluggedIn:{objc_msgSend(configurationCopy, "_requiresPowerPluggedIn")}];
  [v7 set_sourceApplicationBundleIdentifier:self->_monitoredAppBundleID];
  [v7 set_sourceApplicationSecondaryIdentifier:self->_secondaryID];
  [v7 set_watchExtensionBundleIdentifier:self->_watchExtensionBundleIdentifier];
  _sourceApplicationAuditTokenData = [configurationCopy _sourceApplicationAuditTokenData];
  [v7 set_sourceApplicationAuditTokenData:_sourceApplicationAuditTokenData];

  _directoryForDownloadedFiles = [configurationCopy _directoryForDownloadedFiles];
  [v7 set_directoryForDownloadedFiles:_directoryForDownloadedFiles];

  _downloadFileProtectionType = [configurationCopy _downloadFileProtectionType];
  [v7 set_downloadFileProtectionType:_downloadFileProtectionType];

  v23 = +[Daemon sharedDaemon];
  isPrivileged = [v23 isPrivileged];

  if (isPrivileged)
  {
    [v7 set_requiresClientToOpenFiles:1];
  }

  [v7 set_duetPreauthorized:{objc_msgSend(configurationCopy, "_duetPreauthorized")}];
  [v7 set_loggingPrivacyLevel:{objc_msgSend(configurationCopy, "_loggingPrivacyLevel")}];
  [v7 set_duetPreClearedMode:{objc_msgSend(configurationCopy, "_duetPreClearedMode")}];
  [v7 set_pidForHAR:{objc_msgSend(configurationCopy, "_pidForHAR")}];
  v25 = +[NSMutableDictionary dictionary];
  if ([configurationCopy _duetPreauthorized])
  {
    v26 = 0;
  }

  else
  {
    v26 = +[NSMutableDictionary dictionary];
  }

  [v25 setObject:kCFBooleanTrue forKeyedSubscript:_kCFStreamPropertyLargeDownload];
  [v25 setObject:kCFBooleanTrue forKeyedSubscript:kCFStreamPropertyIndefiniteConnection];
  [v25 setObject:&off_1000D88F0 forKeyedSubscript:_kCFStreamPropertyWatchdogTimeout];
  [v25 setObject:&off_1000D8908 forKeyedSubscript:_kCFStreamPropertyIndefiniteConnectionKickInterval];
  if (discretionaryCopy)
  {
    if (v26)
    {
      [v7 timeoutIntervalForResource];
      [(NDBackgroundSession *)self defaultWindowDurationForResourceTimeout:?];
      v28 = [NSNumber numberWithInteger:v27];
      [v26 setObject:v28 forKeyedSubscript:kConditionalConnectionRequirementTimeWindowDuration];

      [v26 setObject:&off_1000D8920 forKeyedSubscript:kConditionalConnectionRequirementTimeWindowDelay];
      [v26 setObject:&__kCFBooleanTrue forKeyedSubscript:kConditionalConnectionIsDiscretionary];
      [v25 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFStreamPropertyDUETConditional];
      if ([configurationCopy isDiscretionary] && (objc_msgSend(configurationCopy, "_clientIsNotExplicitlyDiscretionary") & 1) == 0)
      {
        [v26 setObject:&__kCFBooleanTrue forKeyedSubscript:kConditionalConnectionClientOptInDiscretionary];
      }

      else
      {
        [v7 set_clientIsNotExplicitlyDiscretionary:1];
      }

      if ([configurationCopy _xpcActivityBudgeted])
      {
        [v26 setObject:&off_1000D8938 forKeyedSubscript:kConditionalConnectionRequirementDuetPreClearedMode];
      }

      else
      {
        v31 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 _duetPreClearedMode]);
        [v26 setObject:v31 forKeyedSubscript:kConditionalConnectionRequirementDuetPreClearedMode];
      }
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      [v7 set_forcedNetworkServiceType:5];
    }

    [v7 setDiscretionary:1];
  }

  else if (v26)
  {
    [v26 setObject:&off_1000D8950 forKeyedSubscript:kConditionalConnectionRequirementTimeWindowDuration];
    [v26 setObject:&off_1000D8920 forKeyedSubscript:kConditionalConnectionRequirementTimeWindowDelay];
    [v26 setObject:&__kCFBooleanFalse forKeyedSubscript:kConditionalConnectionIsDiscretionary];
    if ([configurationCopy _xpcActivityBudgeted])
    {
      if ([configurationCopy _xpcActivityBudgeted] == 1)
      {
        v29 = &off_1000D8938;
      }

      else
      {
        v29 = &off_1000D8968;
      }

      [v26 setObject:v29 forKeyedSubscript:kConditionalConnectionRequirementDuetPreClearedMode];
    }

    else
    {
      v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 _duetPreClearedMode]);
      [v26 setObject:v30 forKeyedSubscript:kConditionalConnectionRequirementDuetPreClearedMode];
    }
  }

  v32 = +[Daemon sharedDaemon];
  if (![v32 isInSyncBubble])
  {

    if (!v26)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v33 = _os_feature_enabled_impl();

  if ((v33 & 1) == 0)
  {
    [v7 set_forcedNetworkServiceType:5];
  }

  if (v26)
  {
LABEL_43:
    [v25 setObject:v26 forKeyedSubscript:kCFStreamPropertyConditionalConnectionProperties];
  }

LABEL_44:
  [v7 set_socketStreamProperties:v25];
  [v7 setSkip_download_unlink:1];

  return v7;
}

- (void)updateOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy objectForKeyedSubscript:@"NSURLSessionDelegateImplementsWillSendRequestForEstablishedConnectionKey"];
  self->_clientImplementsWillSendRequest = [v4 BOOLValue];

  v5 = [optionsCopy objectForKeyedSubscript:@"NSURLSessionDelegateImplementsWillBeginDelayedRequestKey"];
  self->_clientImplementsWillBeginDelayedRequest = [v5 BOOLValue];

  v6 = [optionsCopy objectForKeyedSubscript:@"NSURLSessionDelegateImplementsSessionAuthChallengeKey"];
  self->_clientImplementsSessionChallenge = [v6 BOOLValue];

  v7 = [optionsCopy objectForKeyedSubscript:@"NSURLSessionDelegateImplementsTaskAuthChallengeKey"];
  self->_clientImplementsTaskChallenge = [v7 BOOLValue];
}

@end