@interface NDBackgroundSession
- (BOOL)clientIsActive;
- (BOOL)currentDiscretionaryStatus:(id)a3 withOptionalTaskInfo:(id)a4;
- (BOOL)errorIfBlockedTracker:(id)a3 url:(id)a4;
- (BOOL)finalizeTaskCompletionWithSuppressedWake:(BOOL)a3;
- (BOOL)hasConnectedClient;
- (BOOL)retryTask:(id)a3 originalError:(id)a4 transactionMetrics:(id)a5;
- (BOOL)sessionHasOutstandingTasks;
- (BOOL)trustPassesExtendedValidation:(__SecTrust *)a3;
- (NDBackgroundSession)initWithConfiguration:(id)a3 bundleID:(id)a4 isSpringBoardApp:(BOOL)a5 downloadDirectory:(id)a6 options:(id)a7 clientProxy:(id)a8 delegate:(id)a9 workQueue:(id)a10 db:(id)a11;
- (NDBackgroundSessionDelegate)delegate;
- (id)_URLSession:(id)a3 downloadTaskNeedsDownloadDirectory:(id)a4;
- (id)adjustDiscretionaryStatusForTaskInfo:(id)a3;
- (id)clientErrorForError:(id)a3;
- (id)configurationWithClientConfiguration:(id)a3 discretionary:(BOOL)a4;
- (id)createNewTaskFromInfo:(id)a3;
- (id)descriptionForRequest:(id)a3;
- (id)descriptionForTaskWithIdentifier:(unint64_t)a3;
- (id)getTLSSessionCachePrefix;
- (id)getTasksForReconnection;
- (id)inputStreamWithFileHandle:(id)a3 taskIdentifier:(unint64_t)a4;
- (id)makeTempUploadFile:(id)a3 withExtensionData:(id)a4;
- (id)requestWithAdjustedWindowForTaskInfo:(id)a3;
- (id)restoreCompletedTask:(id)a3;
- (id)restoreInProgressTask:(id)a3;
- (id)restoreTask:(id)a3 isOutstanding:(BOOL *)a4;
- (id)restoreTasks:(BOOL *)a3;
- (id)restoreTasksFromArchivedInfo:(id)a3;
- (id)restoreTasksFromSqliteDB:(id)a3;
- (id)sanitizeTaskProperties:(id)a3;
- (id)sessionForDiscretionaryStatus:(BOOL)a3;
- (id)setupDownloadDirectory;
- (id)tasksArchivePath;
- (int64_t)priorityForDiscretionaryStatus:(BOOL)a3;
- (void)URLSession:(id)a3 dataTask:(id)a4 _didReceiveData:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 dataTask:(id)a4 didBecomeDownloadTask:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didResumeAtOffset:(int64_t)a5 expectedTotalBytes:(int64_t)a6;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 _conditionalRequirementsChanged:(BOOL)a5;
- (void)URLSession:(id)a3 task:(id)a4 _isWaitingForConnectionWithReason:(int64_t)a5;
- (void)URLSession:(id)a3 task:(id)a4 _willSendRequestForEstablishedConnection:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveInformationalResponse:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)_URLSession:(id)a3 downloadTask:(id)a4 didReceiveResponse:(id)a5;
- (void)_URLSession:(id)a3 task:(id)a4 getAuthHeadersForResponse:(id)a5 completionHandler:(id)a6;
- (void)addOutstandingTaskWithIdentifier:(unint64_t)a3;
- (void)allowReconnect;
- (void)applicationWasSuspended:(id)a3 pid:(int)a4;
- (void)applyOverrides:(id)a3 forTaskWithIdentifier:(unint64_t)a4;
- (void)archiveTimerFired;
- (void)backgroundUpdatesEnabledForApplication:(id)a3;
- (void)cancelMonitorForTask:(unint64_t)a3;
- (void)cancelTaskWithIdentifier:(unint64_t)a3;
- (void)cancelTaskWithIdentifier:(unint64_t)a3 byProducingResumeData:(id)a4;
- (void)cancelTasksRequiringClientConnectionAndResumeUnstartedTasks;
- (void)cleanupSessionWithCompletionHandler:(id)a3;
- (void)clientAcknowledgedTerminalCallbackForTask:(unint64_t)a3;
- (void)clientApplicationWasReinstalled;
- (void)clientDidDisconnect;
- (void)configureAdditionalPropertiesOnTask:(id)a3 taskInfo:(id)a4;
- (void)configureTask:(id)a3 withTaskInfo:(id)a4;
- (void)dataTaskWithRequest:(id)a3 originalRequest:(id)a4 identifier:(unint64_t)a5 uniqueIdentifier:(id)a6 reply:(id)a7;
- (void)downloadTaskWithRequest:(id)a3 originalRequest:(id)a4 downloadFilePath:(id)a5 identifier:(unint64_t)a6 uniqueIdentifier:(id)a7 reply:(id)a8;
- (void)downloadTaskWithResumeData:(id)a3 identifier:(unint64_t)a4 uniqueIdentifier:(id)a5 reply:(id)a6;
- (void)enqueueTaskWithIdentifier:(unint64_t)a3;
- (void)ensureSessionDownloadDirectoryExists;
- (void)errorOccurredDuringAuthCallbackDelivery:(id)a3 completionHandler:(id)a4;
- (void)errorOccurredDuringFinishedCallbackDelivery:(id)a3;
- (void)fillInByteCountsForTaskInfo:(id)a3 withTaskID:(id)a4;
- (void)handleEarliestBeginDateForTaskWithIdentifier:(unint64_t)a3 completionHandler:(id)a4;
- (void)handleWillBeginDelayedRequestForTaskWithIdentifier:(unint64_t)a3 completionHandler:(id)a4;
- (void)invalidateWithReply:(id)a3;
- (void)obliterate;
- (void)queueUpdatesForTask:(id)a3 updateType:(unint64_t)a4 highPriority:(BOOL)a5;
- (void)reconnectClient:(id)a3 withCompletion:(id)a4;
- (void)removeDownloadFileForTaskInfo:(id)a3;
- (void)removeOutstandingTaskWithIdentifier:(unint64_t)a3;
- (void)removeUploadFileForTaskInfo:(id)a3;
- (void)requeueTask:(unint64_t)a3 skipResume:(BOOL)a4;
- (void)resetStorageWithReply:(id)a3;
- (void)resumeTaskWithIdentifier:(unint64_t)a3 withProperties:(id)a4;
- (void)setBytesPerSecondLimit:(int64_t)a3 forTaskWithIdentifier:(unint64_t)a4;
- (void)setDescription:(id)a3 forTask:(unint64_t)a4;
- (void)setDiscretionaryOverride:(int64_t)a3 forTaskWithIdentifier:(unint64_t)a4;
- (void)setExpectedProgressTarget:(unint64_t)a3 forTaskWithIdentifier:(unint64_t)a4;
- (void)setLoadingPoolPriority:(double)a3 forTaskWithIdentifier:(unint64_t)a4;
- (void)setPriority:(int64_t)a3 forTaskWithIdentifier:(unint64_t)a4;
- (void)setPropertyOnStreamWithIdentifier:(unint64_t)a3 propDict:(id)a4 propKey:(id)a5 withReply:(id)a6;
- (void)setTLSSessionCachePrefix:(id)a3;
- (void)setXPCConnection:(id)a3;
- (void)setupDASPropertiesOnTask:(id)a3 taskInfo:(id)a4 discretionaryStatus:(BOOL)a5;
- (void)statusMonitor:(id)a3 callbackForIdentifier:(unint64_t)a4 networkChanged:(BOOL)a5;
- (void)storeTaskInfoUpdates:(BOOL)a3;
- (void)suspendTaskWithIdentifier:(unint64_t)a3;
- (void)taskMonitor:(id)a3 retryTask:(unint64_t)a4 reason:(int)a5;
- (void)taskMonitor:(id)a3 terminateTask:(unint64_t)a4 reason:(int)a5;
- (void)taskMonitor:(id)a3 updateTaskPriority:(unint64_t)a4 reason:(int)a5;
- (void)taskShouldResume:(unint64_t)a3;
- (void)taskShouldSuspend:(unint64_t)a3;
- (void)triggerPowerlogPeriodicUpdate;
- (void)updateOptions:(id)a3;
- (void)updateTaskInfoBasedOnCurrentDiscretionaryStatus:(id)a3;
- (void)uploadTaskWithRequest:(id)a3 originalRequest:(id)a4 fromFile:(id)a5 sandboxExtensionData:(id)a6 identifier:(unint64_t)a7 uniqueIdentifier:(id)a8 potentialCredentials:(id)a9 reply:(id)a10;
- (void)uploadTaskWithResumableUploadState:(id)a3 request:(id)a4 originalRequest:(id)a5 fromFile:(id)a6 sandboxExtensionData:(id)a7 identifier:(unint64_t)a8 uniqueIdentifier:(id)a9 potentialCredentials:(id)a10 reply:(id)a11;
- (void)wakeUpClient:(int64_t)a3;
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
    v5 = [v3 groupContainerURLs];
    v6 = [v5 objectForKeyedSubscript:self->_sharedContainerIdentifier];
  }

  else
  {
    v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:self->_clientBundleID allowPlaceholder:0 error:0];
    v7 = [v5 groupContainerURLs];
    v6 = [v7 objectForKeyedSubscript:self->_sharedContainerIdentifier];
  }

  if (!v6)
  {
LABEL_6:
    v6 = [(NDApplication *)self->_clientApplication containerURL];
  }

  v8 = [NDFileUtilities noFollowRealURL:v6];

  if (!v8 || ([v8 URLByAppendingPathComponent:@"Library/Caches/com.apple.nsurlsessiond/Downloads" isDirectory:1], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "URLByAppendingPathComponent:isDirectory:", self->_clientBundleID, 1), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v10 = [NDFileUtilities defaultDownloadDirectoryForBundleID:self->_clientBundleID];
  }

  v11 = +[NSFileManager defaultManager];
  v12 = [v10 path];
  v13 = [v11 fileExistsAtPath:v12];

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
    v5 = [(NDBackgroundSession *)self uuid];
    v6 = v5;
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
    v14 = v5;
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
    v5 = [(NDBackgroundSession *)self uuid];
    identifier = self->_identifier;
    *buf = 138543874;
    v10 = v5;
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
    v4 = [(NDBackgroundSession *)self uuid];
    v5 = [(NSMutableArray *)self->_outstandingTaskIDs count];
    v7 = 138543618;
    v8 = v4;
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
    v5 = [(NDBackgroundSession *)self uuid];
    v6 = v5;
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
    v14 = v5;
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
    v4 = [(NSURL *)self->_downloadDirectory path];
    v5 = [v3 fileExistsAtPath:v4];

    if ((v5 & 1) == 0)
    {
      v6 = qword_1000EB210;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(NDBackgroundSession *)self uuid];
        identifier = self->_identifier;
        clientBundleID = self->_clientBundleID;
        v10 = [(NSURL *)self->_downloadDirectory path];
        v11 = 138544130;
        v12 = v7;
        v13 = 2114;
        v14 = clientBundleID;
        v15 = 2112;
        v16 = identifier;
        v17 = 2112;
        v18 = v10;
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

- (void)_URLSession:(id)a3 task:(id)a4 getAuthHeadersForResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v9];
  v13 = [v12 unsignedIntegerValue];

  v14 = qword_1000EB210;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v40 = v11;
    v15 = [(NDBackgroundSession *)self uuid];
    v16 = v10;
    v17 = v9;
    v18 = [v9 _loggableDescription];
    clientBundleID = self->_clientBundleID;
    sendsLaunchEvents = self->_sendsLaunchEvents;
    v21 = [(NDApplication *)self->_clientApplication supportsWakes];
    v22 = "N";
    *buf = 138544386;
    v48 = v15;
    v49 = 2114;
    if (sendsLaunchEvents)
    {
      v23 = "Y";
    }

    else
    {
      v23 = "N";
    }

    v50 = v18;
    if (v21)
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

    v10 = v16;
    v11 = v40;
    v9 = v17;
  }

  clientProxy = self->_clientProxy;
  if (clientProxy)
  {
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_1000250DC;
    v44[3] = &unk_1000D6240;
    v44[4] = self;
    v25 = v9;
    v45 = v25;
    v26 = v11;
    v46 = v26;
    v27 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v44];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100025240;
    v41[3] = &unk_1000D54B0;
    v41[4] = self;
    v42 = v25;
    v43 = v26;
    [v27 backgroundTask:v13 getAuthHeadersForResponse:v10 reply:v41];
  }

  else if (self->_sendsLaunchEvents && [(NDApplication *)self->_clientApplication supportsWakes])
  {
    v28 = qword_1000EB210;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [(NDBackgroundSession *)self uuid];
      v30 = [v9 _loggableDescription];
      v31 = self->_clientBundleID;
      *buf = 138543874;
      v48 = v29;
      v49 = 2114;
      v50 = v30;
      v51 = 2114;
      v52 = v31;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ waking %{public}@ for auth headers", buf, 0x20u);
    }

    v32 = [PendingCallback alloc];
    v33 = objc_retainBlock(v11);
    v34 = [v33 copy];
    v35 = [NSArray arrayWithObjects:v34, v10, 0];
    v36 = [(PendingCallback *)v32 initWithCallbackType:10 taskIdentifier:v13 args:v35];

    [v9 _releasePreventIdleSleepAssertionIfAppropriate];
    [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v36 wakeRequirement:2];
  }

  else
  {
    v37 = qword_1000EB210;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [(NDBackgroundSession *)self uuid];
      v39 = [v9 _loggableDescription];
      *buf = 138543618;
      v48 = v38;
      v49 = 2114;
      v50 = v39;
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ getAuthHeadersForResponse does not have a remote object and does not support app wakes, canceling.", buf, 0x16u);
    }

    (*(v11 + 2))(v11, 0, 0, 0);
  }
}

- (id)_URLSession:(id)a3 downloadTaskNeedsDownloadDirectory:(id)a4
{
  v5 = [Daemon sharedDaemon:a3];
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

- (void)_URLSession:(id)a3 downloadTask:(id)a4 didReceiveResponse:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v7];
  v10 = [v9 unsignedIntegerValue];

  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NDBackgroundSession *)self uuid];
    v13 = [v7 _loggableDescription];
    clientBundleID = self->_clientBundleID;
    v22 = 138544130;
    v23 = v12;
    v24 = 2114;
    v25 = v13;
    v26 = 2114;
    v27 = clientBundleID;
    v28 = 1024;
    v29 = [v8 statusCode];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ download for client %{public}@ received response, status code: %d", &v22, 0x26u);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v16 = [NSNumber numberWithUnsignedInteger:v10];
  v17 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v16];

  [v17 setResponse:v8];
  v18 = [NSNumber numberWithUnsignedInteger:v10];
  [(NDBackgroundSession *)self queueUpdatesForTask:v18 updateType:1 highPriority:1];

  clientProxy = self->_clientProxy;
  v20 = [v7 _metrics];
  v21 = [v20 _daemon_currentTransactionMetrics];
  [(NSXPCProxyCreating *)clientProxy backgroundTask:v10 didReceiveResponse:v8 transactionMetrics:v21];
}

- (void)URLSession:(id)a3 task:(id)a4 _conditionalRequirementsChanged:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = qword_1000EB210;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(NDBackgroundSession *)self uuid];
    v12 = [v9 _loggableDescription];
    clientBundleID = self->_clientBundleID;
    v15 = 138544130;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    v19 = 2114;
    v20 = clientBundleID;
    v21 = 1024;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for client %{public}@ conditions changed - satisfied: %d", &v15, 0x26u);
  }

  if (!v5)
  {
    v14 = [v9 error:@"_nsurlsessiondErrorDomain" code:5];
    [v9 cancel_with_error:v14];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 _isWaitingForConnectionWithReason:(int64_t)a5
{
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v7];
  v9 = [v8 unsignedIntegerValue];

  v10 = qword_1000EB210;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(NDBackgroundSession *)self uuid];
    v12 = [v7 _loggableDescription];
    clientBundleID = self->_clientBundleID;
    v15 = 138544130;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    v19 = 2114;
    v20 = clientBundleID;
    v21 = 2048;
    v22 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for client %{public}@ is waiting for connection - reason: %lld", &v15, 0x2Au);
  }

  v14 = [NSURLError errorWithDomain:NSTCPConnectionConditionsUnmetReasonErrorDomain code:a5 userInfo:0];
  [(NSXPCProxyCreating *)self->_clientProxy backgroundTask:v9 hasConnectionWaitingWithError:v14];
}

- (void)URLSession:(id)a3 task:(id)a4 _willSendRequestForEstablishedConnection:(id)a5 completionHandler:(id)a6
{
  v42 = a4;
  v40 = a5;
  v41 = a6;
  v9 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v42];
  v10 = [v9 unsignedIntegerValue];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v12 = [NSNumber numberWithUnsignedInteger:v10];
  v13 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v12];

  v14 = qword_1000EB210;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(NDBackgroundSession *)self uuid];
    v16 = [v42 _loggableDescription];
    clientBundleID = self->_clientBundleID;
    *buf = 138543874;
    v51 = v15;
    v52 = 2114;
    v53 = v16;
    v54 = 2114;
    v55 = clientBundleID;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for client %{public}@ _willSendRequestForEstablishedConnection", buf, 0x20u);
  }

  sub_10006E370(1, self->_clientBundleID, self->_identifier, self->_monitoredAppBundleID, self->_secondaryID, v42, v13, 0);
  if (![v13 taskKind])
  {
    [(NDBackgroundSession *)self ensureSessionDownloadDirectoryExists];
  }

  if (!self->_clientImplementsWillSendRequest && (![v13 taskKind] || objc_msgSend(v13, "taskKind") == 1 && (objc_msgSend(v13, "shouldCancelOnDisconnect") & 1) == 0))
  {
    v30 = qword_1000EB210;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [(NDBackgroundSession *)self uuid];
      *buf = 138543362;
      v51 = v35;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Client does not implement _willSendRequestForEstablishedConnection, so using proposed request", buf, 0xCu);
    }

    goto LABEL_29;
  }

  if (!self->_clientProxy && (!self->_sendsLaunchEvents || ![(NDApplication *)self->_clientApplication supportsWakes]))
  {
    v28 = [v13 shouldCancelOnDisconnect];
    v29 = qword_1000EB210;
    v30 = v29;
    if (v28)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v38 = [(NDBackgroundSession *)self uuid];
        v39 = [v42 _loggableDescription];
        *buf = 138543618;
        v51 = v38;
        v52 = 2114;
        v53 = v39;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ established a connection which requires the client to be running, but it isn't running and doesn't support app wakes. Canceling the task.", buf, 0x16u);
      }

      v31 = qword_1000EB210;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [(NDBackgroundSession *)self uuid];
        v33 = self->_clientBundleID;
        *buf = 138543618;
        v51 = v32;
        v52 = 2114;
        v53 = v33;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Perhaps the client %{public}@ was uninstalled?", buf, 0x16u);
      }

      v34 = [v42 error:NSURLErrorDomain code:-997];
      [v42 cancel_with_error:v34];
      v41[2](v41, 0);
      goto LABEL_26;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [(NDBackgroundSession *)self uuid];
      v37 = [v42 _loggableDescription];
      *buf = 138543618;
      v51 = v36;
      v52 = 2114;
      v53 = v37;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ using proposed request since the client application is not running and doesn't support wakes", buf, 0x16u);
    }

LABEL_29:

    (v41)[2](v41, v40);
    goto LABEL_30;
  }

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100026534;
  v43[3] = &unk_1000D5488;
  v44 = v13;
  v45 = self;
  v49 = v10;
  v18 = v40;
  v46 = v18;
  v19 = v42;
  v47 = v19;
  v48 = v41;
  v20 = objc_retainBlock(v43);
  v21 = [PendingCallback alloc];
  v22 = objc_retainBlock(v20);
  v23 = [v22 copy];
  v24 = [NSArray arrayWithObjects:v18, v23, 0];
  v25 = [(PendingCallback *)v21 initWithCallbackType:5 taskIdentifier:v10 args:v24];

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

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  v19 = a4;
  v11 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:?];
  v12 = [v11 unsignedIntegerValue];

  identifiersToMonitors = self->_identifiersToMonitors;
  v14 = [NSNumber numberWithUnsignedInteger:v12];
  v15 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v14];

  if (v15)
  {
    [v15 taskTransferredData:0 countOfBytesReceived:a5 cellular:{objc_msgSend(v19, "_connectionIsCellular")}];
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v17 = [NSNumber numberWithUnsignedInteger:v12];
  v18 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v17];

  if (![v18 taskKind])
  {
    [(NSXPCProxyCreating *)self->_clientProxy backgroundDownloadTask:v12 didWriteData:a5 totalBytesWritten:a6 totalBytesExpectedToWrite:a7];
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didResumeAtOffset:(int64_t)a5 expectedTotalBytes:(int64_t)a6
{
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v9];
  v11 = [v10 unsignedIntegerValue];

  v12 = qword_1000EB210;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(NDBackgroundSession *)self uuid];
    v14 = [v9 _loggableDescription];
    v19 = 138544130;
    v20 = v13;
    v21 = 2114;
    v22 = v14;
    v23 = 2048;
    v24 = a5;
    v25 = 2048;
    v26 = a6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ didResumeAtOffset: %lld expectedTotalBytes: %lld", &v19, 0x2Au);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v16 = [NSNumber numberWithUnsignedInteger:v11];
  v17 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v16];

  if ([v17 expectingResumeCallback])
  {
    [(NSXPCProxyCreating *)self->_clientProxy backgroundDownloadTask:v11 didResumeAtOffset:a5 expectedTotalBytes:a6];
    [v17 setExpectingResumeCallback:0];
    v18 = [NSNumber numberWithUnsignedInteger:v11];
    [(NDBackgroundSession *)self queueUpdatesForTask:v18 updateType:14 highPriority:0];
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v7];
  v10 = [v9 unsignedIntegerValue];

  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NDBackgroundSession *)self uuid];
    v13 = [v7 _loggableDescription];
    *buf = 138543874;
    v24 = v12;
    v25 = 2114;
    v26 = v13;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ finished downloading to %@", buf, 0x20u);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v15 = [NSNumber numberWithUnsignedInteger:v10];
  v16 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v15];

  if ([v7 _hasSZExtractor])
  {
    [NDFileUtilities updateStreamingZipModificationDate:v8];
    [v16 set_updatedStreamingZipModificationDate:1];
  }

  v17 = [PendingCallback alloc];
  v18 = [v7 response];
  v19 = v18;
  if (!v18)
  {
    v19 = +[NSNull null];
  }

  v22[1] = v19;
  v20 = [NSArray arrayWithObjects:v22 count:2];
  v21 = [(PendingCallback *)v17 initWithCallbackType:1 taskIdentifier:v10 args:v20];

  if (!v18)
  {
  }

  [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v21 wakeRequirement:0];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didBecomeDownloadTask:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v7];
  v10 = [v9 unsignedIntegerValue];

  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NDBackgroundSession *)self uuid];
    v13 = [v7 _loggableDescription];
    v24 = 138543618;
    v25 = v12;
    v26 = 2114;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ became download task", &v24, 0x16u);
  }

  v14 = [NSNumber numberWithUnsignedInteger:v10];
  [(NSMutableDictionary *)self->_tasksToIdentifiers setObject:v14 forKeyedSubscript:v8];

  [(NSMutableDictionary *)self->_tasksToIdentifiers removeObjectForKey:v7];
  identifiersToTasks = self->_identifiersToTasks;
  v16 = [NSNumber numberWithUnsignedInteger:v10];
  [(NSMutableDictionary *)identifiersToTasks setObject:v8 forKeyedSubscript:v16];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v18 = [NSNumber numberWithUnsignedInteger:v10];
  v19 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v18];

  v20 = [v8 downloadFile];
  v21 = [v20 path];

  if (v21)
  {
    v22 = [NSURL fileURLWithPath:v21];
  }

  else
  {
    v22 = 0;
  }

  [v19 setDownloadFileURL:v22];
  if (v21)
  {
  }

  if ([v19 taskKind] == 2)
  {
    [(NSXPCProxyCreating *)self->_clientProxy backgroundDataTaskDidBecomeDownloadTask:v10];
    [v19 setTaskKind:0];
  }

  v23 = [NSNumber numberWithUnsignedInteger:v10];
  [(NDBackgroundSession *)self queueUpdatesForTask:v23 updateType:14 highPriority:0];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 _didReceiveData:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v9];
  v13 = [v12 unsignedIntegerValue];

  identifiersToMonitors = self->_identifiersToMonitors;
  v15 = [NSNumber numberWithUnsignedInteger:v13];
  v16 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v15];

  if (v16)
  {
    [v16 taskTransferredData:0 countOfBytesReceived:objc_msgSend(v10 cellular:{"length"), objc_msgSend(v9, "_connectionIsCellular")}];
  }

  v17 = qword_1000EB210;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v25 = [(NDBackgroundSession *)self uuid];
    v26 = [v9 _loggableDescription];
    *buf = 138544130;
    v33 = v25;
    v34 = 2114;
    v35 = v26;
    v36 = 2048;
    v37 = [v9 countOfBytesReceived];
    v38 = 2048;
    v39 = [v9 countOfBytesExpectedToReceive];
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
    v30 = v9;
    v19 = v11;
    v31 = v19;
    v20 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v29];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100027688;
    v27[3] = &unk_1000D5F30;
    v28 = v19;
    [v20 backgroundDataTask:v13 didReceiveData:v10 withReply:v27];
  }

  else
  {
    v21 = qword_1000EB210;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(NDBackgroundSession *)self uuid];
      v23 = [v9 _loggableDescription];
      *buf = 138543618;
      v33 = v22;
      v34 = 2114;
      v35 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ received data and there is no connected client. Canceling task.", buf, 0x16u);
    }

    v24 = [v9 error:NSURLErrorDomain code:-997];
    [v9 cancel_with_error:v24];
    v11[2](v11);
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v9];
  v13 = [v12 unsignedIntegerValue];

  v14 = qword_1000EB210;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(NDBackgroundSession *)self uuid];
    v16 = [v9 _loggableDescription];
    *buf = 138544130;
    v46 = v15;
    v47 = 2114;
    v48 = v16;
    v49 = 2112;
    v50 = v10;
    v51 = 1024;
    v52 = [v10 statusCode];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ didReceiveResponse: %@, status code: %d", buf, 0x26u);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v18 = [NSNumber numberWithUnsignedInteger:v13];
  v19 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v18];

  [v19 setResponse:v10];
  v20 = [NSNumber numberWithUnsignedInteger:v13];
  [(NDBackgroundSession *)self queueUpdatesForTask:v20 updateType:1 highPriority:0];

  v21 = [v19 resumableUploadData];
  LOBYTE(v20) = v21 == 0;

  if ((v20 & 1) == 0)
  {
    [v19 setResumableUploadData:0];
    v22 = [NSNumber numberWithUnsignedInteger:v13];
    [(NDBackgroundSession *)self queueUpdatesForTask:v22 updateType:2 highPriority:0];
  }

  v23 = [v19 taskKind];
  clientProxy = self->_clientProxy;
  if (v23 == 1)
  {
    v25 = [v9 _metrics];
    v26 = [v25 _daemon_currentTransactionMetrics];
    [(NSXPCProxyCreating *)clientProxy backgroundTask:v13 didReceiveResponse:v10 transactionMetrics:v26];

    [(NDBackgroundSession *)self ensureSessionDownloadDirectoryExists];
    v11[2](v11, 2);
  }

  else if (clientProxy)
  {
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100027C58;
    v42[3] = &unk_1000D6240;
    v42[4] = self;
    v27 = v9;
    v28 = v11;
    v29 = v27;
    v43 = v27;
    v38 = v28;
    v30 = v28;
    v44 = v30;
    v31 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v42];
    v32 = [v29 _metrics];
    v33 = [v32 _daemon_currentTransactionMetrics];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100027DDC;
    v39[3] = &unk_1000D5460;
    v39[4] = self;
    v40 = v29;
    v41 = v30;
    [v31 backgroundTask:v13 didReceiveResponse:v10 transactionMetrics:v33 reply:v39];

    v11 = v38;
  }

  else
  {
    v34 = qword_1000EB210;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v36 = [(NDBackgroundSession *)self uuid];
      v37 = [v9 _loggableDescription];
      *buf = 138543618;
      v46 = v36;
      v47 = 2114;
      v48 = v37;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ received data task didReceiveResponse callback and there is no connected client. Canceling task.", buf, 0x16u);
    }

    v35 = [v9 error:NSURLErrorDomain code:-997];
    [v9 cancel_with_error:v35];
    v11[2](v11, 0);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v78 = v7;
  v9 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v7];
  v10 = [v9 unsignedIntegerValue];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v12 = [NSNumber numberWithUnsignedInteger:v10];
  v13 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v12];

  v14 = [v78 _metrics];
  v77 = v10;
  [v13 setTaskMetrics:v14];

  identifiersToStreams = self->_identifiersToStreams;
  if (identifiersToStreams)
  {
    v16 = [NSNumber numberWithUnsignedInteger:v10];
    [(NSMutableDictionary *)identifiersToStreams removeObjectForKey:v16];
  }

  if ([v78 _hasSZExtractor])
  {
    v17 = [v13 downloadFileURL];
    if (v17)
    {
      v18 = [v13 _updatedStreamingZipModificationDate];

      if ((v18 & 1) == 0)
      {
        v19 = [v13 downloadFileURL];
        [NDFileUtilities updateStreamingZipModificationDate:v19];
      }
    }
  }

  if (!v8 || !sub_1000049F0(v8) || [v13 disablesRetry] && ((sub_100005040(v78) & 1) != 0 || !sub_100008ADC(v8)) || objc_msgSend(v13, "state") == 2)
  {
    v20 = 0;
    goto LABEL_14;
  }

  v59 = qword_1000EB210;
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v60 = [(NDBackgroundSession *)self uuid];
    v61 = [v78 _loggableDescription];
    clientBundleID = self->_clientBundleID;
    *buf = 138544386;
    v87 = v60;
    v88 = 2114;
    v89 = v61;
    v90 = 2114;
    v91 = clientBundleID;
    v92 = 2112;
    v93 = v8;
    v94 = 2048;
    v95 = [v8 code];
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for client %{public}@ will be retried after error %@ - code: %ld", buf, 0x34u);
  }

  v63 = +[NDUserSyncStakeholder sharedStakeholder];
  [v63 startBridgingUMTask:v13];

  [(NDBackgroundSession *)self handleCompletionOfTask:v78 identifier:v10 taskInfo:v13 isRecoverable:1 suppressWake:1];
  [(NSMutableDictionary *)self->_tasksToIdentifiers removeObjectForKey:v78];
  v64 = [v78 _extractor];
  [v13 set_extractor:v64];

  v65 = [v78 _metrics];
  v66 = [v65 _daemon_currentTransactionMetrics];
  v67 = [(NDBackgroundSession *)self retryTask:v13 originalError:v8 transactionMetrics:v66];

  if ((v67 & 1) == 0)
  {
    v68 = +[NDUserSyncStakeholder sharedStakeholder];
    [v68 endBridgingUMTask:v13];

    v69 = qword_1000EB210;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v73 = [(NDBackgroundSession *)self uuid];
      v74 = [v78 _loggableDescription];
      *buf = 138543618;
      v87 = v73;
      v88 = 2114;
      v89 = v74;
      _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ failed to retry", buf, 0x16u);
    }

    v70 = [v8 userInfo];
    v71 = [NSURLError errorWithDomain:NSURLErrorDomain code:-1 userInfo:v70];

    v20 = 1;
    v8 = v71;
LABEL_14:
    clientProxy = [v8 domain];
    if ([clientProxy isEqualToString:@"_nsurlsessiondErrorDomain"])
    {
      v22 = [v8 code] == 1;

      if (!v22)
      {
        goto LABEL_20;
      }

      v23 = qword_1000EB210;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v72 = [(NDBackgroundSession *)self uuid];
        *buf = 138543362;
        v87 = v72;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Removing client proxy due to task failure caused by app quit", buf, 0xCu);
      }

      clientProxy = self->_clientProxy;
      self->_clientProxy = 0;
    }

LABEL_20:
    v24 = [(NDBackgroundSession *)self clientErrorForError:v8];
    if (sub_100004F90(v8))
    {
      v75 = [(NDApplication *)self->_clientApplication canBeSuspended];
    }

    else
    {
      v75 = 0;
    }

    [v13 setState:3];
    [v13 setError:v24];
    [v78 setError:v24];
    v25 = [v78 _trailers];
    [v13 set_backgroundTrailers:v25];

    v26 = [NSNumber numberWithUnsignedInteger:v77];
    [(NDBackgroundSession *)self queueUpdatesForTask:v26 updateType:14 highPriority:1];

    v27 = qword_1000EB210;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(NDBackgroundSession *)self uuid];
      v29 = [v78 _loggableDescription];
      v30 = [v8 code];
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
      v87 = v28;
      v88 = 2114;
      v89 = v29;
      v90 = 2112;
      v91 = v8;
      v92 = 2048;
      v93 = v30;
      v94 = 1024;
      LODWORD(v95) = v31;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ completed with error %@ [%ld]. C(%c)", buf, 0x30u);
    }

    if (!v8)
    {
      v34 = qword_1000EB210;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [(NDBackgroundSession *)self uuid];
        v39 = [v78 _loggableDescription];
        v40 = self->_clientBundleID;
        *buf = 138543874;
        v87 = v38;
        v88 = 2114;
        v89 = v39;
        v90 = 2114;
        v91 = v40;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for client %{public}@ completed successfully", buf, 0x20u);
      }

      goto LABEL_40;
    }

    v32 = [v8 domain];
    if ([v32 isEqualToString:NSURLErrorDomain])
    {
      v33 = [v8 code] == -999;

      if (v33)
      {
        v34 = qword_1000EB210;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [(NDBackgroundSession *)self uuid];
          v36 = [v78 _loggableDescription];
          v37 = self->_clientBundleID;
          *buf = 138543874;
          v87 = v35;
          v88 = 2114;
          v89 = v36;
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
          v47 = [v13 _backgroundTrailers];
          v48 = v47 == 0;

          if (!v48)
          {
            v49 = [v13 _backgroundTrailers];
            [v76 setObject:v49 forKeyedSubscript:@"trailers"];
          }

          v50 = [PendingCallback alloc];
          v51 = v24;
          if (!v24)
          {
            v51 = +[NSNull null];
          }

          v85[0] = v51;
          v52 = [v13 taskMetrics];
          v53 = v52;
          if (!v52)
          {
            v53 = +[NSNull null];
          }

          v85[1] = v53;
          v85[2] = v76;
          v54 = [NSArray arrayWithObjects:v85 count:3];
          v55 = [(PendingCallback *)v50 initWithCallbackType:0 taskIdentifier:v77 args:v54];

          if (!v52)
          {
          }

          if (!v24)
          {
          }

          [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v55 wakeRequirement:0];
          [(NDBackgroundSession *)self removeOutstandingTaskWithIdentifier:v77];
          [(NDBackgroundSession *)self handleCompletionOfTask:v78 identifier:v77 taskInfo:v13 isRecoverable:0 suppressWake:v75];
          [(NDBackgroundSession *)self removeUploadFileForTaskInfo:v13];
          v81[0] = _NSConcreteStackBlock;
          v81[1] = 3221225472;
          v81[2] = sub_100028CF4;
          v81[3] = &unk_1000D6130;
          v82 = v13;
          v83 = v24;
          v84 = self;
          v56 = objc_retainBlock(v81);
          if ((v20 & (v8 != 0)) == 1 && ([v78 _extractor], (v57 = objc_claimAutoreleasedReturnValue()) != 0) && (v58 = objc_msgSend(v78, "_extractorFinishedDecoding"), v57, (v58 & 1) == 0))
          {
            v79[0] = _NSConcreteStackBlock;
            v79[1] = 3221225472;
            v79[2] = sub_100028D98;
            v79[3] = &unk_1000D5F30;
            v80 = v56;
            [v78 terminateExtractorWithError:v8 completion:v79];
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
      v41 = [(NDBackgroundSession *)self uuid];
      v42 = [v78 _loggableDescription];
      v43 = self->_clientBundleID;
      v44 = [v8 code];
      *buf = 138544130;
      v87 = v41;
      v88 = 2114;
      v89 = v42;
      v90 = 2114;
      v91 = v43;
      v92 = 2048;
      v93 = v44;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for client %{public}@ completed with error - code: %ld", buf, 0x2Au);
    }

    goto LABEL_40;
  }

LABEL_57:
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveInformationalResponse:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v7];
  v10 = [v9 unsignedIntegerValue];

  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NDBackgroundSession *)self uuid];
    v13 = [v7 _loggableDescription];
    v23 = 138544130;
    v24 = v12;
    v25 = 2114;
    v26 = v13;
    v27 = 2112;
    v28 = v8;
    v29 = 1024;
    v30 = [v8 statusCode];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ didReceiveInformationalResponse: %@, status code: %d", &v23, 0x26u);
  }

  v14 = [v7 resumableUploadState];
  v15 = [v14 isResumable];

  if (v15)
  {
    identifiersToTaskInfo = self->_identifiersToTaskInfo;
    v17 = [NSNumber numberWithUnsignedInteger:v10];
    v18 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v17];

    v19 = [v18 resumableUploadData];
    LODWORD(v17) = v19 == 0;

    if (v17)
    {
      v20 = [v7 resumableUploadState];
      v21 = [v20 createResumeDataForTaskInfo];
      [v18 setResumableUploadData:v21];

      v22 = [NSNumber numberWithUnsignedInteger:v10];
      [(NDBackgroundSession *)self queueUpdatesForTask:v22 updateType:2 highPriority:0];
    }
  }

  [(NSXPCProxyCreating *)self->_clientProxy backgroundTask:v10 didReceiveInformationalResponse:v8];
}

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v7];
  v10 = [v9 unsignedIntegerValue];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v12 = [NSNumber numberWithUnsignedInteger:v10];
  v13 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v12];

  [v13 setShouldCancelOnDisconnect:1];
  [v13 setDisablesRetry:!self->_retryDataTasks];
  v14 = qword_1000EB210;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(NDBackgroundSession *)self uuid];
    v16 = [v7 _loggableDescription];
    *buf = 138543618;
    v29 = v15;
    v30 = 2114;
    v31 = v16;
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
    v18 = v7;
    v26 = v18;
    v19 = v8;
    v27 = v19;
    v20 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v25];
    v21 = sub_100005040(v18);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000294F0;
    v22[3] = &unk_1000D5818;
    v22[4] = self;
    v24 = v10;
    v23 = v19;
    [v20 backgroundTask:v10 needNewBodyStream:v21 withReply:v22];
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v16 = a4;
  v11 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:?];
  v12 = [v11 unsignedIntegerValue];

  identifiersToMonitors = self->_identifiersToMonitors;
  v14 = [NSNumber numberWithUnsignedInteger:v12];
  v15 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v14];

  if (v15)
  {
    [v15 taskTransferredData:a5 countOfBytesReceived:0 cellular:{objc_msgSend(v16, "_connectionIsCellular")}];
  }

  [(NSXPCProxyCreating *)self->_clientProxy backgroundTask:v12 didSendBodyData:a5 totalBytesSent:a6 totalBytesExpectedToSend:a7];
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v68 = a5;
  v13 = a6;
  v67 = a7;
  v70 = v12;
  v14 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v12];
  v15 = [v14 unsignedIntegerValue];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v17 = [NSNumber numberWithUnsignedInteger:v15];
  v18 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v17];

  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_10002A0D0;
  v79[3] = &unk_1000D57A0;
  v19 = v18;
  v80 = v19;
  v81 = self;
  v65 = v15;
  v83 = v15;
  v20 = v67;
  v82 = v20;
  v69 = objc_retainBlock(v79);
  if (![v19 isDiscretionary])
  {
    goto LABEL_24;
  }

  v61 = [v13 URL];
  v66 = [v61 host];
  v62 = [v19 currentRequest];
  v63 = [v62 URL];
  v64 = [v63 host];
  v21 = [v66 isEqualToString:?];
  if (v21)
  {
    v55 = [v13 URL];
    v60 = [v55 scheme];
    v56 = [v19 currentRequest];
    v57 = [v56 URL];
    v58 = [v57 scheme];
    if ([v60 isEqualToString:?])
    {
      v52 = [v13 URL];
      v59 = [v52 port];
      v53 = [v19 currentRequest];
      v54 = [v53 URL];
      v7 = [v54 port];
      if (v59 == v7)
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

  v23 = [v70 _taskGroup];
  v24 = [v23 _groupConfiguration];
  v25 = [v24 _duetPreauthorized];

  v26 = v25 ^ 1;
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
      v28 = [(NDBackgroundSession *)self uuid];
      v29 = [v70 _loggableDescription];
      v30 = [v19 currentRequest];
      *buf = 138544130;
      v85 = v28;
      v86 = 2114;
      v87 = v29;
      v88 = 2112;
      v89 = v13;
      v90 = 2112;
      v91 = v30;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ modifying conditional connection properties since new request %@ is to a different host than previous request %@", buf, 0x2Au);
    }

    v31 = [v70 _copySocketStreamProperties];
    if (!v31)
    {
      v31 = objc_opt_new();
    }

    v32 = kCFStreamPropertyConditionalConnectionProperties;
    v33 = [v31 objectForKeyedSubscript:kCFStreamPropertyConditionalConnectionProperties];
    v34 = [v33 mutableCopy];

    if (!v34)
    {
      v34 = objc_opt_new();
    }

    [v34 setObject:&off_1000D8920 forKeyedSubscript:kConditionalConnectionRequirementTimeWindowDelay];
    [v34 setObject:&off_1000D8950 forKeyedSubscript:kConditionalConnectionRequirementTimeWindowDuration];
    [v34 setObject:&__kCFBooleanTrue forKeyedSubscript:kConditionalConnectionIsDiscretionary];
    v35 = [v70 _legacySocketStreamProperties];
    v36 = [v35 mutableCopy];
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
  [v19 setCurrentRequest:v13];
  v40 = [v13 URL];
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
    v45 = [(NDBackgroundSession *)self uuid];
    v46 = [v70 _loggableDescription];
    *buf = 138544130;
    v85 = v45;
    v86 = 2114;
    v87 = v46;
    v88 = 2112;
    v89 = v68;
    v90 = 2112;
    v91 = v13;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ willPerformHTTPRedirection, response: %@, new request: %@", buf, 0x2Au);
  }

  clientProxy = self->_clientProxy;
  v43 = v69;
  v42 = v13;
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
  v50 = v13;
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
  [v51 backgroundTask:v65 willPerformHTTPRedirection:v68 withNewRequest:v50 reply:v71];

LABEL_31:
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v62 = a6;
  v63 = v9;
  v11 = [(NSMutableDictionary *)self->_tasksToIdentifiers objectForKeyedSubscript:v9];
  v61 = [v11 unsignedIntegerValue];

  v12 = qword_1000EB210;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(NDBackgroundSession *)self uuid];
    v14 = [v9 _loggableDescription];
    v15 = [v10 protectionSpace];
    clientBundleID = self->_clientBundleID;
    v17 = [v10 protectionSpace];
    v18 = [v17 authenticationMethod];
    *buf = 138544642;
    *&buf[4] = v13;
    *&buf[12] = 2114;
    *&buf[14] = v14;
    *&buf[22] = 2112;
    v72 = v10;
    v73 = 2112;
    v74 = v15;
    v75 = 2114;
    v76 = clientBundleID;
    v77 = 2114;
    v78 = v18;
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
  v19 = v62;
  v65 = v19;
  v20 = objc_retainBlock(v64);
  if (!self->_performsEVCertCheck || ([v10 protectionSpace], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "authenticationMethod"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", NSURLAuthenticationMethodServerTrust), v22, v21, !v23))
  {
    if (!sub_100005A04(v10) || self->_clientImplementsSessionChallenge || self->_clientImplementsTaskChallenge)
    {
      if (sub_100005A04(v10) || self->_clientImplementsTaskChallenge)
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

          v34 = [v10 protectionSpace];
          v35 = [v34 authenticationMethod];
          v36 = [v35 isEqualToString:NSURLAuthenticationMethodServerTrust];

          if (v36)
          {
            v37 = [v10 protectionSpace];
            v38 = [v37 serverTrust];

            if (!SecTrustEvaluateWithError(v38, 0))
            {
              goto LABEL_36;
            }

            v39 = qword_1000EB210;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v40 = [(NDBackgroundSession *)self uuid];
              v41 = [v63 _loggableDescription];
              *v67 = 138543618;
              v68 = v40;
              v69 = 2114;
              v70 = v41;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ client is not running and trust is valid, performing default handling for auth challenge", v67, 0x16u);
            }
          }

          else
          {
            if (self->_clientProxy)
            {
              goto LABEL_36;
            }

            if ([v10 previousFailureCount])
            {
              goto LABEL_36;
            }

            v55 = [v10 proposedCredential];
            v56 = v55 == 0;

            if (v56)
            {
              goto LABEL_36;
            }

            v39 = qword_1000EB210;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v57 = [(NDBackgroundSession *)self uuid];
              v58 = [v63 _loggableDescription];
              *v67 = 138543618;
              v68 = v57;
              v69 = 2114;
              v70 = v58;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ client is not running and challenge has a previousFailureCount of 0 and a proposedCredential, performing default handling for auth challenge", v67, 0x16u);
            }
          }
        }

        else
        {
          v39 = qword_1000EB210;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v42 = [(NDBackgroundSession *)self uuid];
            v43 = [v63 _loggableDescription];
            *v67 = 138543618;
            v68 = v42;
            v69 = 2114;
            v70 = v43;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ client is not running and doesn't support app wakes, performing default handling for auth challenge", v67, 0x16u);
          }
        }
      }

      else
      {
        v39 = qword_1000EB210;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [(NDBackgroundSession *)self uuid];
          v45 = [v63 _loggableDescription];
          *v67 = 138543618;
          v68 = v44;
          v69 = 2114;
          v70 = v45;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ client doesn't implement task-level auth challenge delegate, performing default handling for auth challenge", v67, 0x16u);
        }
      }
    }

    else
    {
      v39 = qword_1000EB210;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [(NDBackgroundSession *)self uuid];
        v47 = [v63 _loggableDescription];
        *v67 = 138543618;
        v68 = v46;
        v69 = 2114;
        v70 = v47;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ client doesn't implement session-level or task-level auth challenge delegate, performing default handling for auth challenge", v67, 0x16u);
      }
    }

    (v20[2])(v20);
    goto LABEL_36;
  }

  v24 = qword_1000EB210;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(NDBackgroundSession *)self uuid];
    v26 = [v63 _loggableDescription];
    *v67 = 138543618;
    v68 = v25;
    v69 = 2114;
    v70 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ performing Extended Validation Trust evaluation", v67, 0x16u);
  }

  v27 = [v10 protectionSpace];
  v28 = [v27 serverTrust];

  LODWORD(v27) = [(NDBackgroundSession *)self trustPassesExtendedValidation:v28];
  v29 = qword_1000EB210;
  v30 = v29;
  if (v27)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(NDBackgroundSession *)self uuid];
      v32 = [v63 _loggableDescription];
      *v67 = 138543618;
      v68 = v31;
      v69 = 2114;
      v70 = v32;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ Extended Validation Trust evaluation succeeded", v67, 0x16u);
    }

    v33 = [NSURLCredential credentialForTrust:v28];
    (*(v19 + 2))(v19, 0, v33);
  }

  else
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v59 = [(NDBackgroundSession *)self uuid];
      v60 = [v63 _loggableDescription];
      *v67 = 138543618;
      v68 = v59;
      v69 = 2114;
      v70 = v60;
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
    v51 = [NSArray arrayWithObjects:v10, v50, 0];
    v52 = [(PendingCallback *)v48 initWithCallbackType:2 taskIdentifier:v61 args:v51];

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

- (BOOL)trustPassesExtendedValidation:(__SecTrust *)a3
{
  if (a3)
  {
    error = 0;
    if (!SecTrustEvaluateWithError(a3, &error))
    {
      v6 = qword_1000EB210;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = [(NDBackgroundSession *)self uuid];
        v11 = error;
        v12 = [(__CFError *)error code];
        *buf = 138543618;
        v16 = v10;
        v17 = 2048;
        v18 = v12;
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
          v13 = [(NDBackgroundSession *)self uuid];
          *buf = 138543362;
          v16 = v13;
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

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NDBackgroundSession *)self uuid];
    v10 = 138544130;
    v11 = v9;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2048;
    v17 = [v7 code];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Session %@ didBecomeInvalidWithError: %@ [%ld]", &v10, 0x2Au);
  }
}

- (void)invalidateWithReply:(id)a3
{
  v4 = a3;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NDBackgroundSession *)self uuid];
    identifier = self->_identifier;
    clientBundleID = self->_clientBundleID;
    v13 = 138543874;
    v14 = v6;
    v15 = 2112;
    v16 = identifier;
    v17 = 2114;
    v18 = clientBundleID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> InvalidateWithReply: for session %@ bundle ID %{public}@", &v13, 0x20u);
  }

  if ([(NDCallbackQueue *)self->_callbackQueue count]&& [(NSMutableDictionary *)self->_identifiersToTasks count]|| [(NDBackgroundSession *)self sessionHasOutstandingTasks])
  {
    v9 = [(NDBackgroundSession *)self invalidateReply];
    v10 = v9 == 0;

    if (v10)
    {
      [(NDBackgroundSession *)self setInvalidateReply:v4];
    }
  }

  else
  {
    v11 = qword_1000EB210;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(NDBackgroundSession *)self uuid];
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Cleaning up and invalidating immediately since there are no tasks", &v13, 0xCu);
    }

    [(NDBackgroundSession *)self cleanupSessionWithCompletionHandler:v4];
  }
}

- (void)resetStorageWithReply:(id)a3
{
  v4 = a3;
  [(NDCredentialStorage *)self->_credentialStorage reset];
  v4[2]();
}

- (void)setTLSSessionCachePrefix:(id)a3
{
  v4 = a3;
  [(NSURLSession *)self->_userInitiatedSession set_tlsSessionCachePrefix:?];
  [(NSURLSession *)self->_discretionaryPrioritySession set_tlsSessionCachePrefix:v4];
}

- (void)applyOverrides:(id)a3 forTaskWithIdentifier:(unint64_t)a4
{
  v6 = a3;
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:a4];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v11 = [NSNumber numberWithUnsignedInteger:a4];
  v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

  v13 = [v12 currentRequest];
  v14 = [v13 mutableCopy];

  if ([v6 _allowsCellularAccess])
  {
    [v14 setAllowsCellularAccess:{objc_msgSend(v6, "_allowsCellularAccess") == 1}];
  }

  if ([v6 _allowsExpensiveNetworkAccess])
  {
    [v14 setAllowsExpensiveNetworkAccess:{objc_msgSend(v6, "_allowsExpensiveNetworkAccess") == 1}];
  }

  if ([v6 _allowsConstrainedNetworkAccess])
  {
    [v14 setAllowsConstrainedNetworkAccess:{objc_msgSend(v6, "_allowsConstrainedNetworkAccess") == 1}];
  }

  [v12 setCurrentRequest:v14];
  if ([v6 _requiresPowerPluggedIn])
  {
    [v12 set_requiresPowerPluggedIn:{objc_msgSend(v6, "_requiresPowerPluggedIn")}];
  }

  v15 = qword_1000EB210;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(NDBackgroundSession *)self uuid];
    v17 = [v9 _loggableDescription];
    v19 = 138543874;
    v20 = v16;
    v21 = 2114;
    v22 = v17;
    v23 = 2112;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ applying overrides %@", &v19, 0x20u);
  }

  v18 = [v9 error:@"_nsurlsessiondErrorDomain" code:10];
  [v9 cancel_with_error:v18];
}

- (void)setDiscretionaryOverride:(int64_t)a3 forTaskWithIdentifier:(unint64_t)a4
{
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:a4];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v11 = [NSNumber numberWithUnsignedInteger:a4];
  v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

  v13 = +[NSXPCConnection currentConnection];
  v14 = sub_100008D00(v13, @"com.apple.private.nsurlsession.set-discretionary-override-value");

  if (v14)
  {
    [v12 setQos:qos_class_self()];
    v15 = qword_1000EB210;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(NDBackgroundSession *)self uuid];
      v17 = [v9 _loggableDescription];
      if (a3)
      {
        if (a3 == 1)
        {
          v18 = 68;
        }

        else if (a3 == 2)
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
      v28 = v16;
      v29 = 2114;
      v30 = v17;
      v31 = 1024;
      v32 = v18;
      v33 = 1024;
      LODWORD(v34) = [v12 qos];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ setting discretionaryOverrride to %c, QOS(0x%x)", &v27, 0x22u);
    }

    [v9 set_discretionaryOverride:a3];
    [v12 setDiscretionaryOverride:a3];
    [v12 setMayBeDemotedToDiscretionary:1];
    v24 = [v12 currentRequest];
    v25 = [(NDBackgroundSession *)self currentDiscretionaryStatus:v24 withOptionalTaskInfo:v12];

    if ((!sub_100005040(v9) || ([v9 _seenFirstResume] & 1) == 0) && v25 != objc_msgSend(v12, "isDiscretionary") && objc_msgSend(v12, "hasStarted"))
    {
      v26 = [v9 error:@"_nsurlsessiondErrorDomain" code:6];
      [v9 cancel_with_error:v26];
    }

    v19 = +[NDStatusMonitor sharedMonitor];
    [v19 simulateNetworkChangedEvent:self identifier:a4];
  }

  else
  {
    v19 = qword_1000EB210;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(NDBackgroundSession *)self uuid];
      v21 = [v9 _loggableDescription];
      v22 = v21;
      if (a3)
      {
        if (a3 == 1)
        {
          v23 = 68;
        }

        else if (a3 == 2)
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
      v28 = v20;
      v29 = 2114;
      v30 = v21;
      v31 = 1024;
      v32 = v23;
      v33 = 2112;
      v34 = @"com.apple.private.nsurlsession.set-discretionary-override-value";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ attempted to set discretionaryOverrride to %c but lacks required entitlement %@", &v27, 0x26u);
    }
  }
}

- (void)setExpectedProgressTarget:(unint64_t)a3 forTaskWithIdentifier:(unint64_t)a4
{
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:a4];
  v13 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v10 = [NSNumber numberWithUnsignedInteger:a4];
  v11 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v10];

  [v13 set_expectedProgressTarget:a3];
  [v11 setExpectedProgressTarget:a3];
  v12 = [NSNumber numberWithUnsignedInteger:a4];
  [(NDBackgroundSession *)self queueUpdatesForTask:v12 updateType:6 highPriority:0];
}

- (void)setBytesPerSecondLimit:(int64_t)a3 forTaskWithIdentifier:(unint64_t)a4
{
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:a4];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v11 = [NSNumber numberWithUnsignedInteger:a4];
  v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

  v13 = qword_1000EB210;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(NDBackgroundSession *)self uuid];
    v15 = [v9 _loggableDescription];
    v17 = 138543874;
    v18 = v14;
    v19 = 2114;
    v20 = v15;
    v21 = 2048;
    v22 = a3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ setting limit of %lld bytes per second", &v17, 0x20u);
  }

  [v9 set_bytesPerSecondLimit:a3];
  [v12 setBytesPerSecondLimit:a3];
  v16 = [NSNumber numberWithUnsignedInteger:a4];
  [(NDBackgroundSession *)self queueUpdatesForTask:v16 updateType:5 highPriority:0];
}

- (void)setLoadingPoolPriority:(double)a3 forTaskWithIdentifier:(unint64_t)a4
{
  v7 = +[NSXPCConnection currentConnection];
  v8 = sub_100008D00(v7, @"com.apple.private.nsurlsession.set-task-priority");

  if (v8)
  {
    identifiersToTasks = self->_identifiersToTasks;
    v10 = [NSNumber numberWithUnsignedInteger:a4];
    v11 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v10];

    identifiersToTaskInfo = self->_identifiersToTaskInfo;
    v13 = [NSNumber numberWithUnsignedInteger:a4];
    v14 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v13];

    v15 = qword_1000EB210;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(NDBackgroundSession *)self uuid];
      v17 = [v11 _loggableDescription];
      v21 = 138543874;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      v25 = 2048;
      v26 = a3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ setting loading priority to %f", &v21, 0x20u);
    }

    [v11 set_loadingPriority:a3];
    [v14 setLoadingPriority:a3];
    v18 = [NSNumber numberWithUnsignedInteger:a4];
    [(NDBackgroundSession *)self queueUpdatesForTask:v18 updateType:4 highPriority:0];
  }

  else
  {
    v11 = qword_1000EB210;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = [(NDBackgroundSession *)self uuid];
      clientBundleID = self->_clientBundleID;
      v21 = 138543874;
      v22 = v19;
      v23 = 2114;
      v24 = clientBundleID;
      v25 = 2112;
      v26 = COERCE_DOUBLE(@"com.apple.private.nsurlsession.set-task-priority");
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ tried to set the loading priority of a task but is missing the %@ entitlement", &v21, 0x20u);
    }
  }
}

- (void)setPriority:(int64_t)a3 forTaskWithIdentifier:(unint64_t)a4
{
  v7 = +[NSXPCConnection currentConnection];
  v8 = sub_100008D00(v7, @"com.apple.private.nsurlsession.set-task-priority");

  if (v8)
  {
    identifiersToTasks = self->_identifiersToTasks;
    v10 = [NSNumber numberWithUnsignedInteger:a4];
    v11 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v10];

    identifiersToTaskInfo = self->_identifiersToTaskInfo;
    v13 = [NSNumber numberWithUnsignedInteger:a4];
    v14 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v13];

    v15 = qword_1000EB210;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(NDBackgroundSession *)self uuid];
      v17 = [v11 _loggableDescription];
      *buf = 138543874;
      v46 = v16;
      v47 = 2114;
      v48 = v17;
      v49 = 2048;
      v50 = a3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ setting priority to %ld", buf, 0x20u);
    }

    v18 = [v14 hasStarted];
    if (a3 > 300)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    if ((v19 & 1) == 0 && [v14 isDiscretionary])
    {
      v20 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:0];
      v21 = [v20 configuration];
      v22 = [v21 _socketStreamProperties];
      v23 = [v22 mutableCopy];

      v24 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:0];
      v25 = [v24 configuration];
      if ([v25 allowsCellularAccess])
      {
        v26 = [v14 originalRequest];
        v27 = [v26 allowsCellularAccess];

        if (v27)
        {
          [v23 setObject:&__kCFBooleanFalse forKeyedSubscript:kCFStreamPropertyNoCellular];
        }
      }

      else
      {
      }

      [v23 setObject:&__kCFBooleanFalse forKeyedSubscript:kCFStreamPropertyDUETConditional];
      v30 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:0];
      v31 = [v30 configuration];
      v32 = [v31 _duetPreauthorized];

      if ((v32 & 1) == 0)
      {
        v33 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:0];
        v34 = [v33 configuration];
        v35 = [v34 _requiresPowerPluggedIn];

        if (v35)
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

    [v14 setBasePriority:a3];
    [v14 setBasePrioritySetExplicitly:1];
    identifiersToMonitors = self->_identifiersToMonitors;
    v38 = [NSNumber numberWithUnsignedInteger:a4];
    v39 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v38];

    [v39 setBasePriority:a3];
    sub_100008C24(v11, a3, self->_monitoredApplication);
    v40 = [NSNumber numberWithUnsignedInteger:a4];
    [(NDBackgroundSession *)self queueUpdatesForTask:v40 updateType:12 highPriority:0];
  }

  else
  {
    v11 = qword_1000EB210;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v28 = [(NDBackgroundSession *)self uuid];
      clientBundleID = self->_clientBundleID;
      *buf = 138543874;
      v46 = v28;
      v47 = 2114;
      v48 = clientBundleID;
      v49 = 2112;
      v50 = @"com.apple.private.nsurlsession.set-task-priority";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ tried to set the priority of a task but is missing the %@ entitlement", buf, 0x20u);
    }
  }
}

- (void)setDescription:(id)a3 forTask:(unint64_t)a4
{
  v13 = a3;
  identifiersToTasks = self->_identifiersToTasks;
  v7 = [NSNumber numberWithUnsignedInteger:a4];
  v8 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v7];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v10 = [NSNumber numberWithUnsignedInteger:a4];
  v11 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v10];

  [v11 setTaskDescription:v13];
  [v8 setTaskDescription:v13];
  v12 = [NSNumber numberWithUnsignedInteger:a4];
  [(NDBackgroundSession *)self queueUpdatesForTask:v12 updateType:0 highPriority:1];
}

- (void)setPropertyOnStreamWithIdentifier:(unint64_t)a3 propDict:(id)a4 propKey:(id)a5 withReply:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v14 = [NSNumber numberWithUnsignedInteger:a3];
  v15 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v14];

  v16 = qword_1000EB210;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(NDBackgroundSession *)self uuid];
    v18 = [v15 _loggableDescription];
    clientBundleID = self->_clientBundleID;
    v24 = 138544130;
    v25 = v17;
    v26 = 2114;
    v27 = v18;
    v28 = 2114;
    v29 = clientBundleID;
    v30 = 2112;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ setPropertyOnStreamWithIdentifier, client %{public}@ property %@", &v24, 0x2Au);
  }

  if (v10 && v11 && v12)
  {
    identifiersToStreams = self->_identifiersToStreams;
    if (identifiersToStreams)
    {
      v21 = [NSNumber numberWithUnsignedInteger:a3];
      v22 = [(NSMutableDictionary *)identifiersToStreams objectForKeyedSubscript:v21];
      v23 = [v22 setProperty:v10 forKey:v11];
    }

    else
    {
      v23 = 0;
    }

    v12[2](v12, v23);
  }
}

- (void)resumeTaskWithIdentifier:(unint64_t)a3 withProperties:(id)a4
{
  v6 = a4;
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v11 = [NSNumber numberWithUnsignedInteger:a3];
  v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

  v13 = qword_1000EB210;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(NDBackgroundSession *)self uuid];
    v15 = [v9 _loggableDescription];
    v28 = 138543874;
    v29 = v14;
    v30 = 2114;
    v31 = v15;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ resumeTaskWithIdentifier, props %@", &v28, 0x20u);
  }

  if (v12)
  {
    if ([v12 state] == 1 && (v16 = objc_msgSend(v12, "suspendCount") - 1, objc_msgSend(v12, "setSuspendCount:", v16), !v16))
    {
      [v12 setState:0];
      [v12 setQos:qos_class_self()];
      v18 = +[UMUserManager sharedManager];
      v19 = [v18 currentPersona];
      v20 = [v19 userPersonaUniqueString];
      [v12 setPersonaUniqueString:v20];

      v21 = qword_1000EB210;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(NDBackgroundSession *)self uuid];
        v23 = [v9 _loggableDescription];
        v24 = [v12 qos];
        v28 = 138543874;
        v29 = v22;
        v30 = 2114;
        v31 = v23;
        v32 = 1024;
        LODWORD(v33) = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ resuming, QOS(0x%x)", &v28, 0x1Cu);
      }

      v25 = [(NDBackgroundSession *)self sanitizeTaskProperties:v6];
      [v12 setAdditionalProperties:v25];

      if (([v12 disablesRetry] & 1) == 0)
      {
        v26 = [v6 objectForKeyedSubscript:@"disableRetry"];
        [v12 setDisablesRetry:{objc_msgSend(v26, "isEqual:", &__kCFBooleanTrue)}];
      }

      [(NDBackgroundSession *)self configureAdditionalPropertiesOnTask:v9 taskInfo:v12];
      v27 = [v9 currentRequest];
      [v12 setCurrentRequest:v27];

      [(NSXPCProxyCreating *)self->_clientProxy backgroundTaskDidResume:a3];
      [v9 startResourceTimer];
      [(NDBackgroundSession *)self taskShouldResume:a3];
    }

    else
    {
      v17 = [NSNumber numberWithUnsignedInteger:a3];
      [(NDBackgroundSession *)self queueUpdatesForTask:v17 updateType:11 highPriority:1];
    }
  }
}

- (void)suspendTaskWithIdentifier:(unint64_t)a3
{
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v6];

  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NDBackgroundSession *)self uuid];
    v10 = [v7 _loggableDescription];
    v13 = 138543618;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ suspendTaskWithIdentifier", &v13, 0x16u);
  }

  if (v7)
  {
    v11 = [v7 suspendCount];
    [v7 setSuspendCount:v11 + 1];
    if (!v11)
    {
      [v7 setState:1];
      [(NSXPCProxyCreating *)self->_clientProxy backgroundTaskDidSuspend:a3];
      [(NDBackgroundSession *)self taskShouldSuspend:a3];
    }

    v12 = [NSNumber numberWithUnsignedInteger:a3];
    [(NDBackgroundSession *)self queueUpdatesForTask:v12 updateType:11 highPriority:1];
  }
}

- (void)cancelTaskWithIdentifier:(unint64_t)a3
{
  identifiersToTasks = self->_identifiersToTasks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v6];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v9 = [NSNumber numberWithUnsignedInteger:a3];
  v10 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v9];

  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NDBackgroundSession *)self uuid];
    v13 = [v7 _loggableDescription];
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ cancelTaskWithIdentifier", &v14, 0x16u);
  }

  [v10 setState:2];
  [v10 setResumedAndWaitingForEarliestBeginDate:0];
  [v7 cancel];
}

- (void)cancelTaskWithIdentifier:(unint64_t)a3 byProducingResumeData:(id)a4
{
  v6 = a4;
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v11 = [NSNumber numberWithUnsignedInteger:a3];
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
    v17[6] = v6;
    [v14 cancelByProducingResumeData:v17];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      (*(v6 + 2))(v6, 0);
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
    v16[6] = v6;
    [v15 cancelByProducingResumeData:v16];
  }

LABEL_7:
}

- (void)dataTaskWithRequest:(id)a3 originalRequest:(id)a4 identifier:(unint64_t)a5 uniqueIdentifier:(id)a6 reply:(id)a7
{
  v12 = a3;
  v27 = a4;
  v13 = a6;
  v14 = a7;
  v15 = qword_1000EB210;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(NDBackgroundSession *)self uuid];
    v17 = [(NDBackgroundSession *)self descriptionForRequest:v12];
    *buf = 138544130;
    v29 = v16;
    v30 = 2114;
    v31 = v13;
    v32 = 2048;
    v33 = a5;
    v34 = 2112;
    v35 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Task <%{public}@>.<%lu> dataTaskWithRequest: %@", buf, 0x2Au);
  }

  v18 = [(NDBackgroundSession *)self currentDiscretionaryStatus:v12 withOptionalTaskInfo:0];
  v19 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:v18];
  v20 = [v19 dataTaskWithRequest:v12];

  v21 = [[__NSCFURLSessionTaskInfo alloc] initWithDataTask:v20 uniqueIdentifier:v13 bundleID:self->_clientBundleID sessionID:self->_identifier];
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
      v26 = [(NDBackgroundSession *)self uuid];
      *buf = 138543874;
      v29 = v26;
      v30 = 2112;
      v31 = v20;
      v32 = 2112;
      v33 = v22;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Couldn't create task or taskInfo: task = %@, taskInfo = %@", buf, 0x20u);
    }
  }

  else
  {
    [v20 setOriginalRequest:v27];
    if (!self->_clientImplementsWillSendRequest || !self->_sendsLaunchEvents)
    {
      [v22 setShouldCancelOnDisconnect:1];
    }

    [v22 setDisablesRetry:!self->_retryDataTasks];
    [(NDBackgroundSession *)self performCommonSetupForTask:v20 taskInfo:v22 identifier:a5 discretionaryStatus:v18];
  }

  v14[2](v14, v24);
}

- (void)uploadTaskWithRequest:(id)a3 originalRequest:(id)a4 fromFile:(id)a5 sandboxExtensionData:(id)a6 identifier:(unint64_t)a7 uniqueIdentifier:(id)a8 potentialCredentials:(id)a9 reply:(id)a10
{
  v37 = a3;
  v33 = a4;
  v15 = a5;
  v35 = a6;
  v36 = a8;
  v34 = a9;
  v16 = a10;
  v17 = qword_1000EB210;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [(NDBackgroundSession *)self uuid];
    v19 = [(NDBackgroundSession *)self descriptionForRequest:v37];
    *buf = 138544386;
    v40 = v18;
    v41 = 2114;
    v42 = v36;
    v43 = 2048;
    v44 = a7;
    v45 = 2112;
    v46 = v19;
    v47 = 2112;
    v48 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Task <%{public}@>.<%lu> uploadTaskWithRequest: %@ fromFile: %@", buf, 0x34u);
  }

  v20 = [(NDBackgroundSession *)self currentDiscretionaryStatus:v37 withOptionalTaskInfo:0];
  if (v15)
  {
    v21 = [(NDBackgroundSession *)self makeTempUploadFile:v15 withExtensionData:v35];
    if (!v21)
    {
      v16[2](v16, 0);
      goto LABEL_24;
    }

    v22 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:v20];
    v23 = [v22 uploadTaskWithRequest:v37 fromFile:v21];
  }

  else
  {
    v22 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:v20];
    v23 = [v22 uploadTaskWithStreamedRequest:v37];
    v21 = 0;
  }

  v24 = [[__NSCFURLSessionTaskInfo alloc] initWithUploadTask:v23 uniqueIdentifier:v36 bundleID:self->_clientBundleID sessionID:self->_identifier];
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
      v31 = [(NDBackgroundSession *)self uuid];
      *buf = 138543874;
      v40 = v31;
      v41 = 2112;
      v42 = v23;
      v43 = 2112;
      v44 = v25;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Couldn't create task or taskInfo: task = %@, taskInfo = %@", buf, 0x20u);
    }
  }

  else
  {
    if (v34)
    {
      v28 = +[Daemon sharedDaemon];
      v29 = [v28 isInSyncBubble];

      if ((v29 & 1) == 0)
      {
        if (self->_clientBundleID)
        {
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_10002E38C;
          v38[3] = &unk_1000D5700;
          v38[4] = self;
          [v34 enumerateKeysAndObjectsUsingBlock:v38];
        }
      }
    }

    [v23 setOriginalRequest:v33];
    [v25 setFileURL:v21];
    [(NDBackgroundSession *)self performCommonSetupForTask:v23 taskInfo:v25 identifier:a7 discretionaryStatus:v20];
  }

  v16[2](v16, v27);

LABEL_24:
}

- (void)uploadTaskWithResumableUploadState:(id)a3 request:(id)a4 originalRequest:(id)a5 fromFile:(id)a6 sandboxExtensionData:(id)a7 identifier:(unint64_t)a8 uniqueIdentifier:(id)a9 potentialCredentials:(id)a10 reply:(id)a11
{
  v38 = a3;
  v40 = a4;
  v35 = a5;
  v16 = a6;
  v37 = a7;
  v39 = a9;
  v36 = a10;
  v17 = a11;
  v18 = qword_1000EB210;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(NDBackgroundSession *)self uuid];
    *buf = 138543874;
    v43 = v19;
    v44 = 2114;
    v45 = v39;
    v46 = 2048;
    v47 = a8;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Task <%{public}@>.<%lu> uploadTaskWithResumableUploadState", buf, 0x20u);
  }

  v20 = [(NDBackgroundSession *)self currentDiscretionaryStatus:v40 withOptionalTaskInfo:0];
  if (v16)
  {
    v21 = [(NDBackgroundSession *)self makeTempUploadFile:v16 withExtensionData:v37];
    if (!v21)
    {
      v17[2](v17, 0);
      goto LABEL_26;
    }

    v22 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:v20];
    v23 = [v22 uploadTaskWithRequest:v40 fromFile:v21];
  }

  else
  {
    v22 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:v20];
    v23 = [v22 uploadTaskWithStreamedRequest:v40];
    v21 = 0;
  }

  if (v38)
  {
    [v23 setResumableUploadState:v38];
  }

  v24 = [v23 resumableUploadState];
  [v24 setUploadFile:v21];

  v25 = [[__NSCFURLSessionTaskInfo alloc] initWithUploadTask:v23 uniqueIdentifier:v39 bundleID:self->_clientBundleID sessionID:self->_identifier];
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
      v32 = [(NDBackgroundSession *)self uuid];
      *buf = 138543874;
      v43 = v32;
      v44 = 2112;
      v45 = v23;
      v46 = 2112;
      v47 = v26;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Couldn't create task or taskInfo: task = %@, taskInfo = %@", buf, 0x20u);
    }
  }

  else
  {
    if (v36)
    {
      v29 = +[Daemon sharedDaemon];
      v30 = [v29 isInSyncBubble];

      if ((v30 & 1) == 0)
      {
        if (self->_clientBundleID)
        {
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_10002EA8C;
          v41[3] = &unk_1000D5700;
          v41[4] = self;
          [v36 enumerateKeysAndObjectsUsingBlock:v41];
        }
      }
    }

    [v23 setOriginalRequest:v35];
    [v26 setFileURL:v21];
    [(NDBackgroundSession *)self performCommonSetupForTask:v23 taskInfo:v26 identifier:v34 discretionaryStatus:v20];
  }

  v17[2](v17, v28);

LABEL_26:
}

- (void)downloadTaskWithRequest:(id)a3 originalRequest:(id)a4 downloadFilePath:(id)a5 identifier:(unint64_t)a6 uniqueIdentifier:(id)a7 reply:(id)a8
{
  v14 = a3;
  v42 = a4;
  v43 = a5;
  v44 = a7;
  v15 = a8;
  v16 = qword_1000EB210;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(NDBackgroundSession *)self uuid];
    v18 = [(NDBackgroundSession *)self descriptionForRequest:v14];
    *buf = 138544130;
    *&buf[4] = v17;
    *&buf[12] = 2114;
    *&buf[14] = v44;
    *&buf[22] = 2048;
    *&buf[24] = a6;
    v46 = 2112;
    v47 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Task <%{public}@>.<%lu> downloadTaskWithRequest: %@", buf, 0x2Au);
  }

  if (_CFN_isSafeRequestForBackgroundDownload())
  {
    v19 = [(NDBackgroundSession *)self currentDiscretionaryStatus:v14 withOptionalTaskInfo:0];
    v20 = +[Daemon sharedDaemon];
    v21 = [v20 isPrivileged];
    v22 = v43;
    if (!v21)
    {
      v22 = 0;
    }

    v23 = v22;

    [(NDBackgroundSession *)self ensureSessionDownloadDirectoryExists];
    v24 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:v19];
    v25 = [v24 _downloadTaskWithRequest:v14 downloadFilePath:v23];

    v26 = [[__NSCFURLSessionTaskInfo alloc] initWithDownloadTask:v25 uniqueIdentifier:v44 bundleID:self->_clientBundleID sessionID:self->_identifier];
    v27 = v26;
    if (v25 && v26)
    {
      [v25 setOriginalRequest:v42];
      v28 = [v25 downloadFile];
      v41 = [v28 path];

      if (v41 && ([NSURL fileURLWithPath:v41 isDirectory:0], (v40 = objc_claimAutoreleasedReturnValue()) != 0))
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
      [(NDBackgroundSession *)self performCommonSetupForTask:v25 taskInfo:v27 identifier:a6 discretionaryStatus:v19];
      v15[2](v15, 1);
    }

    else
    {
      v32 = qword_1000EB210;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v37 = [(NDBackgroundSession *)self uuid];
        *buf = 138543874;
        *&buf[4] = v37;
        *&buf[12] = 2112;
        *&buf[14] = v25;
        *&buf[22] = 2112;
        *&buf[24] = v27;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Couldn't create task or taskInfo: task = %@, taskInfo = %@", buf, 0x20u);
      }

      v15[2](v15, 0);
    }
  }

  else
  {
    v31 = qword_1000EB210;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v35 = [(NDBackgroundSession *)self uuid];
      clientBundleID = self->_clientBundleID;
      *buf = 138543874;
      *&buf[4] = v35;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      *&buf[22] = 2114;
      *&buf[24] = clientBundleID;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Received an unsafe request for background download: %@ from %{public}@", buf, 0x20u);
    }

    v15[2](v15, 0);
  }
}

- (void)downloadTaskWithResumeData:(id)a3 identifier:(unint64_t)a4 uniqueIdentifier:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = _CFN_requestFromResumeData();
  if (v13 && (_CFN_isSafeRequestForBackgroundDownload() & 1) != 0)
  {
    v14 = [(NDBackgroundSession *)self currentDiscretionaryStatus:v13 withOptionalTaskInfo:0];
    [(NDBackgroundSession *)self ensureSessionDownloadDirectoryExists];
    v32 = v14;
    v15 = [(NDBackgroundSession *)self sessionForDiscretionaryStatus:v14];
    v16 = [v15 downloadTaskWithResumeData:v10];

    v17 = [[__NSCFURLSessionTaskInfo alloc] initWithDownloadTask:v16 uniqueIdentifier:v11 bundleID:self->_clientBundleID sessionID:self->_identifier];
    v18 = v17;
    if (v16 && v17)
    {
      v19 = [v16 downloadFile];
      v20 = [v19 path];

      v30 = v20;
      if (v20 && ([NSURL fileURLWithPath:v20 isDirectory:0], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v21 = +[NSXPCConnection currentConnection];
        v31 = v20;
        v29 = v21;
        if (v21)
        {
          [v21 auditToken];
        }

        else
        {
          memset(buf, 0, 32);
        }

        v24 = [NDFileUtilities safeURLForDownload:v20 auditToken:buf, v29];
        LODWORD(v20) = 1;
      }

      else
      {
        v31 = 0;
        v24 = 0;
      }

      [v18 setDownloadFileURL:v24];
      if (v20)
      {
      }

      [v18 setExpectingResumeCallback:1];
      [(NDBackgroundSession *)self performCommonSetupForTask:v16 taskInfo:v18 identifier:a4 discretionaryStatus:v32];
      v12[2](v12, 1);
    }

    else
    {
      v23 = qword_1000EB210;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v27 = [(NDBackgroundSession *)self uuid];
        *buf = 138543874;
        *&buf[4] = v27;
        *&buf[12] = 2112;
        *&buf[14] = v16;
        *&buf[22] = 2112;
        *&buf[24] = v18;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Couldn't create task or taskInfo: task = %@, taskInfo = %@", buf, 0x20u);
      }

      v12[2](v12, 0);
    }
  }

  else
  {
    v22 = qword_1000EB210;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = [(NDBackgroundSession *)self uuid];
      clientBundleID = self->_clientBundleID;
      *buf = 138543618;
      *&buf[4] = v25;
      *&buf[12] = 2114;
      *&buf[14] = clientBundleID;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Received a background download request from unsafe resume data from %{public}@", buf, 0x16u);
    }

    v12[2](v12, 0);
  }
}

- (void)setupDASPropertiesOnTask:(id)a3 taskInfo:(id)a4 discretionaryStatus:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  [(NDApplication *)self->_clientApplication currentRequestDelay];
  v11 = v10;
  v12 = [v8 _effectiveConfiguration];
  v13 = [v12 _duetPreauthorized];

  if (v13)
  {
    v14 = qword_1000EB210;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NDBackgroundSession *)self uuid];
      v16 = [v8 _loggableDescription];
      *buf = 138543618;
      v45 = v15;
      v46 = 2114;
      v47 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ is duet preauthorized", buf, 0x16u);
    }
  }

  else
  {
    v14 = [v8 _copySocketStreamProperties];
    v43 = kCFStreamPropertyConditionalConnectionProperties;
    v17 = [v14 objectForKeyedSubscript:?];
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
    v20 = [v8 _legacySocketStreamProperties];
    if (v20)
    {
      v21 = [v8 _legacySocketStreamProperties];
      v22 = [v21 mutableCopy];
    }

    else
    {
      v22 = objc_opt_new();
    }

    v23 = objc_opt_new();
    v24 = [v8 _loggableDescription];
    [v23 setObject:v24 forKeyedSubscript:kConditionalConnectionActivityName];

    if ([v9 taskKind] == 1 || objc_msgSend(v9, "taskKind") == 2 && (objc_msgSend(v8, "originalRequest"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "HTTPBodyStream"), v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26))
    {
      [v23 setObject:&__kCFBooleanTrue forKeyedSubscript:kConditionalConnectionIsUpload];
    }

    [v8 set_DuetActivityProperties:v23];
    if (v5 && v11 > 0.0)
    {
      v27 = [v9 currentRequest];
      [v27 _timeWindowDelay];
      v29 = v28;

      if (v11 > v29)
      {
        v30 = qword_1000EB210;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [(NDBackgroundSession *)self uuid];
          v32 = [v9 _loggableDescription];
          *buf = 138543874;
          v45 = v31;
          v46 = 2114;
          v47 = v32;
          v48 = 2048;
          v49 = v11;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ adding delay of %f", buf, 0x20u);
        }

        v33 = [NSNumber numberWithDouble:v11];
        [v19 setObject:v33 forKeyedSubscript:kConditionalConnectionRequirementTimeWindowDelay];

        [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:kConditionalConnectionIsDiscretionary];
      }
    }

    v34 = [v8 _effectiveConfiguration];
    v35 = [v34 _onBehalfOfPairedDevice];

    if (v35)
    {
      [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:kConditionalConnectionOnBehalfOfPairedDevice];
    }

    if ([v9 isDiscretionary] && objc_msgSend(v9, "startedUserInitiated"))
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

    v39 = [v9 additionalProperties];
    v40 = [v39 objectForKeyedSubscript:@"TimeoutIntervalForResource"];

    if (v40)
    {
      [v19 setObject:v40 forKeyedSubscript:kConditionalConnectionRequirementTimeWindowDuration];
    }

    [v22 setObject:v19 forKeyedSubscript:v43];
    [v8 set_legacySocketStreamProperties:v22];
  }
}

- (void)wakeUpClient:(int64_t)a3
{
  if (a3)
  {
    if (self->_sendsLaunchEvents)
    {
      if ([(NDApplication *)self->_clientApplication supportsWakes])
      {
        if (self->_obliterated)
        {
          v5 = qword_1000EB210;
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v6 = [(NDBackgroundSession *)self uuid];
            clientBundleID = self->_clientBundleID;
            *buf = 138543618;
            v39 = v6;
            v40 = 2114;
            v41 = clientBundleID;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Not waking up client %{public}@ since session is obliterated", buf, 0x16u);
          }
        }

        else if ([(NDBackgroundSession *)self clientIsActive])
        {
          v5 = qword_1000EB210;
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [(NDBackgroundSession *)self uuid];
            v16 = self->_clientBundleID;
            *buf = 138543618;
            v39 = v15;
            v40 = 2114;
            v41 = v16;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Not waking up client %{public}@ since it's already connected", buf, 0x16u);
          }
        }

        else if ([(NDApplication *)self->_clientApplication backgroundUpdatesEnabled])
        {
          v17 = +[NSUUID UUID];
          v5 = [v17 UUIDString];

          v18 = [PendingCallback alloc];
          v37 = v5;
          v19 = [NSArray arrayWithObjects:&v37 count:1];
          v20 = [(PendingCallback *)v18 initWithCallbackType:3 taskIdentifier:0 args:v19];

          v21 = [PendingCallback alloc];
          v36 = v5;
          v22 = [NSArray arrayWithObjects:&v36 count:1];
          v23 = [(PendingCallback *)v21 initWithCallbackType:4 taskIdentifier:0 args:v22];

          [(NDCallbackQueue *)self->_callbackQueue addPendingCallbackToFront:v20];
          [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v23 wakeRequirement:0];
          v24 = self->_clientBundleID;
          v25 = qword_1000EB210;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [(NDBackgroundSession *)self uuid];
            *buf = 138543618;
            v39 = v26;
            v40 = 2114;
            v41 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Waking up the client app: %{public}@", buf, 0x16u);
          }

          clientApplication = self->_clientApplication;
          identifier = self->_identifier;
          v29 = [(NDBackgroundSession *)self uuid];
          v30 = [(NDApplication *)clientApplication wakeForSessionIdentifier:identifier withSessionUUID:v29 wakeRequirement:a3];

          if ((v30 & 1) == 0)
          {
            v31 = qword_1000EB210;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v34 = [(NDBackgroundSession *)self uuid];
              *buf = 138543618;
              v39 = v34;
              v40 = 2114;
              v41 = v24;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Failed to wake app: %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          v5 = qword_1000EB210;
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [(NDBackgroundSession *)self uuid];
            v33 = self->_clientBundleID;
            *buf = 138543618;
            v39 = v32;
            v40 = 2114;
            v41 = v33;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Not waking up client %{public}@ since background updates are not enabled", buf, 0x16u);
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
          v35[5] = a3;
          [v12 performWake:v35 uponNotification:self->_clientBundleID sessionIdentifier:self->_identifier];
        }

        v5 = qword_1000EB210;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(NDBackgroundSession *)self uuid];
          v14 = self->_clientBundleID;
          *buf = 138543618;
          v39 = v13;
          v40 = 2114;
          v41 = v14;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Not waking up client %{public}@ since it doesn't support app wakes", buf, 0x16u);
        }
      }
    }

    else
    {
      v5 = qword_1000EB210;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(NDBackgroundSession *)self uuid];
        v11 = self->_clientBundleID;
        *buf = 138543618;
        v39 = v10;
        v40 = 2114;
        v41 = v11;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Not waking up client %{public}@ since sessionSendsLaunchEvents is NO", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = qword_1000EB210;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NDBackgroundSession *)self uuid];
      v9 = self->_clientBundleID;
      *buf = 138543618;
      v39 = v8;
      v40 = 2114;
      v41 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Not waking up client %{public}@ since wake request is unnecessary", buf, 0x16u);
    }
  }
}

- (void)clientAcknowledgedTerminalCallbackForTask:(unint64_t)a3
{
  identifiersToTasks = self->_identifiersToTasks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v6];

  if (!v7)
  {
LABEL_4:
    v10 = [NSNumber numberWithUnsignedInteger:a3];
    [(NDBackgroundSession *)self queueUpdatesForTask:v10 updateType:13 highPriority:0];

    [(NDCallbackQueue *)self->_callbackQueue drainCallbacksForTaskIdentifier:a3];
    if (![(NDCallbackQueue *)self->_callbackQueue count]&& ![(NDBackgroundSession *)self sessionHasOutstandingTasks])
    {
      v11 = [(NDBackgroundSession *)self invalidateReply];

      if (v11)
      {
        v12 = [(NDBackgroundSession *)self invalidateReply];
        [(NDBackgroundSession *)self setInvalidateReply:0];
        [(NDBackgroundSession *)self cleanupSessionWithCompletionHandler:v12];
      }
    }

    goto LABEL_11;
  }

  if ([v7 state] == 3)
  {
    [(NSMutableDictionary *)self->_tasksToIdentifiers removeObjectForKey:v7];
    v8 = self->_identifiersToTasks;
    v9 = [NSNumber numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v8 removeObjectForKey:v9];

    goto LABEL_4;
  }

  v13 = qword_1000EB210;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(NDBackgroundSession *)self uuid];
    v15 = [v7 _loggableDescription];
    v16 = 138543618;
    v17 = v14;
    v18 = 2114;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ skipping acknowledgement teardown since it's not actually complete", &v16, 0x16u);
  }

LABEL_11:
}

- (void)errorOccurredDuringAuthCallbackDelivery:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = [(NDBackgroundSession *)self uuid];
    v11 = 138543618;
    v12 = v10;
    v13 = 2112;
    v14 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Encountered error %@ error delivering auth challenge to client, performing default handling", &v11, 0x16u);
  }

  clientProxy = self->_clientProxy;
  self->_clientProxy = 0;

  v7[2](v7, 1, 0);
}

- (void)errorOccurredDuringFinishedCallbackDelivery:(id)a3
{
  v4 = a3;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = [(NDBackgroundSession *)self uuid];
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v4;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Encountered error %@ during task completion callback delivery", &v8, 0x16u);
  }

  clientProxy = self->_clientProxy;
  self->_clientProxy = 0;

  if (![(NDBackgroundSession *)self sessionHasOutstandingTasks])
  {
    [(NDBackgroundSession *)self wakeUpClient:1];
  }
}

- (void)taskMonitor:(id)a3 terminateTask:(unint64_t)a4 reason:(int)a5
{
  identifiersToTasks = self->_identifiersToTasks;
  v7 = [NSNumber numberWithUnsignedInteger:a4];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v7];

  v8 = [v9 error:@"_nsurlsessiondErrorDomain" code:a5];
  [v9 cancel_with_error:v8];
}

- (void)taskMonitor:(id)a3 retryTask:(unint64_t)a4 reason:(int)a5
{
  identifiersToTasks = self->_identifiersToTasks;
  v7 = [NSNumber numberWithUnsignedInteger:a4];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v7];

  v8 = [v9 error:@"_nsurlsessiondErrorDomain" code:a5];
  [v9 cancel_with_error:v8];
}

- (void)taskMonitor:(id)a3 updateTaskPriority:(unint64_t)a4 reason:(int)a5
{
  v12 = a3;
  identifiersToTasks = self->_identifiersToTasks;
  v9 = [NSNumber numberWithUnsignedInteger:a4];
  v10 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v9];

  if (a5 == -1)
  {
    sub_100008C24(v10, [v12 basePriority], self->_monitoredApplication);
  }

  else
  {
    v11 = [v10 error:@"_nsurlsessiondErrorDomain" code:a5];
    [v10 cancel_with_error:v11];
  }
}

- (BOOL)errorIfBlockedTracker:(id)a3 url:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(NSString *)self->_monitoredAppBundleID UTF8String];
  neTrackerTCCResult = self->_neTrackerTCCResult;
  v8 = [v7 host];
  [v8 UTF8String];
  v9 = ne_tracker_check_is_hostname_blocked();

  if (v9 == 1)
  {
    v10 = qword_1000EB210;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = [(NDBackgroundSession *)self uuid];
      v14 = [v6 _loggableDescription];
      *buf = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ is blocked due to tracker policy", buf, 0x16u);
    }

    v11 = [v6 error:NSURLErrorDomain code:-1004];
    [v6 cancel_with_error:v11];
  }

  return v9 == 1;
}

- (id)inputStreamWithFileHandle:(id)a3 taskIdentifier:(unint64_t)a4
{
  v6 = a3;
  readStream = 0;
  v7 = dup([v6 fileDescriptor]);
  CFStreamCreatePairWithSocket(0, v7, &readStream, 0);
  CFReadStreamSetProperty(readStream, kCFStreamPropertyShouldCloseNativeSocket, kCFBooleanTrue);
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NDBackgroundSession *)self uuid];
    *buf = 138543618;
    v17 = v9;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Created stream with file descriptor: %d", buf, 0x12u);
  }

  [v6 closeFile];
  v10 = readStream;
  identifiersToStreams = self->_identifiersToStreams;
  v12 = [NSNumber numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)identifiersToStreams setObject:v10 forKeyedSubscript:v12];

  v13 = readStream;

  return v13;
}

- (id)makeTempUploadFile:(id)a3 withExtensionData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 bytes];
  v9 = [v7 length];
  if (v9 && !v9[v8 - 1])
  {
    v10 = sandbox_extension_consume();
    v31 = qword_1000EB210;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [(NDBackgroundSession *)self uuid];
      *buf = 138543874;
      v47 = v32;
      v48 = 2112;
      v49 = v6;
      v50 = 2048;
      v51 = v10;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Consumed sandbox extension for file %@, extension = %lld", buf, 0x20u);
    }

    if (v10 < 0)
    {
      v33 = qword_1000EB210;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v43 = [(NDBackgroundSession *)self uuid];
        *buf = 138543874;
        v47 = v43;
        v48 = 2080;
        v49 = v8;
        v50 = 2112;
        v51 = v6;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Failed to consume sandbox extension %s for fileURL %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v10 = -1;
  }

  v11 = +[NSUUID UUID];
  v12 = [v11 UUIDString];
  v13 = [NSString stringWithFormat:@"CFNetworkUpload_%@", v12];

  v14 = [(NSURL *)self->_uploadsDirectory URLByAppendingPathComponent:v13];
  LODWORD(v12) = [v6 fileDescriptor];
  v15 = v14;
  if (fclonefileat(v12, -2, [v14 fileSystemRepresentation], 0))
  {
    v16 = *__error();
    if (v16 != 45 && v16 != 18)
    {
      v23 = qword_1000EB210;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v34 = [(NDBackgroundSession *)self uuid];
        *buf = 138543618;
        v47 = v34;
        v48 = 1024;
        LODWORD(v49) = v16;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Error cloning file: %{errno}d", buf, 0x12u);
      }

      goto LABEL_37;
    }

    v17 = qword_1000EB210;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(NDBackgroundSession *)self uuid];
      *buf = 138543362;
      v47 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Falling back to copy", buf, 0xCu);
    }

    v19 = v14;
    v20 = open([v14 fileSystemRepresentation], 513, 384);
    if (v20 == -1)
    {
      v23 = qword_1000EB210;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v40 = [(NDBackgroundSession *)self uuid];
        v41 = *__error();
        *buf = 138543618;
        v47 = v40;
        v48 = 1024;
        LODWORD(v49) = v41;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Error creating file: %{errno}d", buf, 0x12u);
      }

      goto LABEL_37;
    }

    v21 = fcopyfile([v6 fileDescriptor], v20, 0, 8u);
    close(v20);
    if (v21)
    {
      v22 = qword_1000EB210;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v38 = [(NDBackgroundSession *)self uuid];
        v39 = *__error();
        *buf = 138543618;
        v47 = v38;
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
      v36 = [(NDBackgroundSession *)self uuid];
      v37 = [v23 code];
      *buf = 138543874;
      v47 = v36;
      v48 = 2112;
      v49 = v23;
      v50 = 2048;
      v51 = v37;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Error checking resource value: %@ [%ld]", buf, 0x20u);
    }

    goto LABEL_21;
  }

  if ([v25 BOOLValue])
  {
    v26 = qword_1000EB210;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v42 = [(NDBackgroundSession *)self uuid];
      *buf = 138543362;
      v47 = v42;
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
      v29 = [(NDBackgroundSession *)self uuid];
      *buf = 138543618;
      v47 = v29;
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

- (void)requeueTask:(unint64_t)a3 skipResume:(BOOL)a4
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100031A6C;
  block[3] = &unk_1000D5640;
  block[4] = self;
  block[5] = a3;
  v6 = a4;
  dispatch_async(workQueue, block);
}

- (void)removeOutstandingTaskWithIdentifier:(unint64_t)a3
{
  outstandingTaskIDs = self->_outstandingTaskIDs;
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  [(NSMutableArray *)outstandingTaskIDs removeObject:?];
}

- (void)addOutstandingTaskWithIdentifier:(unint64_t)a3
{
  outstandingTaskIDs = self->_outstandingTaskIDs;
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  [(NSMutableArray *)outstandingTaskIDs addObject:?];
}

- (void)enqueueTaskWithIdentifier:(unint64_t)a3
{
  identifiersToTasks = self->_identifiersToTasks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v14 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v6];

  v7 = v14;
  if (v14)
  {
    identifiersToTaskInfo = self->_identifiersToTaskInfo;
    v9 = [NSNumber numberWithUnsignedInteger:a3];
    v10 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v9];

    v11 = +[NDUserSyncStakeholder sharedStakeholder];
    v12 = [v10 uniqueIdentifier];
    [v11 restoredTaskActive:v12];

    v13 = +[NDUserSyncStakeholder sharedStakeholder];
    [v13 endBridgingUMTask:v10];

    v7 = v14;
  }
}

- (void)taskShouldSuspend:(unint64_t)a3
{
  identifiersToTasks = self->_identifiersToTasks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v6];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v9 = [NSNumber numberWithUnsignedInteger:a3];
  v10 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v9];

  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NDBackgroundSession *)self uuid];
    v13 = [v7 _loggableDescription];
    v17 = 138543618;
    v18 = v12;
    v19 = 2114;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ suspending", &v17, 0x16u);
  }

  [v7 suspend];
  identifiersToMonitors = self->_identifiersToMonitors;
  v15 = [NSNumber numberWithUnsignedInteger:a3];
  v16 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v15];

  [v16 taskWillSuspend];
  if (([v10 resumedAndWaitingForEarliestBeginDate] & 1) == 0)
  {
    sub_10006E370(2, self->_clientBundleID, self->_identifier, self->_monitoredAppBundleID, self->_secondaryID, v7, v10, 0);
  }

  [v10 setResumedAndWaitingForEarliestBeginDate:0];
}

- (void)taskShouldResume:(unint64_t)a3
{
  identifiersToTasks = self->_identifiersToTasks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v6];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v9 = [NSNumber numberWithUnsignedInteger:a3];
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
      v18 = [(NDBackgroundSession *)self uuid];
      v19 = [v10 _loggableDescription];
      *buf = 138544130;
      v25 = v18;
      v26 = 2114;
      v27 = v19;
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
      v13 = [v10 downloadFileURL];

      if (v13)
      {
        v14 = [v10 downloadFileURL];
        [NDFileUtilities removeStreamingZipModificationDate:v14];
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
    v23 = a3;
    v17 = dispatch_block_create_with_qos_class(0, v16, 0, v20);
    dispatch_async(workQueue, v17);
  }
}

- (void)handleWillBeginDelayedRequestForTaskWithIdentifier:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v11 = [NSNumber numberWithUnsignedInteger:a3];
  v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

  if (v9 && v12)
  {
    if (!self->_clientImplementsWillBeginDelayedRequest)
    {
      v14 = qword_1000EB210;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(NDBackgroundSession *)self uuid];
        v20 = [v9 _loggableDescription];
        *buf = 138543618;
        v45 = v19;
        v46 = 2114;
        v47 = v20;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ skipping delayed request callback - delegate not implemented", buf, 0x16u);
      }

      goto LABEL_24;
    }

    v13 = [v12 respondedToWillBeginDelayedRequestCallback];
    v14 = qword_1000EB210;
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        v16 = [(NDBackgroundSession *)self uuid];
        v17 = [v9 _loggableDescription];
        *buf = 138543618;
        v45 = v16;
        v46 = 2114;
        v47 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ already replied to delayed request callback - not calling again", buf, 0x16u);
      }

LABEL_24:

      v6[2](v6);
      goto LABEL_25;
    }

    if (v15)
    {
      v21 = [(NDBackgroundSession *)self uuid];
      v22 = [v9 _loggableDescription];
      *buf = 138543618;
      v45 = v21;
      v46 = 2114;
      v47 = v22;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ receiving delayed request callback", buf, 0x16u);
    }

    if (!self->_clientProxy && (!self->_sendsLaunchEvents || ![(NDApplication *)self->_clientApplication supportsWakes]))
    {
      v30 = qword_1000EB210;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [(NDBackgroundSession *)self uuid];
        v32 = [v9 _loggableDescription];
        *buf = 138543618;
        v45 = v31;
        v46 = 2114;
        v47 = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ client is not running and doesn't support wakes, continuing load for delayed request", buf, 0x16u);
      }

      [v12 setRespondedToWillBeginDelayedRequestCallback:1];
      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 identifier]);
      [(NDBackgroundSession *)self queueUpdatesForTask:v14 updateType:9 highPriority:0];
      goto LABEL_24;
    }

    v18 = [v12 currentRequest];
    v35 = _NSConcreteStackBlock;
    v36 = 3221225472;
    v37 = sub_100033098;
    v38 = &unk_1000D5750;
    v39 = self;
    v42 = a3;
    v40 = v12;
    v41 = v6;
    v23 = objc_retainBlock(&v35);
    v24 = [PendingCallback alloc];
    v43[0] = v18;
    v25 = objc_retainBlock(v23);
    v43[1] = v25;
    v26 = [NSArray arrayWithObjects:v43 count:2, v35, v36, v37, v38, v39];
    v27 = [(PendingCallback *)v24 initWithCallbackType:9 taskIdentifier:a3 args:v26];

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
    v18 = qword_1000EB210;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v33 = [(NDBackgroundSession *)self uuid];
      v34 = [v12 _loggableDescription];
      *buf = 138544130;
      v45 = v33;
      v46 = 2114;
      v47 = v34;
      v48 = 2112;
      v49 = v9;
      v50 = 2112;
      v51 = v12;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ cannot handle delayed request callback because task: %@ or taskInfo: %@ is nil", buf, 0x2Au);
    }
  }

LABEL_25:
}

- (void)handleEarliestBeginDateForTaskWithIdentifier:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v11 = [NSNumber numberWithUnsignedInteger:a3];
  v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

  if (([v12 resumedAndWaitingForEarliestBeginDate] & 1) == 0)
  {
    v13 = [v9 earliestBeginDate];

    v14 = qword_1000EB210;
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        v16 = [(NDBackgroundSession *)self uuid];
        v17 = [v12 _loggableDescription];
        v18 = [v9 earliestBeginDate];
        *buf = 138543874;
        v37 = v16;
        v38 = 2114;
        v39 = v17;
        v40 = 2114;
        v41 = v18;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ should not begin before %{public}@", buf, 0x20u);
      }

      v19 = [v9 earliestBeginDate];
      [v19 timeIntervalSinceNow];
      v21 = v20;

      if (v21 <= 0.0)
      {
        v28 = qword_1000EB210;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [(NDBackgroundSession *)self uuid];
          v30 = [v12 _loggableDescription];
          *buf = 138543618;
          v37 = v29;
          v38 = 2114;
          v39 = v30;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ can begin immediately - begin date is in past", buf, 0x16u);
        }

        v6[2](v6, 0);
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
        v33 = self;
        v35 = a3;
        v34 = v6;
        v25 = dispatch_block_create_with_qos_class(0, v24, 0, v31);
        dispatch_after(v22, workQueue, v25);
      }
    }

    else
    {
      if (v15)
      {
        v26 = [(NDBackgroundSession *)self uuid];
        v27 = [v12 _loggableDescription];
        *buf = 138543618;
        v37 = v26;
        v38 = 2114;
        v39 = v27;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ has not requested a begin delay", buf, 0x16u);
      }

      v6[2](v6, 0);
    }
  }
}

- (void)cancelMonitorForTask:(unint64_t)a3
{
  identifiersToMonitors = self->_identifiersToMonitors;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v9 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v6];

  [v9 cancel];
  v7 = self->_identifiersToMonitors;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)v7 removeObjectForKey:v8];
}

- (BOOL)currentDiscretionaryStatus:(id)a3 withOptionalTaskInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 _propertyForKey:@"_NSURLRequestIsDiscretionaryOverrideValue"];
    if (v8)
    {
      v9 = +[NSXPCConnection currentConnection];
      v10 = sub_100008D00(v9, @"com.apple.private.nsurlsession.set-discretionary-override-value");

      if (v10)
      {
        v11 = qword_1000EB210;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [(NDBackgroundSession *)self uuid];
          if (v7)
          {
            v13 = [v7 _loggableDescription];
          }

          else
          {
            v13 = @"New task";
          }

          v36 = [(NDApplication *)self->_clientApplication bundleIdentifier];
          v41 = 138544130;
          if ([(NDApplication *)v8 BOOLValue])
          {
            v37 = 89;
          }

          else
          {
            v37 = 78;
          }

          v42 = v12;
          v43 = 2114;
          v44 = v13;
          v45 = 2114;
          v46 = v36;
          v47 = 1024;
          v48 = v37;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for %{public}@ is overriding discretionary status by request - forcing to %c", &v41, 0x26u);
          if (v7)
          {
          }
        }

        v15 = [(NDApplication *)v8 BOOLValue];
        goto LABEL_66;
      }
    }
  }

  if (!v7 || ![v7 discretionaryOverride])
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
      v24 = [(NSXPCConnection *)xpcConn _xpcConnection];
      if (xpc_connection_is_extension())
      {
        discretionary = self->_discretionary;

        if (!discretionary)
        {
          v26 = qword_1000EB210;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [(NDBackgroundSession *)self uuid];
            if (v7)
            {
              v28 = [v7 _loggableDescription];
            }

            else
            {
              v28 = @"Task <?>.<0>";
            }

            v35 = [(NDApplication *)self->_clientApplication bundleIdentifier];
            v41 = 138543874;
            v42 = v27;
            v43 = 2114;
            v44 = v28;
            v45 = 2114;
            v46 = v35;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ current discretionary status for %{public}@ is non-discretionary because the connected client is an extension", &v41, 0x20u);
            if (v7)
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
    v30 = [v29 isInSyncBubble];

    if (v30)
    {
      v26 = qword_1000EB210;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(NDBackgroundSession *)self uuid];
        if (v7)
        {
          v31 = [v7 _loggableDescription];
        }

        else
        {
          v31 = @"Task <?>.<0>";
        }

        v35 = [(NDApplication *)v8 bundleIdentifier];
        v41 = 138543874;
        v42 = v27;
        v43 = 2114;
        v44 = v31;
        v45 = 2114;
        v46 = v35;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ current discretionary status for %{public}@ is non-discretionary, since nsurlsessiond is running in EDU sync mode", &v41, 0x20u);
        if (v7)
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
          v32 = [(NDBackgroundSession *)self uuid];
          if (v7)
          {
            v33 = [v7 _loggableDescription];
          }

          else
          {
            v33 = @"Task <?>.<0>";
          }

          v38 = [(NDApplication *)v8 bundleIdentifier];
          v39 = self->_discretionary;
          v41 = 138544130;
          v42 = v32;
          v43 = 2114;
          v44 = v33;
          v45 = 2114;
          v46 = v38;
          v47 = 1024;
          v48 = v39;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ current discretionary status for %{public}@ is discretionary (opt-in: %d)", &v41, 0x26u);
          if (v7)
          {
          }
        }

        v15 = 1;
        goto LABEL_65;
      }

      v26 = qword_1000EB210;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(NDBackgroundSession *)self uuid];
        if (v7)
        {
          v34 = [v7 _loggableDescription];
        }

        else
        {
          v34 = @"Task <?>.<0>";
        }

        v35 = [(NDApplication *)v8 bundleIdentifier];
        v41 = 138543874;
        v42 = v27;
        v43 = 2114;
        v44 = v34;
        v45 = 2114;
        v46 = v35;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ current discretionary status for %{public}@ is non-discretionary", &v41, 0x20u);
        if (v7)
        {
        }

        goto LABEL_63;
      }
    }

LABEL_64:
    v15 = 0;
LABEL_65:

    goto LABEL_66;
  }

  v14 = [v7 discretionaryOverride];
  v15 = v14 == 1;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(NDBackgroundSession *)self uuid];
    v17 = [v7 _loggableDescription];
    v18 = [(NDApplication *)self->_clientApplication bundleIdentifier];
    v19 = v18;
    v41 = 138544130;
    if (v14 == 1)
    {
      v20 = 89;
    }

    else
    {
      v20 = 78;
    }

    v42 = v16;
    v43 = 2114;
    v44 = v17;
    v45 = 2114;
    v46 = v18;
    v47 = 1024;
    v48 = v20;
    _os_log_impl(&_mh_execute_header, &v8->super, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ for %{public}@ is overriding discretionary status - forcing to %c", &v41, 0x26u);
  }

LABEL_66:

  return v15;
}

- (int64_t)priorityForDiscretionaryStatus:(BOOL)a3
{
  if (a3)
  {
    return 600;
  }

  else
  {
    return 300;
  }
}

- (void)fillInByteCountsForTaskInfo:(id)a3 withTaskID:(id)a4
{
  v7 = a3;
  v6 = [(NSMutableDictionary *)self->_identifiersToTasks objectForKeyedSubscript:a4];
  [v7 setCountOfBytesSent:{objc_msgSend(v6, "countOfBytesSent")}];
  [v7 setCountOfBytesReceived:{objc_msgSend(v6, "countOfBytesReceived")}];
  [v7 setCountOfBytesExpectedToSend:{objc_msgSend(v6, "countOfBytesExpectedToSend")}];
  [v7 setCountOfBytesExpectedToReceive:{objc_msgSend(v6, "countOfBytesExpectedToReceive")}];
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

- (void)reconnectClient:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100034B2C;
  v26[3] = &unk_1000D5F80;
  v26[4] = self;
  v8 = v6;
  v27 = v8;
  v9 = v7;
  v28 = v9;
  v10 = objc_retainBlock(v26);
  clientApplication = self->_clientApplication;
  identifier = self->_identifier;
  v13 = [(NDBackgroundSession *)self uuid];
  v14 = [(NDApplication *)clientApplication isHandlingBackgroundURLSessionWithIdentifier:identifier withSessionUUID:v13];

  LOBYTE(identifier) = self->_hasBeenSignalledToDeliverPendingEvents;
  v15 = qword_1000EB210;
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if ((identifier & 1) != 0 || v14 != 1)
  {
    if (v16)
    {
      v22 = [(NDBackgroundSession *)self uuid];
      v24 = self->_identifier;
      clientBundleID = self->_clientBundleID;
      hasBeenSignalledToDeliverPendingEvents = self->_hasBeenSignalledToDeliverPendingEvents;
      *buf = 138544386;
      v30 = v22;
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
      v17 = [(NDBackgroundSession *)self uuid];
      v19 = self->_identifier;
      v18 = self->_clientBundleID;
      *buf = 138543874;
      v30 = v17;
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
    v4 = [(NDBackgroundSession *)self uuid];
    v5 = v4;
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
    v18 = v4;
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
          v10 = [(NSMutableDictionary *)self->_identifiersToTasks objectForKeyedSubscript:v8];
          v11 = [v10 error:NSURLErrorDomain code:-997];
          [v10 cancel_with_error:v11];
          goto LABEL_8;
        }

        if (([v9 hasStarted] & 1) == 0)
        {
          if ([(NSString *)self->_clientBundleID isEqualToString:@"com.apple.mobileassetd"])
          {
            v10 = [(NSMutableDictionary *)self->_identifiersToTasks objectForKeyedSubscript:v8];
            v12 = qword_1000EB210;
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v20 = [(NDBackgroundSession *)self uuid];
              v17 = [v9 _loggableDescription];
              *buf = v19;
              v26 = v20;
              v27 = 2114;
              v28 = v17;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ not resumed but client disconnected, terminating it with timeout", buf, 0x16u);
            }

            v11 = [v10 resourceTimeoutError];
            [v10 cancel_with_error:v11];
LABEL_8:
          }

          else
          {
            v13 = qword_1000EB210;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v15 = [(NDBackgroundSession *)self uuid];
              v16 = [v9 _loggableDescription];
              *buf = v19;
              v26 = v15;
              v27 = 2114;
              v28 = v16;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ not resumed but client disconnected, resuming it implicitly", buf, 0x16u);
            }

            v14 = [v9 identifier];
            v10 = [v9 additionalProperties];
            [(NDBackgroundSession *)self resumeTaskWithIdentifier:v14 withProperties:v10];
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

- (BOOL)finalizeTaskCompletionWithSuppressedWake:(BOOL)a3
{
  if (![(NDBackgroundSession *)self sessionHasOutstandingTasks]&& ![(NDBackgroundSession *)self clientIsActive])
  {
    if (!a3)
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

- (void)removeUploadFileForTaskInfo:(id)a3
{
  v3 = [a3 fileURL];
  [NDFileUtilities removeItemAtURL:?];
}

- (void)removeDownloadFileForTaskInfo:(id)a3
{
  v7 = a3;
  v3 = [v7 pathToDownloadTaskFile];
  if (v3 || ([v7 additionalProperties], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", @"pathToDownloadTaskFile"), v3 = objc_claimAutoreleasedReturnValue(), v4, v3))
  {
    [NDFileUtilities removeItemAtPath:v3];
  }

  else
  {
    v5 = [v7 downloadFileURL];

    if (v5)
    {
      v6 = [v7 downloadFileURL];
      [NDFileUtilities removeItemAtURL:v6];
    }

    v3 = 0;
  }
}

- (BOOL)retryTask:(id)a3 originalError:(id)a4 transactionMetrics:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NDBackgroundSession *)self restoreInProgressTask:v8];
  if (v11)
  {
    v12 = [v8 taskDescription];
    [v11 setTaskDescription:v12];

    v13 = [v8 earliestBeginDate];
    [v11 setEarliestBeginDate:v13];

    [v11 setCountOfBytesClientExpectsToSend:{objc_msgSend(v8, "countOfBytesClientExpectsToSend")}];
    [v11 setCountOfBytesClientExpectsToReceive:{objc_msgSend(v8, "countOfBytesClientExpectsToReceive")}];
    v14 = [v8 originalRequest];
    [v11 setOriginalRequest:v14];

    [v11 setTaskIdentifier:{objc_msgSend(v8, "identifier")}];
    v15 = [v8 uniqueIdentifier];
    [v11 set_uniqueIdentifier:v15];

    v16 = [v8 storagePartitionIdentifier];
    [v11 set_storagePartitionIdentifier:v16];

    v17 = [v8 pathToDownloadTaskFile];
    [v11 set_pathToDownloadTaskFile:v17];

    [v11 setState:1];
    [v8 creationTime];
    [v11 setStartTime:?];
    sub_100008C24(v11, [v8 basePriority], self->_monitoredApplication);
    [v8 loadingPriority];
    [v11 set_loadingPriority:?];
    [v11 set_bytesPerSecondLimit:{objc_msgSend(v8, "bytesPerSecondLimit")}];
    [v11 set_expectedProgressTarget:{objc_msgSend(v8, "expectedProgressTarget")}];
    [v11 set_TLSMinimumSupportedProtocolVersion:{objc_msgSend(v8, "_TLSMinimumSupportedProtocolVersion")}];
    [v11 set_TLSMaximumSupportedProtocolVersion:{objc_msgSend(v8, "_TLSMaximumSupportedProtocolVersion")}];
    [v11 set_requiresPowerPluggedIn:{objc_msgSend(v8, "_requiresPowerPluggedIn")}];
    v18 = [v11 _extractor];

    if (!v18)
    {
      v19 = [v8 _extractor];
      [v11 set_extractor:v19];
    }

    [v11 set_hasSZExtractor:{objc_msgSend(v8, "_hasSZExtractor")}];
    [v11 set_doesSZExtractorConsumeExtractedData:{objc_msgSend(v8, "_doesSZExtractorConsumeExtractedData")}];
    v20 = [v8 taskMetrics];
    [v11 set_metrics:v20];

    [v8 setTaskMetrics:0];
    v21 = [v8 additionalProperties];

    if (v21)
    {
      [(NDBackgroundSession *)self configureAdditionalPropertiesOnTask:v11 taskInfo:v8];
    }

    -[NDBackgroundSession setupDASPropertiesOnTask:taskInfo:discretionaryStatus:](self, "setupDASPropertiesOnTask:taskInfo:discretionaryStatus:", v11, v8, [v8 isDiscretionary]);
    identifiersToTasks = self->_identifiersToTasks;
    v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 identifier]);
    [(NSMutableDictionary *)identifiersToTasks setObject:v11 forKeyedSubscript:v23];

    v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 identifier]);
    [(NSMutableDictionary *)self->_tasksToIdentifiers setObject:v24 forKeyedSubscript:v11];

    [v11 startResourceTimer];
    if ([v8 taskKind] == 2 || objc_msgSend(v8, "taskKind") == 1 && (objc_msgSend(v8, "fileURL"), v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
    {
      v25 = [(NDBackgroundSession *)self clientErrorForError:v9];
      -[NSXPCProxyCreating willRetryBackgroundDataTask:withError:transactionMetrics:](self->_clientProxy, "willRetryBackgroundDataTask:withError:transactionMetrics:", [v8 identifier], v25, v10);
    }

    -[NDBackgroundSession requeueTask:skipResume:](self, "requeueTask:skipResume:", [v8 identifier], 1);
    v27 = [v9 domain];
    if ([v27 isEqualToString:@"_nsurlsessiondErrorDomain"])
    {
      v28 = [v9 code];

      if (v28 == 3)
      {
        v29 = +[NDStatusMonitor sharedMonitor];
        [v29 performCallbackAfterNetworkChangedEvent:self identifier:objc_msgSend(v8 numberOfPreviousRetries:{"identifier"), objc_msgSend(v8, "lowThroughputTimerRetryCount")}];

        [v8 setLowThroughputTimerRetryCount:{objc_msgSend(v8, "lowThroughputTimerRetryCount") + 1}];
        goto LABEL_19;
      }
    }

    else
    {
    }

    v30 = [v9 domain];
    v31 = [v30 isEqualToString:@"_nsurlsessiondErrorDomain"];

    v32 = 1.0;
    if ((v31 & 1) == 0)
    {
      v33 = [v8 retryCount];
      [v8 setRetryCount:v33 + 1];
      v32 = exp2(v33);
    }

    v34 = fmin(v32, 1800.0);
    v35 = qword_1000EB210;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [(NDBackgroundSession *)self uuid];
      v37 = [v8 _loggableDescription];
      v40 = 138543874;
      v41 = v36;
      v42 = 2114;
      v43 = v37;
      v44 = 2048;
      v45 = v34;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ will retry after %lld seconds", &v40, 0x20u);
    }

    v38 = +[NDStatusMonitor sharedMonitor];
    [v38 performCallbackAfterNetworkChangedEvent:self identifier:objc_msgSend(v8 delay:{"identifier"), v34}];
  }

LABEL_19:

  return v11 != 0;
}

- (void)statusMonitor:(id)a3 callbackForIdentifier:(unint64_t)a4 networkChanged:(BOOL)a5
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035BE0;
  block[3] = &unk_1000D5640;
  block[4] = self;
  block[5] = a4;
  v7 = a5;
  dispatch_async(workQueue, block);
}

- (id)clientErrorForError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_13;
  }

  if (sub_100008B54(v3))
  {
    v5 = [v4 userInfo];
    if (v5)
    {
      v6 = [v4 userInfo];
      v7 = [v6 mutableCopy];
    }

    else
    {
      v7 = objc_opt_new();
    }

    v10 = sub_100008BA4(v4);
    if (v10)
    {
      [v7 setObject:v10 forKeyedSubscript:NSURLErrorBackgroundTaskCancelledReasonKey];
    }

    v11 = [NSURLError errorWithDomain:NSURLErrorDomain code:-999 userInfo:v7];
  }

  else
  {
    objc_opt_class();
    v8 = v4;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_13;
    }

    v7 = [v4 domain];
    v9 = [v4 code];
    v10 = [v4 userInfo];
    v11 = [NSURLError errorWithDomain:v7 code:v9 userInfo:v10];
  }

  v8 = v11;

LABEL_13:

  return v8;
}

- (id)restoreTasks:(BOOL *)a3
{
  v5 = +[NSMutableArray array];
  if (self->_hasSqliteSupport)
  {
    v6 = [(NDBackgroundSession *)self restoreTasksFromSqliteDB:v5];
  }

  else
  {
    v7 = [(NDBackgroundSession *)self tasksArchivePath];
    v8 = sub_100008D9C(NSKeyedUnarchiver, v7);
    v6 = [(NDBackgroundSession *)self restoreTasksFromArchivedInfo:v8];
  }

  v9 = [(NSMutableDictionary *)self->_identifiersToTaskInfo count];
  if (!v9)
  {
    [(NDBackgroundSession *)self cleanupSessionWithCompletionHandler:0];
  }

  if (a3)
  {
    *a3 = v9 == 0;
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

- (id)restoreTasksFromArchivedInfo:(id)a3
{
  v4 = a3;
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
  v6 = v4;
  v12 = v6;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];
  v7 = v12;
  v8 = v5;

  _Block_object_dispose(v14, 8);

  return v8;
}

- (id)restoreTasksFromSqliteDB:(id)a3
{
  v55 = a3;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NDBackgroundSession *)self uuid];
    *buf = 138543362;
    v65 = v5;
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
          v15 = [*(*(&v60 + 1) + 8 * v10) downloadFileURL];
          v16 = v15 == 0;

          if (!v16)
          {
            v17 = [v14 downloadFileURL];
            v18 = +[Daemon sharedDaemon];
            if (([v18 isPrivileged]& 1) != 0)
            {
              goto LABEL_17;
            }

            v19 = [v17 path];
            v20 = [(NSURL *)self->_downloadDirectory path];
            v21 = [v19 hasPrefix:v20];

            if ((v21 & 1) == 0)
            {
              v31 = qword_1000EB210;
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = [(NDBackgroundSession *)self uuid];
                clientBundleID = self->_clientBundleID;
                v34 = [(NSURL *)self->_downloadDirectory path];
                v35 = [v17 path];
                *buf = 138544130;
                v65 = v32;
                v66 = 2114;
                v67 = clientBundleID;
                v68 = 2112;
                v69 = v34;
                v70 = 2112;
                v71 = v35;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Download directory for bundle %{public}@ has moved to %@, but saved download file path is %@. Need to fix download path", buf, 0x2Au);
              }

              downloadDirectory = self->_downloadDirectory;
              v37 = [v17 lastPathComponent];
              v38 = [(NSURL *)downloadDirectory URLByAppendingPathComponent:v37];
              [v14 setDownloadFileURL:v38];

              v18 = qword_1000EB210;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v39 = [(NDBackgroundSession *)self uuid];
                v40 = [v14 downloadFileURL];
                v41 = [v40 path];
                *buf = v52;
                v65 = v39;
                v66 = 2112;
                v67 = v41;
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
            v23 = [v14 currentRequest];
            v24 = [v23 URL];
            v25 = [NSURLError _web_errorWithDomain:NSURLErrorDomain code:-997 URL:v24];
            [v14 setError:v25];

            v26 = qword_1000EB210;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v45 = [(NDBackgroundSession *)self uuid];
              v46 = [v14 _loggableDescription];
              v47 = [v14 error];
              v48 = [v14 error];
              v49 = [v48 code];
              *buf = 138544130;
              v65 = v45;
              v66 = 2114;
              v67 = v46;
              v68 = 2112;
              v69 = v47;
              v70 = 2048;
              v71 = v49;
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
                v29 = [v14 _loggableDescription];
                *buf = 138543362;
                v65 = v29;
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
            [v55 addObject:v22];
            v30 = qword_1000EB210;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v42 = [(NDBackgroundSession *)self uuid];
              identifier = self->_identifier;
              v43 = self->_clientBundleID;
              *buf = 138544130;
              v65 = v42;
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

- (id)restoreTask:(id)a3 isOutstanding:(BOOL *)a4
{
  v6 = a3;
  *a4 = 1;
  if ([v6 state] == 2)
  {
    [v6 setState:3];
    v7 = [v6 currentRequest];
    v8 = [v7 URL];
    v9 = [NSURLError _web_errorWithDomain:NSURLErrorDomain code:-999 URL:v8];
    [v6 setError:v9];
  }

  if ([v6 state] == 3)
  {
    *a4 = 0;
    v10 = [(NDBackgroundSession *)self restoreCompletedTask:v6];
  }

  else
  {
    if (![v6 hasStarted])
    {
      v13 = qword_1000EB210;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = [(NDBackgroundSession *)self uuid];
        v21 = [v6 _loggableDescription];
        *buf = 138543618;
        v27 = v20;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ not restoring, which had never been started", buf, 0x16u);
      }

      v14 = [v6 bundleID];
      v15 = [v14 isEqualToString:@"com.apple.mobileassetd"];

      if (v15)
      {
        v16 = [0 resourceTimeoutError];
        workQueue = self->_workQueue;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_1000377CC;
        v22[3] = &unk_1000D5370;
        v22[4] = self;
        v23 = v6;
        v24 = 0;
        v25 = v16;
        v18 = v16;
        dispatch_async(workQueue, v22);
      }

      goto LABEL_13;
    }

    v10 = [(NDBackgroundSession *)self restoreInProgressTask:v6];
  }

  v11 = v10;
  if (v10)
  {
    sub_100008C24(v10, [v6 basePriority], self->_monitoredApplication);
    [(NDBackgroundSession *)self configureTask:v11 withTaskInfo:v6];
    [v6 loadingPriority];
    [v11 set_loadingPriority:?];
    [v11 set_bytesPerSecondLimit:{objc_msgSend(v6, "bytesPerSecondLimit")}];
    [v11 set_expectedProgressTarget:{objc_msgSend(v6, "expectedProgressTarget")}];
    v12 = [v6 originalRequest];
    [v11 setOriginalRequest:v12];

    [v6 creationTime];
    [v11 setStartTime:?];
    [v11 set_TLSMinimumSupportedProtocolVersion:{objc_msgSend(v6, "_TLSMinimumSupportedProtocolVersion")}];
    [v11 set_TLSMaximumSupportedProtocolVersion:{objc_msgSend(v6, "_TLSMaximumSupportedProtocolVersion")}];
    [v11 set_requiresPowerPluggedIn:{objc_msgSend(v6, "_requiresPowerPluggedIn")}];
    goto LABEL_14;
  }

LABEL_13:
  v11 = 0;
  *a4 = 0;
LABEL_14:

  return v11;
}

- (id)restoreCompletedTask:(id)a3
{
  v4 = a3;
  if ([v4 taskKind])
  {
    if ([v4 taskKind] == 1)
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

  v38 = -[NDBackgroundSession sessionForDiscretionaryStatus:](self, "sessionForDiscretionaryStatus:", [v4 isDiscretionary]);
  v6 = objc_alloc(objc_getClass(v5));
  v7 = [v38 defaultTaskGroup];
  v8 = [v6 initWithBackgroundTaskInfo:v4 taskGroup:v7];

  v40 = v8;
  [(NDBackgroundSession *)self configureAdditionalPropertiesOnTask:v8 taskInfo:v4];
  v9 = [v4 pathToDownloadTaskFile];
  if (v9 || ([v4 additionalProperties], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", @"pathToDownloadTaskFile"), v9 = objc_claimAutoreleasedReturnValue(), v10, v9))
  {
    v11 = v9;
    v37 = v11;
  }

  else
  {
    v34 = [v4 downloadFileURL];
    v11 = [v34 path];

    v37 = 0;
    v39 = 0;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  v12 = +[NSFileManager defaultManager];
  v13 = [v12 fileExistsAtPath:v11];

  if (v13)
  {
    v14 = qword_1000EB210;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v35 = [(NDBackgroundSession *)self uuid];
      v36 = [v4 _loggableDescription];
      *buf = 138543874;
      v44 = v35;
      v45 = 2114;
      v46 = v36;
      v47 = 2112;
      v48 = v11;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "NDSession <%{public}@> %{public}@ is being restored as completed with download file still at %@", buf, 0x20u);
    }

    v15 = [PendingCallback alloc];
    v16 = [v4 identifier];
    v42[0] = v4;
    v17 = [v40 response];
    v18 = v17;
    if (!v17)
    {
      v18 = +[NSNull null];
    }

    v42[1] = v18;
    v19 = [NSArray arrayWithObjects:v42 count:2];
    v20 = [(PendingCallback *)v15 initWithCallbackType:1 taskIdentifier:v16 args:v19];

    if (!v17)
    {
    }

    [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v20 wakeRequirement:0];
  }

  v39 = v11;
LABEL_18:
  v21 = objc_alloc_init(NSMutableDictionary);
  v22 = [v4 _backgroundTrailers];
  v23 = v22 == 0;

  if (!v23)
  {
    v24 = [v4 _backgroundTrailers];
    [v21 setObject:v24 forKeyedSubscript:@"trailers"];
  }

  v25 = [PendingCallback alloc];
  v26 = [v4 identifier];
  v27 = [v4 error];
  v28 = v27;
  if (!v27)
  {
    v28 = +[NSNull null];
  }

  v41[0] = v28;
  v29 = [v4 taskMetrics];
  v30 = v29;
  if (!v29)
  {
    v30 = +[NSNull null];
  }

  v41[1] = v30;
  v41[2] = v21;
  v31 = [NSArray arrayWithObjects:v41 count:3];
  v32 = [(PendingCallback *)v25 initWithCallbackType:0 taskIdentifier:v26 args:v31];

  if (!v29)
  {
  }

  if (!v27)
  {
  }

  [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v32 wakeRequirement:0];

  return v40;
}

- (id)restoreInProgressTask:(id)a3
{
  v5 = a3;
  v6 = [(NDBackgroundSession *)self adjustDiscretionaryStatusForTaskInfo:v5];
  if ([v5 taskKind])
  {
    goto LABEL_31;
  }

  v13 = [v5 response];
  if (!v13)
  {
    goto LABEL_31;
  }

  v14 = [v5 downloadFileURL];

  if (!v14)
  {
    goto LABEL_31;
  }

  [(NDBackgroundSession *)self ensureSessionDownloadDirectoryExists];
  v15 = objc_alloc(objc_getClass("__NSCFLocalDownloadTask"));
  v16 = [v6 defaultTaskGroup];
  v17 = [v15 initWithBackgroundTaskInfo:v5 taskGroup:v16];

  [(NDBackgroundSession *)self configureAdditionalPropertiesOnTask:v17 taskInfo:v5];
  v18 = [(NDBackgroundSession *)self requestWithAdjustedWindowForTaskInfo:v5];
  [v17 updateCurrentRequest:v18];

  v19 = [v5 pathToDownloadTaskFile];
  if (v19 || ([v5 additionalProperties], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "objectForKeyedSubscript:", @"pathToDownloadTaskFile"), v19 = objc_claimAutoreleasedReturnValue(), v20, v19))
  {
    v21 = 0;
    v22 = v19;
  }

  else
  {
    v3 = [v5 downloadFileURL];
    v22 = [v3 path];
    v19 = 0;
    v21 = 1;
  }

  v23 = [v17 createResumeInformation:v22];
  if (v21)
  {
  }

  if (v23)
  {
    v24 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v24 encodeObject:v23 forKey:@"NSKeyedArchiveRootObjectKey"];
    v25 = [v24 encodedData];
    if (v25)
    {
      v11 = [v6 downloadTaskWithResumeData:v25];
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
      v29 = [(NDBackgroundSession *)self uuid];
      v30 = [v5 _loggableDescription];
      *buf = 138543618;
      v32 = v29;
      v33 = 2114;
      v34 = v30;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ could not create resume data. The server might not support resumable downloads. Will retry full download", buf, 0x16u);
    }

    v11 = 0;
  }

  if (v11)
  {
    v26 = qword_1000EB210;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(NDBackgroundSession *)self uuid];
      v28 = [v11 _loggableDescription];
      *buf = 138543618;
      v32 = v27;
      v33 = 2114;
      v34 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ download created from resume data", buf, 0x16u);
    }
  }

  else
  {
LABEL_31:
    if (![v5 taskKind])
    {
      v7 = [v5 additionalProperties];
      v8 = [v7 objectForKeyedSubscript:@"pathToDownloadTaskFile"];
      v9 = v8;
      v10 = [v8 UTF8String];

      if (v10)
      {
        unlink(v10);
      }
    }

    v11 = [(NDBackgroundSession *)self createNewTaskFromInfo:v5];
  }

  return v11;
}

- (id)createNewTaskFromInfo:(id)a3
{
  v4 = a3;
  [(NDBackgroundSession *)self removeDownloadFileForTaskInfo:v4];
  v5 = [(NDBackgroundSession *)self adjustDiscretionaryStatusForTaskInfo:v4];
  v6 = [(NDBackgroundSession *)self requestWithAdjustedWindowForTaskInfo:v4];
  if (!v6)
  {
    v14 = qword_1000EB210;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NDBackgroundSession *)self uuid];
      v16 = [v4 _loggableDescription];
      v17 = [v4 currentRequest];
      v34 = 138543874;
      v35 = v15;
      v36 = 2114;
      v37 = v16;
      v38 = 2112;
      v39 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ couldn't create new task becuase adjusted request is nil, taskInfo.currentRequest = %@", &v34, 0x20u);
    }

    v8 = 0;
    goto LABEL_18;
  }

  if ([v4 taskKind])
  {
    if ([v4 taskKind] == 1)
    {
      v7 = [v4 fileURL];
      v8 = [v5 uploadTaskWithRequest:v6 fromFile:v7];

      v9 = [v4 resumableUploadData];

      if (v9)
      {
        Class = objc_getClass("__NSCFResumableUploadState");
        v11 = [v4 resumableUploadData];
        v12 = [v4 originalRequest];
        v13 = [(objc_class *)Class rusWithResumeData:v11 originalRequest:v12];

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
    v19 = [v4 downloadFileURL];
    v20 = [v19 path];
  }

  else
  {
    v20 = 0;
  }

  [(NDBackgroundSession *)self ensureSessionDownloadDirectoryExists];
  v21 = [v5 _downloadTaskWithRequest:v6 downloadFilePath:v20];
  v8 = v21;
  if (v21)
  {
    v22 = [v21 downloadFile];
    v23 = [v22 path];

    if (v23)
    {
      v24 = [v8 downloadFile];
      v25 = [v24 path];
      v26 = [NSURL fileURLWithPath:v25];
      [v4 setDownloadFileURL:v26];

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
    v30 = [(NDBackgroundSession *)self uuid];
    v31 = [v4 _loggableDescription];
    v32 = [v8 downloadFile];
    v33 = [v32 path];
    v34 = 138544130;
    v35 = v30;
    v36 = 2114;
    v37 = v31;
    v38 = 2112;
    v39 = v8;
    v40 = 2112;
    v41 = v33;
    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> %{public}@ couldn't create new task. task: %@, path: %@", &v34, 0x2Au);
  }

  v27 = 0;
LABEL_19:

  return v27;
}

- (void)configureTask:(id)a3 withTaskInfo:(id)a4
{
  v14 = a3;
  v6 = a4;
  [v14 setTaskIdentifier:{objc_msgSend(v6, "identifier")}];
  v7 = [v6 taskDescription];
  [v14 setTaskDescription:v7];

  v8 = [v6 earliestBeginDate];
  [v14 setEarliestBeginDate:v8];

  [v14 setCountOfBytesClientExpectsToSend:{objc_msgSend(v6, "countOfBytesClientExpectsToSend")}];
  [v14 setCountOfBytesClientExpectsToReceive:{objc_msgSend(v6, "countOfBytesClientExpectsToReceive")}];
  v9 = [v6 uniqueIdentifier];
  [v14 set_uniqueIdentifier:v9];

  v10 = [v6 storagePartitionIdentifier];
  [v14 set_storagePartitionIdentifier:v10];

  v11 = [v6 pathToDownloadTaskFile];
  [v14 set_pathToDownloadTaskFile:v11];

  v12 = [v6 taskMetrics];

  if (v12)
  {
    v13 = [v6 taskMetrics];
    [v14 set_metrics:v13];

    [v6 setTaskMetrics:0];
  }

  [(NDBackgroundSession *)self configureAdditionalPropertiesOnTask:v14 taskInfo:v6];
}

- (void)configureAdditionalPropertiesOnTask:(id)a3 taskInfo:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v6 additionalProperties];

  if (v7)
  {
    v8 = [v6 additionalProperties];
    v9 = [v8 objectForKeyedSubscript:@"effectiveConfig"];
    if (v9)
    {
      v10 = -[NDBackgroundSession configurationWithClientConfiguration:discretionary:](self, "configurationWithClientConfiguration:discretionary:", v9, [v6 isDiscretionary]);
      v11 = [v8 mutableCopy];
      [v11 setObject:v10 forKeyedSubscript:@"effectiveConfig"];

      v8 = v11;
    }

    v12 = [v6 additionalProperties];
    v13 = [v12 objectForKeyedSubscript:@"TimeoutIntervalForResource"];

    if (v13)
    {
      v14 = [v16 currentRequest];
      v15 = [(NDBackgroundSession *)self currentDiscretionaryStatus:v14 withOptionalTaskInfo:v6];

      [(NDBackgroundSession *)self setupDASPropertiesOnTask:v16 taskInfo:v6 discretionaryStatus:v15];
    }

    sub_100003A38(v16, v8);
  }
}

- (id)sanitizeTaskProperties:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [v4 objectForKeyedSubscript:@"effectiveConfig"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 _sourceApplicationBundleIdentifier];
    if (v8)
    {
      v9 = sub_100008D00(v5, @"com.apple.private.nsurlsession.impersonate");

      if ((v9 & 1) == 0)
      {
        [v7 set_sourceApplicationBundleIdentifier:0];
        v10 = qword_1000EB210;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v51 = [(NDBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543618;
          *(v60 + 4) = v51;
          WORD6(v60[0]) = 2112;
          *(v60 + 14) = @"com.apple.private.nsurlsession.impersonate";
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _sourceApplicationBundleIdentifier but is missing the %@ entitlement", v60, 0x16u);
        }
      }
    }

    v11 = [v7 _sourceApplicationSecondaryIdentifier];
    if (v11)
    {
      v12 = sub_100008D00(v5, @"com.apple.private.nsurlsession.impersonate");

      if ((v12 & 1) == 0)
      {
        [v7 set_sourceApplicationSecondaryIdentifier:0];
        v13 = qword_1000EB210;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v52 = [(NDBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543618;
          *(v60 + 4) = v52;
          WORD6(v60[0]) = 2112;
          *(v60 + 14) = @"com.apple.private.nsurlsession.impersonate";
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _sourceApplicationSecondaryIdentifier but is missing the %@ entitlement", v60, 0x16u);
        }
      }
    }

    v14 = [v7 _sourceApplicationAuditTokenData];
    if (v14)
    {
      v15 = sub_100008D00(v5, @"com.apple.private.nsurlsession.impersonate");

      if ((v15 & 1) == 0)
      {
        [v7 set_sourceApplicationAuditTokenData:0];
        v16 = qword_1000EB210;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v53 = [(NDBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543618;
          *(v60 + 4) = v53;
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
        v56 = [(NDBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = v56;
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
        v57 = [(NDBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = v57;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = @"com.apple.private.dark-wake-network-reachability";
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _allowsPowerNapScheduling but is missing the %@ entitlement", v60, 0x16u);
      }
    }

    v19 = [v7 _connectionPoolName];
    if (v19)
    {
      v20 = sub_100008D00(v5, @"com.apple.private.nsurlsession-allow-override-connection-pool");

      if ((v20 & 1) == 0)
      {
        [v7 set_connectionPoolName:0];
        v21 = qword_1000EB210;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v54 = [(NDBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543618;
          *(v60 + 4) = v54;
          WORD6(v60[0]) = 2112;
          *(v60 + 14) = @"com.apple.private.nsurlsession-allow-override-connection-pool";
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _connectionPoolName but is missing the %@ entitlement", v60, 0x16u);
        }
      }
    }

    v22 = [v7 _directoryForDownloadedFiles];
    if (v22)
    {
      v23 = +[Daemon sharedDaemon];
      v24 = [v23 isPrivileged];

      if ((v24 & 1) == 0)
      {
        v25 = [v7 _directoryForDownloadedFiles];
        if (v5)
        {
          [v5 auditToken];
        }

        else
        {
          memset(v60, 0, sizeof(v60));
        }

        v26 = [NDFileUtilities safeDirectoryForDownloads:v25 auditToken:v60];
        [v7 set_directoryForDownloadedFiles:v26];

        v27 = [v7 _directoryForDownloadedFiles];
        v28 = v27 == 0;

        if (v28)
        {
          v29 = qword_1000EB210;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v59 = [(NDBackgroundSession *)self uuid];
            LODWORD(v60[0]) = 138543362;
            *(v60 + 4) = v59;
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
        v58 = [(NDBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = v58;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = @"com.apple.private.nsurlsession.allow-duet-preauthorization";
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _duetPreauthorized but is missing the %@ entitlement", v60, 0x16u);
      }
    }

    v31 = [v7 _maximumWatchCellularTransferSize];
    if (v31)
    {
      v32 = sub_100008D00(v5, @"com.apple.private.nsurlsession.set-max-watch-cell-transfer-size");

      if ((v32 & 1) == 0)
      {
        [v7 set_maximumWatchCellularTransferSize:0];
        v33 = qword_1000EB210;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v55 = [(NDBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543362;
          *(v60 + 4) = v55;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _maximumWatchCellularTransferSize but is missing the necessary entitlement", v60, 0xCu);
        }
      }
    }

    if ((sub_100008D00(v5, @"get-task-allow") & 1) != 0 || (sub_100008D00(v5, @"com.apple.security.get-task-allow") & 1) != 0 || os_variant_allows_internal_security_policies())
    {
      v34 = [v5 processIdentifier];
    }

    else
    {
      v34 = 0;
    }

    [v7 set_pidForHAR:v34];
  }

  v35 = [v4 mutableCopy];
  v36 = [v4 objectForKeyedSubscript:@"pathToDownloadTaskFile"];
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
        v50 = [(NDBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = v50;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = v36;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _pathToDownloadTaskFile but is not allowed to create %@", v60, 0x16u);
      }
    }

    v42 = [v40 path];
    [v35 setObject:v42 forKeyedSubscript:@"pathToDownloadTaskFile"];
  }

  v43 = [v4 objectForKeyedSubscript:@"sourceApplicationBundleIdentifierForMobileAsset"];
  if (v43)
  {
    v44 = sub_100008D00(v5, @"com.apple.private.nsurlsession.impersonate");

    if ((v44 & 1) == 0)
    {
      v45 = qword_1000EB210;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v49 = [(NDBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = v49;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = @"com.apple.private.nsurlsession.impersonate";
        _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Client tried to set _sourceApplicationBundleIdentifier but is missing the %@ entitlement", v60, 0x16u);
      }

      [v35 setObject:0 forKeyedSubscript:@"sourceApplicationBundleIdentifierForMobileAsset"];
    }
  }

  v46 = [v4 objectForKeyedSubscript:@"SZExtractor"];
  if (v46)
  {
    v47 = [NSKeyedArchiver archivedDataWithRootObject:v46 requiringSecureCoding:1 error:0];
    [v35 setObject:v47 forKeyedSubscript:@"SerializedSZExtractor"];
    [v35 setObject:0 forKeyedSubscript:@"SZExtractor"];
  }

  return v35;
}

- (id)adjustDiscretionaryStatusForTaskInfo:(id)a3
{
  v4 = a3;
  [(NDBackgroundSession *)self updateTaskInfoBasedOnCurrentDiscretionaryStatus:v4];
  v5 = -[NDBackgroundSession sessionForDiscretionaryStatus:](self, "sessionForDiscretionaryStatus:", [v4 isDiscretionary]);

  return v5;
}

- (void)updateTaskInfoBasedOnCurrentDiscretionaryStatus:(id)a3
{
  v4 = a3;
  if (([v4 isDiscretionary] & 1) != 0 || objc_msgSend(v4, "mayBeDemotedToDiscretionary"))
  {
    v5 = [v4 currentRequest];
    v6 = [(NDBackgroundSession *)self currentDiscretionaryStatus:v5 withOptionalTaskInfo:v4];

    v7 = qword_1000EB210;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NDBackgroundSession *)self uuid];
      v9 = [v4 _loggableDescription];
      v10 = 138544130;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      v14 = 1024;
      v15 = [v4 isDiscretionary];
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> %{public}@ potentially discretionary, re-scheduling, was discretionary: %d, is now discretionary: %d", &v10, 0x22u);
    }

    [v4 setDiscretionary:v6];
    if (([v4 basePrioritySetExplicitly] & 1) == 0)
    {
      [v4 setBasePriority:{-[NDBackgroundSession priorityForDiscretionaryStatus:](self, "priorityForDiscretionaryStatus:", v6)}];
    }
  }
}

- (id)requestWithAdjustedWindowForTaskInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 currentRequest];
  v6 = [v5 mutableCopy];

  v7 = [v4 originalRequest];
  [v7 _timeWindowDuration];
  v9 = v8;

  v10 = [v4 originalRequest];
  [v10 _timeWindowDelay];
  v12 = v11;

  v13 = [v4 isDiscretionary];
  if (v9 == 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1)
  {
    v15 = [(NSURLSession *)self->_discretionaryPrioritySession configuration];
    [v15 timeoutIntervalForResource];
    [(NDBackgroundSession *)self defaultWindowDurationForResourceTimeout:?];
    v9 = v16;
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v18 = v17;
  [v4 creationTime];
  v20 = v18 - v19;
  if (v18 - v19 < 0.0)
  {
    v20 = 0.0;
    [v4 setCreationTime:v18];
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
    if ([v4 isDiscretionary])
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
    v25 = [(NDBackgroundSession *)self uuid];
    v26 = [v4 _loggableDescription];
    v28 = 138544386;
    v29 = v25;
    v30 = 2114;
    v31 = v26;
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

- (id)descriptionForRequest:(id)a3
{
  v3 = a3;
  [v3 _timeWindowDelay];
  if (v4 == 0.0 && ([v3 _timeWindowDuration], v5 == 0.0))
  {
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ [allowsCellularAccess: %d, allowsExpensiveAccess: %d, allowsConstrainedAccess: %d]", v3, [v3 allowsCellularAccess], objc_msgSend(v3, "allowsExpensiveNetworkAccess"), objc_msgSend(v3, "allowsConstrainedNetworkAccess"));
  }

  else
  {
    [v3 _timeWindowDelay];
    v7 = v6;
    [v3 _timeWindowDuration];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ [delay: %f, duration: %f, allowsCellularAccess: %d, allowsExpensiveAccess: %d, allowsConstrainedAccess: %d]", v3, v7, v8, [v3 allowsCellularAccess], objc_msgSend(v3, "allowsExpensiveNetworkAccess"), objc_msgSend(v3, "allowsConstrainedNetworkAccess"));
  }

  v10 = v9;

  return v10;
}

- (id)descriptionForTaskWithIdentifier:(unint64_t)a3
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
    [NSString stringWithFormat:@"Task <?>.<%lu>", a3];
  }
  v7 = ;

  return v7;
}

- (void)queueUpdatesForTask:(id)a3 updateType:(unint64_t)a4 highPriority:(BOOL)a5
{
  v8 = a3;
  workQueue = self->_workQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003A110;
  v11[3] = &unk_1000D5668;
  v11[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_async(workQueue, v11);
}

- (void)storeTaskInfoUpdates:(BOOL)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A304;
  block[3] = &unk_1000D5640;
  v8 = a3;
  *&block[5] = Current;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)tasksArchivePath
{
  v2 = [(NSURL *)self->_sessionDirectory URLByAppendingPathComponent:@"tasks.plist"];
  v3 = [v2 path];

  return v3;
}

- (void)obliterate
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NDBackgroundSession *)self uuid];
    identifier = self->_identifier;
    clientBundleID = self->_clientBundleID;
    *buf = 138543874;
    v20 = v4;
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

- (void)cleanupSessionWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!self->_cleanedUp)
  {
    self->_cleanedUp = 1;
    v5 = qword_1000EB210;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(NDBackgroundSession *)self uuid];
      v13 = 138543362;
      v14 = v6;
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
    [WeakRetained sessionCompleted:self withCompletionHandler:v4];

    v12 = +[Daemon sharedDaemon];
    [v12 releaseTransaction];
  }
}

- (void)clientApplicationWasReinstalled
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NDBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    *buf = 138543618;
    v32 = v4;
    v33 = 2114;
    v34 = clientBundleID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Application %{public}@ was reinstalled, adjusting download paths", buf, 0x16u);
  }

  v6 = [(NDBackgroundSession *)self setupDownloadDirectory];
  v24 = v6;
  if (v6)
  {
    v7 = v6;
    if (([v6 isEqual:self->_downloadDirectory] & 1) == 0)
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
              v13 = [v12 downloadFileURL];
              v14 = v13;
              if (v13)
              {
                v15 = [v13 lastPathComponent];
                v16 = [v24 URLByAppendingPathComponent:v15];
              }

              else
              {
                v16 = 0;
              }

              [v12 setDownloadFileURL:v16];
              v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 identifier]);
              [(NDBackgroundSession *)self queueUpdatesForTask:v17 updateType:3 highPriority:0];

              v18 = [(NSMutableDictionary *)self->_identifiersToTasks objectForKeyedSubscript:v11];
              v19 = [v16 path];
              v20 = [v18 downloadFile];
              [v20 setPath:v19];
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
      v22 = [(NDBackgroundSession *)self uuid];
      v23 = self->_clientBundleID;
      *buf = 138543618;
      v32 = v22;
      v33 = 2114;
      v34 = v23;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Couldn't find out download directory for re-installed application %{public}@. It must not have been re-installed properly. Obliterating session", buf, 0x16u);
    }

    v7 = 0;
    [(NDBackgroundSession *)self obliterate];
  }
}

- (void)backgroundUpdatesEnabledForApplication:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003ACBC;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (void)applicationWasSuspended:(id)a3 pid:(int)a4
{
  v6 = a3;
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AE50;
  block[3] = &unk_1000D5618;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(workQueue, block);
}

- (void)setXPCConnection:(id)a3
{
  v5 = a3;
  [v5 setUserInfo:self];
  objc_storeStrong(&self->_xpcConn, a3);
  self->_clientPID = [v5 processIdentifier];
  v6 = qword_1000EB210;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(NDBackgroundSession *)self uuid];
    xpcConn = self->_xpcConn;
    identifier = self->_identifier;
    clientBundleID = self->_clientBundleID;
    clientPID = self->_clientPID;
    *buf = 138544386;
    *&buf[4] = v7;
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

  v12 = [(NSXPCConnection *)self->_xpcConn _xpcConnection];
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
      v16 = [(NDBackgroundSession *)self uuid];
      v18 = self->_identifier;
      v17 = self->_clientBundleID;
      *buf = 138544130;
      *&buf[4] = v16;
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

- (id)sessionForDiscretionaryStatus:(BOOL)a3
{
  v3 = 8;
  if (a3)
  {
    v3 = 16;
  }

  return *(&self->super.isa + v3);
}

- (NDBackgroundSession)initWithConfiguration:(id)a3 bundleID:(id)a4 isSpringBoardApp:(BOOL)a5 downloadDirectory:(id)a6 options:(id)a7 clientProxy:(id)a8 delegate:(id)a9 workQueue:(id)a10 db:(id)a11
{
  v13 = a5;
  v16 = a3;
  v141 = a4;
  v144 = a7;
  v140 = a8;
  obj = a9;
  v137 = a10;
  v142 = a11;
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

  v19 = [v144 objectForKeyedSubscript:@"NDBackgroundSessionManagerKeySessionUUID"];
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
  objc_storeStrong(v17 + 34, a4);
  v23 = [v16 _sourceApplicationBundleIdentifier];
  if (v23)
  {
    v24 = [v16 _sourceApplicationBundleIdentifier];
    v25 = (v17 + 280);
  }

  else
  {
    v25 = (v17 + 280);
    v24 = *(v17 + 34);
  }

  v26 = *(v17 + 35);
  *(v17 + 35) = v24;

  v17[240] = 1;
  v27 = +[NSMutableDictionary dictionary];
  v28 = *(v17 + 22);
  *(v17 + 22) = v27;

  v139 = [[LSApplicationExtensionRecord alloc] initWithBundleIdentifier:*(v17 + 34) error:0];
  v29 = [v16 _sourceApplicationSecondaryIdentifier];
  v30 = *(v17 + 36);
  *(v17 + 36) = v29;

  v138 = [NDCloudContainer containerIDForPrimaryIdentifier:*(v17 + 35) secondaryIdentifier:*(v17 + 36)];
  if (v138)
  {
    v31 = [NDCloudContainer bundleIDForPrimaryIdentifier:*(v17 + 35) secondaryIdentifier:*(v17 + 36)];
    v32 = qword_1000EB210;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v17 uuid];
      v34 = *(v17 + 34);
      *buf = 138544130;
      v147 = v33;
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
    v40 = [v16 sharedContainerIdentifier];
    v41 = [NDFPProvider providerIDForBundle:v39 sharedContainerIdentifier:v40];

    if (v41)
    {
      v42 = [NDApplication fileProviderWithIdentifer:v41 applicationIdentifier:*v25];
      v43 = *v38;
      *v38 = v42;

      v44 = qword_1000EB210;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [v17 uuid];
        v46 = *(v17 + 34);
        v47 = *v25;
        *buf = 138544130;
        v147 = v45;
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
      v49 = [v17 uuid];
      v50 = *(v17 + 34);
      *buf = 138543618;
      v147 = v49;
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
    if (v13)
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
      if (v13)
      {
        if (v58)
        {
          v59 = [v17 uuid];
          v60 = *v25;
          *buf = 138543618;
          v147 = v59;
          v148 = 2114;
          v149 = v60;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Client %{public}@ is a SpringBoard application", buf, 0x16u);
        }
      }

      else if (v58)
      {
        v64 = [v17 uuid];
        v65 = *v25;
        *buf = 138543618;
        v147 = v64;
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
        v67 = [v17 uuid];
        v68 = *(v17 + 34);
        v69 = *v25;
        *buf = 138544130;
        v147 = v67;
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

  v70 = [v16 identifier];
  v71 = *(v17 + 33);
  *(v17 + 33) = v70;

  v72 = [v16 sharedContainerIdentifier];
  v73 = *(v17 + 38);
  *(v17 + 38) = v72;

  v74 = [NDFileUtilities sessionPath:*(v17 + 33) forBundleID:*(v17 + 34)];
  v75 = [NSURL fileURLWithPath:v74];
  v76 = *(v17 + 13);
  *(v17 + 13) = v75;

  v77 = [v16 _directoryForDownloadedFiles];
  v78 = v77;
  if (v77)
  {
    v79 = v77;
  }

  else
  {
    v79 = [v17 setupDownloadDirectory];
  }

  v80 = *(v17 + 14);
  *(v17 + 14) = v79;

  v81 = [*(v17 + 13) URLByAppendingPathComponent:@"Uploads"];
  v82 = *(v17 + 15);
  *(v17 + 15) = v81;

  if (*(v17 + 14))
  {
    objc_storeStrong(v17 + 24, a10);
    objc_storeStrong(v17 + 28, a8);
    v83 = [[NDCredentialStorage alloc] initWithDelegate:v17 forBundleID:*(v17 + 34)];
    v84 = *(v17 + 3);
    *(v17 + 3) = v83;

    v85 = [v17 configurationWithClientConfiguration:v16 discretionary:0];
    v136 = [v17 configurationWithClientConfiguration:v16 discretionary:1];
    [v85 set_clientIsNSURLSessiond:1];
    [v136 set_clientIsNSURLSessiond:1];
    v17[134] = [v16 isDiscretionary];
    if ([v16 sessionSendsLaunchEvents])
    {
      v86 = 1;
    }

    else
    {
      v86 = [v16 _sessionSendsLaunchOnDemandEvents];
    }

    v17[133] = v86;
    v89 = +[Daemon sharedDaemon];
    v90 = [v89 isInSyncBubble];

    if (v90)
    {
      v17[133] = 0;
    }

    v17[128] = [v16 _performsEVCertCheck];
    [v17 updateOptions:v144];
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

    v17[139] = v140 != 0;
    v17[184] = [v16 _allowsRetryForBackgroundDataTasks];
    if (v17[138])
    {
      v109 = 1;
    }

    else
    {
      v109 = [v16 _infersDiscretionaryFromOriginatingClient];
    }

    v17[138] = v109;
    *(v17 + 135) = 0;
    *(v17 + 38) = [v16 _neTrackerTCCResult];
    *(v17 + 39) = -1;
    [NDFileUtilities createDirectoryAtURL:*(v17 + 13)];
    [NDFileUtilities createDirectoryAtURL:*(v17 + 15)];
    if (*(v17 + 28))
    {
      v110 = [v16 copy];
      v111 = [v144 mutableCopy];
      [v111 setObject:*v133 forKeyedSubscript:@"NDBackgroundSessionManagerKeySessionUUID"];
      [v142 _updateConfigurationForBundleID:v141 sessionID:*(v17 + 33) with:v110];
      [v142 _updateOptionsForBundleID:v141 sessionID:*(v17 + 33) with:v111];
    }

    if (*v38)
    {
      [*v38 addObserver:v17];
    }

    objc_storeStrong(v17 + 29, a11);
    v112 = qword_1000EB210;
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      v134 = v85;
      v135 = [v17 uuid];
      v113 = *(v17 + 33);
      v114 = *(v17 + 34);
      v115 = *(v17 + 32);
      [v16 timeoutIntervalForResource];
      v117 = v116;
      [v16 timeoutIntervalForRequest];
      v119 = v118;
      v120 = [v16 allowsCellularAccess];
      v121 = [v16 allowsExpensiveNetworkAccess];
      v122 = [v16 allowsConstrainedNetworkAccess];
      v132 = [v16 _sourceApplicationBundleIdentifier];
      v131 = v122;
      v123 = v121;
      v124 = v120;
      v125 = [v16 _sourceApplicationSecondaryIdentifier];
      v126 = v17[240];
      v127 = [v16 allowsUltraConstrainedNetworkAccess];
      *buf = 138546434;
      v147 = v135;
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
      v165 = v132;
      v166 = 2114;
      v167 = v125;
      v168 = 1024;
      v169 = v126;
      v170 = 1024;
      v171 = v127;
      _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "NDSession <%{public}@> Session <%{public}@> is for <%{public}@>.<%@> using resource timeout: %f, request timeout: %f allowsCellularAccess: %d, allowsExpensiveAccess: %d, allowsConstrainedAccess: %d, _sourceApplicationBundleIdentifier: %{public}@, _sourceApplicationSecondaryIdentifier: %{public}@, hasSqliteSupport: %u, allowsUltraConstrainedAccess: %d", buf, 0x70u);

      v85 = v134;
    }

    goto LABEL_67;
  }

  v87 = qword_1000EB210;
  if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
  {
    v129 = [v17 uuid];
    v130 = *(v17 + 34);
    *buf = 138543618;
    v147 = v129;
    v148 = 2114;
    v149 = v130;
    _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "NDSession <%{public}@> Couldn't find out download directory for %{public}@. Not creating session", buf, 0x16u);
  }

  v88 = 0;
LABEL_68:

  return v88;
}

- (id)configurationWithClientConfiguration:(id)a3 discretionary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [v6 timeoutIntervalForRequest];
  [v7 setTimeoutIntervalForRequest:?];
  [v6 timeoutIntervalForResource];
  if (v8 == 0.0)
  {
    [v7 timeoutIntervalForResource];
  }

  [v7 setTimeoutIntervalForResource:?];
  v9 = [v6 connectionProxyDictionary];
  [v7 setConnectionProxyDictionary:v9];

  [v7 setTLSMinimumSupportedProtocol:{objc_msgSend(v6, "TLSMinimumSupportedProtocol")}];
  [v7 setTLSMaximumSupportedProtocol:{objc_msgSend(v6, "TLSMaximumSupportedProtocol")}];
  v10 = [v6 HTTPAdditionalHeaders];
  [v7 setHTTPAdditionalHeaders:v10];

  [v7 setHTTPMaximumConnectionsPerHost:{objc_msgSend(v6, "HTTPMaximumConnectionsPerHost")}];
  [v7 setNetworkServiceType:{objc_msgSend(v6, "networkServiceType")}];
  v11 = [v6 _authenticatorStatusCodes];
  [v7 set_authenticatorStatusCodes:v11];

  v12 = [v6 _atsContext];
  [v7 set_atsContext:v12];

  [v7 set_allowsTLSFalseStart:{objc_msgSend(v6, "_allowsTLSFalseStart")}];
  [v7 set_allowsTLSFallback:{objc_msgSend(v6, "_allowsTLSFallback")}];
  v13 = [v6 _tlsTrustPinningPolicyName];
  [v7 set_tlsTrustPinningPolicyName:v13];

  [v7 set_allowsTLSECH:{objc_msgSend(v6, "_allowsTLSECH")}];
  [v7 set_forceEnablePQTLS:{objc_msgSend(v6, "_forceEnablePQTLS")}];
  [v7 set_reportsDataStalls:{objc_msgSend(v6, "_reportsDataStalls")}];
  [v7 set_TCPAdaptiveReadTimeout:{objc_msgSend(v6, "_TCPAdaptiveReadTimeout")}];
  [v7 set_TCPAdaptiveWriteTimeout:{objc_msgSend(v6, "_TCPAdaptiveWriteTimeout")}];
  [v7 set_onBehalfOfPairedDevice:{objc_msgSend(v6, "_onBehalfOfPairedDevice")}];
  [v7 set_requiresSustainedDataDelivery:{objc_msgSend(v6, "_requiresSustainedDataDelivery")}];
  [v7 set_IDSMessageTimeout:{objc_msgSend(v6, "_IDSMessageTimeout")}];
  [v7 set_alwaysPerformDefaultTrustEvaluation:{objc_msgSend(v6, "_alwaysPerformDefaultTrustEvaluation")}];
  [v7 set_prefersInfraWiFi:{objc_msgSend(v6, "_prefersInfraWiFi")}];
  if ([(NDApplication *)self->_clientApplication canBeSuspended]&& (_os_feature_enabled_impl() & 1) == 0)
  {
    [v7 setNetworkServiceType:3];
  }

  v14 = [v6 _maximumWatchCellularTransferSize];
  [v7 set_maximumWatchCellularTransferSize:v14];

  [v7 setHTTPCookieStorage:0];
  [v7 setURLCache:0];
  [v7 setURLCredentialStorage:self->_credentialStorage];
  [v7 setAllowsCellularAccess:{objc_msgSend(v6, "allowsCellularAccess")}];
  [v7 setWaitsForConnectivity:0];
  [v7 setAllowsExpensiveNetworkAccess:{objc_msgSend(v6, "allowsExpensiveNetworkAccess")}];
  [v7 setAllowsConstrainedNetworkAccess:{objc_msgSend(v6, "allowsConstrainedNetworkAccess")}];
  [v7 set_allowsUltraConstrainedInternal:{objc_msgSend(v6, "_allowsUltraConstrainedInternal")}];
  [v7 set_allowsVirtualInterfaces:{objc_msgSend(v6, "_allowsVirtualInterfaces")}];
  [v7 set_multipathAlternatePort:{objc_msgSend(v6, "_multipathAlternatePort")}];
  [v7 set_allowsPowerNapScheduling:{objc_msgSend(v6, "_allowsPowerNapScheduling")}];
  [v7 set_allowsHSTSWithUntrustedRootCertificate:{objc_msgSend(v6, "_allowsHSTSWithUntrustedRootCertificate")}];
  v15 = [v6 _connectionPoolName];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = @"NSURLSessionBackgroundPoolName";
  }

  [v7 set_tcpConnectionPoolName:v17];

  v18 = +[Daemon sharedDaemon];
  if ([v18 isInSyncBubble])
  {
    v19 = [v6 _connectionPoolName];

    if (v19)
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
  [v7 set_timingDataOptions:{objc_msgSend(v6, "_timingDataOptions")}];
  [v7 set_shouldSkipPreferredClientCertificateLookup:{objc_msgSend(v6, "_shouldSkipPreferredClientCertificateLookup")}];
  [v7 set_requiresPowerPluggedIn:{objc_msgSend(v6, "_requiresPowerPluggedIn")}];
  [v7 set_sourceApplicationBundleIdentifier:self->_monitoredAppBundleID];
  [v7 set_sourceApplicationSecondaryIdentifier:self->_secondaryID];
  [v7 set_watchExtensionBundleIdentifier:self->_watchExtensionBundleIdentifier];
  v20 = [v6 _sourceApplicationAuditTokenData];
  [v7 set_sourceApplicationAuditTokenData:v20];

  v21 = [v6 _directoryForDownloadedFiles];
  [v7 set_directoryForDownloadedFiles:v21];

  v22 = [v6 _downloadFileProtectionType];
  [v7 set_downloadFileProtectionType:v22];

  v23 = +[Daemon sharedDaemon];
  v24 = [v23 isPrivileged];

  if (v24)
  {
    [v7 set_requiresClientToOpenFiles:1];
  }

  [v7 set_duetPreauthorized:{objc_msgSend(v6, "_duetPreauthorized")}];
  [v7 set_loggingPrivacyLevel:{objc_msgSend(v6, "_loggingPrivacyLevel")}];
  [v7 set_duetPreClearedMode:{objc_msgSend(v6, "_duetPreClearedMode")}];
  [v7 set_pidForHAR:{objc_msgSend(v6, "_pidForHAR")}];
  v25 = +[NSMutableDictionary dictionary];
  if ([v6 _duetPreauthorized])
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
  if (v4)
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
      if ([v6 isDiscretionary] && (objc_msgSend(v6, "_clientIsNotExplicitlyDiscretionary") & 1) == 0)
      {
        [v26 setObject:&__kCFBooleanTrue forKeyedSubscript:kConditionalConnectionClientOptInDiscretionary];
      }

      else
      {
        [v7 set_clientIsNotExplicitlyDiscretionary:1];
      }

      if ([v6 _xpcActivityBudgeted])
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
    if ([v6 _xpcActivityBudgeted])
    {
      if ([v6 _xpcActivityBudgeted] == 1)
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

- (void)updateOptions:(id)a3
{
  v8 = a3;
  v4 = [v8 objectForKeyedSubscript:@"NSURLSessionDelegateImplementsWillSendRequestForEstablishedConnectionKey"];
  self->_clientImplementsWillSendRequest = [v4 BOOLValue];

  v5 = [v8 objectForKeyedSubscript:@"NSURLSessionDelegateImplementsWillBeginDelayedRequestKey"];
  self->_clientImplementsWillBeginDelayedRequest = [v5 BOOLValue];

  v6 = [v8 objectForKeyedSubscript:@"NSURLSessionDelegateImplementsSessionAuthChallengeKey"];
  self->_clientImplementsSessionChallenge = [v6 BOOLValue];

  v7 = [v8 objectForKeyedSubscript:@"NSURLSessionDelegateImplementsTaskAuthChallengeKey"];
  self->_clientImplementsTaskChallenge = [v7 BOOLValue];
}

@end