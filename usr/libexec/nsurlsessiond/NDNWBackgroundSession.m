@interface NDNWBackgroundSession
+ (id)downloadFileURLFormTaskInfo:(id)a3;
- (BOOL)clientIsActive;
- (BOOL)currentDiscretionaryStatusWithOptionalTaskInfo:(id)a3;
- (BOOL)errorIfBlockedTracker:(id)a3 url:(id)a4;
- (BOOL)finalizeTaskCompletionWithSuppressedWake:(BOOL)a3;
- (BOOL)hasConnectedClient;
- (BOOL)sessionHasOutstandingTasks;
- (BOOL)trustPassesExtendedValidation:(__SecTrust *)a3;
- (NDBackgroundSessionDelegate)delegate;
- (NDNWBackgroundSession)initWithConfiguration:(id)a3 bundleID:(id)a4 isSpringBoardApp:(BOOL)a5 downloadDirectory:(id)a6 options:(id)a7 clientProxy:(id)a8 delegate:(id)a9 workQueue:(id)a10 db:(id)a11;
- (id)_URLSession:(id)a3 downloadTaskNeedsDownloadDirectory:(id)a4;
- (id)configurationWithClientConfiguration:(id)a3;
- (id)descriptionForRequest:(id)a3;
- (id)getTasksForReconnection;
- (id)inputStreamWithFileHandle:(id)a3 taskIdentifier:(unint64_t)a4;
- (id)makeTempUploadFile:(id)a3 withExtensionData:(id)a4;
- (id)restoreTasks:(BOOL *)a3;
- (id)restoreTasksFromSqliteDB:(id)a3;
- (id)sanitizeTaskProperties:(id)a3;
- (id)setupDownloadDirectory;
- (id)taskWithTaskInfo:(id)a3;
- (int64_t)backgroundSchedulingPriorityWithTaskInfo:(id)a3;
- (void)URLSession:(id)a3 _taskDidConnect:(id)a4;
- (void)URLSession:(id)a3 dataTask:(id)a4 _didReceiveData:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 dataTask:(id)a4 didBecomeDownloadTask:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didResumeAtOffset:(int64_t)a5 expectedTotalBytes:(int64_t)a6;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveInformationalResponse:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willBeginDelayedRequest:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)_URLSession:(id)a3 downloadTask:(id)a4 didReceiveResponse:(id)a5;
- (void)_URLSession:(id)a3 task:(id)a4 getAuthHeadersForResponse:(id)a5 completionHandler:(id)a6;
- (void)_cancelTaskWithIdentifier:(unint64_t)a3 error:(id)a4;
- (void)_resumeTask:(unint64_t)a3;
- (void)allowReconnect;
- (void)applicationWasSuspended:(id)a3 pid:(int)a4;
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
- (void)configureResumeInfo:(id)a3 withTaskInfo:(id)a4;
- (void)configureTask:(id)a3 withTaskInfo:(id)a4;
- (void)configureTaskInfo:(id)a3 withResumeInfo:(id)a4;
- (void)dataTaskWithRequest:(id)a3 originalRequest:(id)a4 identifier:(unint64_t)a5 uniqueIdentifier:(id)a6 reply:(id)a7;
- (void)downloadTaskWithRequest:(id)a3 originalRequest:(id)a4 downloadFilePath:(id)a5 identifier:(unint64_t)a6 uniqueIdentifier:(id)a7 reply:(id)a8;
- (void)downloadTaskWithResumeData:(id)a3 identifier:(unint64_t)a4 uniqueIdentifier:(id)a5 reply:(id)a6;
- (void)enqueueTaskWithIdentifier:(unint64_t)a3;
- (void)ensureSessionDownloadDirectoryExists;
- (void)errorOccurredDuringAuthCallbackDelivery:(id)a3 completionHandler:(id)a4;
- (void)errorOccurredDuringFinishedCallbackDelivery:(id)a3;
- (void)fillInByteCountsForTaskInfo:(id)a3 withTaskID:(id)a4;
- (void)invalidateWithReply:(id)a3;
- (void)obliterate;
- (void)queueUpdatesForTask:(id)a3 updateType:(unint64_t)a4 highPriority:(BOOL)a5;
- (void)reconnectClient:(id)a3 withCompletion:(id)a4;
- (void)removeDownloadFileForTaskInfo:(id)a3;
- (void)removeUploadFileForTaskInfo:(id)a3;
- (void)resetStorageWithReply:(id)a3;
- (void)restoreCompletedTask:(id)a3;
- (void)resumeTaskWithIdentifier:(unint64_t)a3 withProperties:(id)a4;
- (void)setBytesPerSecondLimit:(int64_t)a3 forTaskWithIdentifier:(unint64_t)a4;
- (void)setDescription:(id)a3 forTask:(unint64_t)a4;
- (void)setDiscretionaryOverride:(int64_t)a3 forTaskWithIdentifier:(unint64_t)a4;
- (void)setExpectedProgressTarget:(unint64_t)a3 forTaskWithIdentifier:(unint64_t)a4;
- (void)setLoadingPoolPriority:(double)a3 forTaskWithIdentifier:(unint64_t)a4;
- (void)setPriority:(int64_t)a3 forTaskWithIdentifier:(unint64_t)a4;
- (void)setPropertyOnStreamWithIdentifier:(unint64_t)a3 propDict:(id)a4 propKey:(id)a5 withReply:(id)a6;
- (void)setTLSMaximumSupportedProtocolVersion:(unsigned __int16)a3 forTaskWithIdentifier:(unint64_t)a4;
- (void)setTLSMinimumSupportedProtocolVersion:(unsigned __int16)a3 forTaskWithIdentifier:(unint64_t)a4;
- (void)setTLSSessionCachePrefix:(id)a3;
- (void)setXPCConnection:(id)a3;
- (void)startMonitorForTask:(unint64_t)a3;
- (void)startTasksIfAllowed;
- (void)statusMonitor:(id)a3 callbackForIdentifier:(unint64_t)a4 networkChanged:(BOOL)a5;
- (void)storeTaskInfoUpdates:(BOOL)a3;
- (void)suspendTaskWithIdentifier:(unint64_t)a3;
- (void)taskMonitor:(id)a3 retryTask:(unint64_t)a4 reason:(int)a5;
- (void)taskMonitor:(id)a3 terminateTask:(unint64_t)a4 reason:(int)a5;
- (void)taskMonitor:(id)a3 updateTaskPriority:(unint64_t)a4 reason:(int)a5;
- (void)triggerPowerlogPeriodicUpdate;
- (void)updateOptions:(id)a3;
- (void)uploadTaskWithRequest:(id)a3 originalRequest:(id)a4 fromFile:(id)a5 sandboxExtensionData:(id)a6 identifier:(unint64_t)a7 uniqueIdentifier:(id)a8 potentialCredentials:(id)a9 reply:(id)a10;
- (void)uploadTaskWithResumableUploadState:(id)a3 request:(id)a4 originalRequest:(id)a5 fromFile:(id)a6 sandboxExtensionData:(id)a7 identifier:(unint64_t)a8 uniqueIdentifier:(id)a9 potentialCredentials:(id)a10 reply:(id)a11;
- (void)wakeUpClient:(int64_t)a3;
@end

@implementation NDNWBackgroundSession

- (void)archiveTimerFired
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000055C4;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(workQueue, block);
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
  v12 = [v9 taskIdentifier];
  v13 = qword_1000EB210;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    sendsLaunchEvents = self->_sendsLaunchEvents;
    v17 = [(NDApplication *)self->_clientApplication supportsWakes];
    v18 = "N";
    *buf = 138544386;
    v41 = 2048;
    v40 = v14;
    if (sendsLaunchEvents)
    {
      v19 = "Y";
    }

    else
    {
      v19 = "N";
    }

    v42 = v12;
    v43 = 2114;
    if (v17)
    {
      v18 = "Y";
    }

    v44 = clientBundleID;
    v45 = 2080;
    v46 = v19;
    v47 = 2080;
    v48 = v18;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> getAuthHeadersForResponse for %{public}@ _sendsLaunchEvents=%s [_clientApplication supportsWakes]=%s", buf, 0x34u);
  }

  clientProxy = self->_clientProxy;
  if (clientProxy)
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100044514;
    v36[3] = &unk_1000D57F0;
    v36[4] = self;
    v38 = v12;
    v21 = v11;
    v37 = v21;
    v22 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v36];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100044658;
    v33[3] = &unk_1000D58E0;
    v33[4] = self;
    v35 = v12;
    v34 = v21;
    [v22 backgroundTask:v12 getAuthHeadersForResponse:v10 reply:v33];
  }

  else if (self->_sendsLaunchEvents && [(NDApplication *)self->_clientApplication supportsWakes])
  {
    v23 = qword_1000EB210;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(NDNWBackgroundSession *)self uuid];
      v25 = self->_clientBundleID;
      *buf = 138543874;
      v40 = v24;
      v41 = 2048;
      v42 = v12;
      v43 = 2114;
      v44 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> waking %{public}@ for auth headers", buf, 0x20u);
    }

    v26 = [PendingCallback alloc];
    v27 = objc_retainBlock(v11);
    v28 = [v27 copy];
    v29 = [NSArray arrayWithObjects:v28, v10, 0];
    v30 = [(PendingCallback *)v26 initWithCallbackType:10 taskIdentifier:v12 args:v29];

    [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v30 wakeRequirement:2];
  }

  else
  {
    v31 = qword_1000EB210;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543618;
      v40 = v32;
      v41 = 2048;
      v42 = v12;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> getAuthHeadersForResponse does not have a remote object and does not support app wakes, canceling.", buf, 0x16u);
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
  v9 = [v7 taskIdentifier];
  v10 = qword_1000EB210;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    v18 = 138544130;
    v19 = v11;
    v20 = 2048;
    v21 = v9;
    v22 = 2114;
    v23 = clientBundleID;
    v24 = 1024;
    v25 = [v8 statusCode];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> download for client %{public}@ received response, status code: %d", &v18, 0x26u);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v14 = [NSNumber numberWithUnsignedInteger:v9];
  v15 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v14];

  [v15 setResponse:v8];
  v16 = [v7 fileURL];
  [v15 setDownloadFileURL:v16];

  v17 = [NSNumber numberWithUnsignedInteger:v9];
  [(NDNWBackgroundSession *)self queueUpdatesForTask:v17 updateType:1 highPriority:1];

  [(NSXPCProxyCreating *)self->_clientProxy backgroundTask:v9 didReceiveResponse:v8 transactionMetrics:0];
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  v19 = a4;
  v11 = [v19 taskIdentifier];
  identifiersToMonitors = self->_identifiersToMonitors;
  v13 = [NSNumber numberWithUnsignedInteger:v11];
  v14 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = [v19 _incompleteCurrentTaskTransactionMetrics];
    [v14 taskTransferredData:0 countOfBytesReceived:a5 cellular:{objc_msgSend(v15, "isCellular")}];
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v17 = [NSNumber numberWithUnsignedInteger:v11];
  v18 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v17];

  if (![v18 taskKind])
  {
    [(NSXPCProxyCreating *)self->_clientProxy backgroundDownloadTask:v11 didWriteData:a5 totalBytesWritten:a6 totalBytesExpectedToWrite:a7];
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didResumeAtOffset:(int64_t)a5 expectedTotalBytes:(int64_t)a6
{
  v9 = a4;
  v10 = [v9 taskIdentifier];
  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NDNWBackgroundSession *)self uuid];
    v16 = 138544130;
    v17 = v12;
    v18 = 2048;
    v19 = v10;
    v20 = 2048;
    v21 = a5;
    v22 = 2048;
    v23 = a6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> didResumeAtOffset: %lld expectedTotalBytes: %lld", &v16, 0x2Au);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v14 = [NSNumber numberWithUnsignedInteger:v10];
  v15 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v14];

  if ([v15 expectingResumeCallback])
  {
    [(NSXPCProxyCreating *)self->_clientProxy backgroundDownloadTask:v10 didResumeAtOffset:a5 expectedTotalBytes:a6];
    [v15 setExpectingResumeCallback:0];
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 taskIdentifier];
  v10 = qword_1000EB210;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(NDNWBackgroundSession *)self uuid];
    *buf = 138543874;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    v39 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> finished downloading to %@", buf, 0x20u);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v13 = [NSNumber numberWithUnsignedInteger:v9];
  v14 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v13];

  if (!v14 && [(NSString *)self->_clientBundleID isEqualToString:@"com.apple.parsecd"])
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LODWORD(v39) = 0;
    v15 = +[NSMutableArray array];
    v16 = +[NSMutableArray array];
    v17 = self->_identifiersToTaskInfo;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100045678;
    v29[3] = &unk_1000D5890;
    v32 = buf;
    v18 = v15;
    v30 = v18;
    v19 = v16;
    v31 = v19;
    [(NSMutableDictionary *)v17 enumerateKeysAndObjectsUsingBlock:v29];
    v20 = qword_1000EB210;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(NDNWBackgroundSession *)self uuid];
      *v34 = 138543618;
      v35 = v21;
      v36 = 2112;
      v37 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> identifiersToTaskInfo key dump: %@", v34, 0x16u);
    }

    v22 = qword_1000EB210;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(NDNWBackgroundSession *)self uuid];
      *v34 = 138543618;
      v35 = v23;
      v36 = 2112;
      v37 = v19;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> identifiersToTaskInfo states dump: %@", v34, 0x16u);
    }

    _Block_object_dispose(buf, 8);
  }

  v24 = [PendingCallback alloc];
  v33[0] = v14;
  v25 = [v7 response];
  v26 = v25;
  if (!v25)
  {
    v26 = +[NSNull null];
  }

  v33[1] = v26;
  v27 = [NSArray arrayWithObjects:v33 count:2];
  v28 = [(PendingCallback *)v24 initWithCallbackType:1 taskIdentifier:v9 args:v27];

  if (!v25)
  {
  }

  [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v28 wakeRequirement:0];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didBecomeDownloadTask:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 taskIdentifier];
  v10 = qword_1000EB210;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(NDNWBackgroundSession *)self uuid];
    v19 = 138543618;
    v20 = v11;
    v21 = 2048;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> became download task", &v19, 0x16u);
  }

  identifiersToTasks = self->_identifiersToTasks;
  v13 = [NSNumber numberWithUnsignedInteger:v9];
  [(NSMutableDictionary *)identifiersToTasks setObject:v8 forKeyedSubscript:v13];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v15 = [NSNumber numberWithUnsignedInteger:v9];
  v16 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v15];

  v17 = [v8 fileURL];
  [v16 setDownloadFileURL:v17];

  if ([v16 taskKind] == 2)
  {
    [(NSXPCProxyCreating *)self->_clientProxy backgroundDataTaskDidBecomeDownloadTask:v9];
    [v16 setTaskKind:0];
  }

  v18 = [NSNumber numberWithUnsignedInteger:v9];
  [(NDNWBackgroundSession *)self queueUpdatesForTask:v18 updateType:14 highPriority:0];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 _didReceiveData:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v9 taskIdentifier];
  identifiersToMonitors = self->_identifiersToMonitors;
  v14 = [NSNumber numberWithUnsignedInteger:v12];
  v15 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v14];

  if (v15)
  {
    v16 = [v10 length];
    v17 = [v9 _incompleteCurrentTaskTransactionMetrics];
    [v15 taskTransferredData:0 countOfBytesReceived:v16 cellular:{objc_msgSend(v17, "isCellular")}];
  }

  v18 = qword_1000EB210;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v27 = [(NDNWBackgroundSession *)self uuid];
    *buf = 138544130;
    v34 = v27;
    v35 = 2048;
    v36 = v12;
    v37 = 2048;
    v38 = [v9 countOfBytesReceived];
    v39 = 2048;
    v40 = [v9 countOfBytesExpectedToReceive];
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "NDNWSession <%{public}@> <%zu> did receive data (%lld of %lld total bytes)", buf, 0x2Au);
  }

  clientProxy = self->_clientProxy;
  if (clientProxy)
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100045DEC;
    v30[3] = &unk_1000D57F0;
    v30[4] = self;
    v32 = v12;
    v20 = v11;
    v31 = v20;
    v21 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v30];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100045F10;
    v28[3] = &unk_1000D5F30;
    v29 = v20;
    [v21 backgroundDataTask:v12 didReceiveData:v10 withReply:v28];
  }

  else
  {
    v22 = qword_1000EB210;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543618;
      v34 = v23;
      v35 = 2048;
      v36 = v12;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> received data and there is no connected client. Canceling task.", buf, 0x16u);
    }

    v24 = [[NWURLError alloc] initWithErrorCode:-997];
    v25 = [v9 currentRequest];
    v26 = [v25 URL];
    [v24 setFailingURL:v26];

    [(NDNWBackgroundSession *)self _cancelTaskWithIdentifier:v12 error:v24];
    v11[2](v11);
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v9 taskIdentifier];
  v13 = qword_1000EB210;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(NDNWBackgroundSession *)self uuid];
    *buf = 138544130;
    v38 = v14;
    v39 = 2048;
    v40 = v12;
    v41 = 2112;
    v42 = v10;
    v43 = 1024;
    v44 = [v10 statusCode];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> didReceiveResponse: %@, status code: %d", buf, 0x26u);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v16 = [NSNumber numberWithUnsignedInteger:v12];
  v17 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v16];

  [v17 setResponse:v10];
  v18 = [NSNumber numberWithUnsignedInteger:v12];
  [(NDNWBackgroundSession *)self queueUpdatesForTask:v18 updateType:1 highPriority:0];

  v19 = [v17 resumableUploadData];
  LOBYTE(v18) = v19 == 0;

  if ((v18 & 1) == 0)
  {
    [v17 setResumableUploadData:0];
    v20 = [NSNumber numberWithUnsignedInteger:v12];
    [(NDNWBackgroundSession *)self queueUpdatesForTask:v20 updateType:2 highPriority:0];
  }

  v21 = [v17 taskKind];
  clientProxy = self->_clientProxy;
  if (v21 == 1)
  {
    [(NSXPCProxyCreating *)self->_clientProxy backgroundTask:v12 didReceiveResponse:v10 transactionMetrics:0];
    [(NDNWBackgroundSession *)self ensureSessionDownloadDirectoryExists];
    v11[2](v11, 2);
  }

  else if (clientProxy)
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100046424;
    v33[3] = &unk_1000D5840;
    v33[4] = self;
    v36 = v12;
    v34 = v17;
    v23 = v11;
    v35 = v23;
    v24 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v33];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000465D0;
    v30[3] = &unk_1000D5868;
    v30[4] = self;
    v32 = v12;
    v31 = v23;
    [v24 backgroundTask:v12 didReceiveResponse:v10 transactionMetrics:0 reply:v30];
  }

  else
  {
    v25 = qword_1000EB210;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v29 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543618;
      v38 = v29;
      v39 = 2048;
      v40 = v12;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> received data task didReceiveResponse callback and there is no connected client. Canceling task.", buf, 0x16u);
    }

    v26 = [[NWURLError alloc] initWithErrorCode:-997];
    v27 = [v17 currentRequest];
    v28 = [v27 URL];
    [v26 setFailingURL:v28];

    [(NDNWBackgroundSession *)self _cancelTaskWithIdentifier:v12 error:v26];
    v11[2](v11, 0);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v36 = a5;
  v8 = [v7 taskIdentifier];
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v10 = [NSNumber numberWithUnsignedInteger:v8];
  v11 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v10];

  identifiersToStreams = self->_identifiersToStreams;
  if (identifiersToStreams)
  {
    v13 = [NSNumber numberWithUnsignedInteger:v8];
    [(NSMutableDictionary *)identifiersToStreams removeObjectForKey:v13];
  }

  [v11 setState:3];
  v14 = [v11 error];

  if (!v14)
  {
    [v11 setError:v36];
  }

  v15 = [v11 error];
  if (sub_100004F90(v15))
  {
    v16 = [(NDApplication *)self->_clientApplication canBeSuspended];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v7 _trailers];
  [v11 set_backgroundTrailers:v17];

  v18 = [NSNumber numberWithUnsignedInteger:v8];
  [(NDNWBackgroundSession *)self queueUpdatesForTask:v18 updateType:14 highPriority:1];

  v37 = objc_alloc_init(NSMutableDictionary);
  v19 = [v11 _backgroundTrailers];

  if (v19)
  {
    v20 = [v11 _backgroundTrailers];
    [v37 setObject:v20 forKeyedSubscript:@"trailers"];
  }

  v35 = v16;
  v21 = [PendingCallback alloc];
  v22 = [v11 error];
  v23 = v22;
  if (!v22)
  {
    v23 = +[NSNull null];
  }

  v38[0] = v23;
  v24 = [v11 taskMetrics];
  v25 = v24;
  if (!v24)
  {
    v25 = +[NSNull null];
  }

  v38[1] = v25;
  v38[2] = v37;
  v26 = [NSArray arrayWithObjects:v38 count:3];
  v27 = [(PendingCallback *)v21 initWithCallbackType:0 taskIdentifier:v8 args:v26];

  if (!v24)
  {
  }

  if (!v22)
  {
  }

  [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v27 wakeRequirement:0];
  identifiersToTasks = self->_identifiersToTasks;
  v29 = [NSNumber numberWithUnsignedInteger:v8];
  [(NSMutableDictionary *)identifiersToTasks removeObjectForKey:v29];

  [(NDNWBackgroundSession *)self handleCompletionOfTask:v7 identifier:v8 taskInfo:v11 suppressWake:v35];
  [(NDNWBackgroundSession *)self removeUploadFileForTaskInfo:v11];
  if (![v11 taskKind])
  {
    v30 = [v11 error];
    if (v30)
    {
      v31 = [v11 error];
      v32 = [v31 userInfo];
      v33 = [v32 objectForKeyedSubscript:NSURLSessionDownloadTaskResumeData];
      v34 = v33 == 0;

      if (v34)
      {
        [(NDNWBackgroundSession *)self removeDownloadFileForTaskInfo:v11];
      }
    }
  }

  [(NDNWBackgroundSession *)self startTasksIfAllowed];
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveInformationalResponse:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 taskIdentifier];
  v10 = qword_1000EB210;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(NDNWBackgroundSession *)self uuid];
    v18 = 138544130;
    v19 = v11;
    v20 = 2048;
    v21 = v9;
    v22 = 2112;
    v23 = v8;
    v24 = 1024;
    v25 = [v8 statusCode];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> didReceiveInformationalResponse: %@, status code: %d", &v18, 0x26u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v7 resumeURL];
    if (v12)
    {
      identifiersToTaskInfo = self->_identifiersToTaskInfo;
      v14 = [NSNumber numberWithUnsignedInteger:v9];
      v15 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v14];

      v16 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
      [v15 setResumableUploadData:v16];

      v17 = [NSNumber numberWithUnsignedInteger:v9];
      [(NDNWBackgroundSession *)self queueUpdatesForTask:v17 updateType:2 highPriority:0];
    }
  }

  [(NSXPCProxyCreating *)self->_clientProxy backgroundTask:v9 didReceiveInformationalResponse:v8];
}

- (void)URLSession:(id)a3 task:(id)a4 needNewBodyStream:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 taskIdentifier];
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v11 = [NSNumber numberWithUnsignedInteger:v9];
  v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

  [v12 setShouldCancelOnDisconnect:1];
  [v12 setDisablesRetry:!self->_retryDataTasks];
  v13 = qword_1000EB210;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(NDNWBackgroundSession *)self uuid];
    *buf = 138543618;
    v25 = v14;
    v26 = 2048;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> needs new body stream", buf, 0x16u);
  }

  clientProxy = self->_clientProxy;
  if (clientProxy)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100047104;
    v21[3] = &unk_1000D57F0;
    v21[4] = self;
    v23 = v9;
    v16 = v8;
    v22 = v16;
    v17 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v21];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10004722C;
    v18[3] = &unk_1000D5818;
    v18[4] = self;
    v20 = v9;
    v19 = v16;
    [v17 backgroundTask:v9 needNewBodyStream:1 withReply:v18];
  }

  else
  {
    (*(v8 + 2))(v8, 0);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v16 = a4;
  v11 = [v16 taskIdentifier];
  identifiersToMonitors = self->_identifiersToMonitors;
  v13 = [NSNumber numberWithUnsignedInteger:v11];
  v14 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v13];

  if (v14)
  {
    v15 = [v16 _incompleteCurrentTaskTransactionMetrics];
    [v14 taskTransferredData:a5 countOfBytesReceived:0 cellular:{objc_msgSend(v15, "isCellular")}];
  }

  [(NSXPCProxyCreating *)self->_clientProxy backgroundTask:v11 didSendBodyData:a5 totalBytesSent:a6 totalBytesExpectedToSend:a7];
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v11 = a4;
  v30 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [v11 taskIdentifier];
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v16 = [NSNumber numberWithUnsignedInteger:v14];
  v17 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v16];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100047830;
  v39[3] = &unk_1000D57A0;
  v18 = v17;
  v40 = v18;
  v41 = self;
  v43 = v14;
  v19 = v13;
  v42 = v19;
  v20 = objc_retainBlock(v39);
  [v18 setCurrentRequest:v12];
  v21 = [v12 URL];
  LOBYTE(v16) = [(NDNWBackgroundSession *)self errorIfBlockedTracker:v11 url:v21];

  if (v16)
  {
    v22 = 0;
    v23 = v19;
LABEL_7:
    (v23[2])(v23, v22);
    goto LABEL_8;
  }

  v24 = qword_1000EB210;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [(NDNWBackgroundSession *)self uuid];
    *buf = 138544130;
    v45 = v25;
    v46 = 2048;
    v47 = v14;
    v48 = 2112;
    v49 = v30;
    v50 = 2112;
    v51 = v12;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> willPerformHTTPRedirection, response: %@, new request: %@", buf, 0x2Au);
  }

  clientProxy = self->_clientProxy;
  v23 = v20;
  v22 = v12;
  if (!clientProxy)
  {
    goto LABEL_7;
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000478F0;
  v35[3] = &unk_1000D5840;
  v35[4] = self;
  v38 = v14;
  v27 = v20;
  v37 = v27;
  v28 = v12;
  v36 = v28;
  v29 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v35];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100047A14;
  v31[3] = &unk_1000D57C8;
  v31[4] = self;
  v32 = v11;
  v33 = v19;
  v34 = v27;
  [v29 backgroundTask:v14 willPerformHTTPRedirection:v30 withNewRequest:v28 reply:v31];

LABEL_8:
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v52 = a6;
  v11 = [v9 taskIdentifier];
  v12 = qword_1000EB210;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(NDNWBackgroundSession *)self uuid];
    v14 = [v10 protectionSpace];
    clientBundleID = self->_clientBundleID;
    v16 = [v10 protectionSpace];
    v17 = [v16 authenticationMethod];
    *buf = 138544642;
    *&buf[4] = v13;
    *&buf[12] = 2048;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    v61 = v10;
    v62 = 2112;
    v63 = v14;
    v64 = 2114;
    v65 = clientBundleID;
    v66 = 2114;
    v67 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> didReceiveChallenge: %@ protection space: %@ for client %{public}@ received auth challenge with type %{public}@", buf, 0x3Eu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v61) = 0;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100048474;
  v53[3] = &unk_1000D5778;
  v55 = buf;
  v18 = v52;
  v54 = v18;
  v19 = objc_retainBlock(v53);
  if (!self->_performsEVCertCheck || ([v10 protectionSpace], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "authenticationMethod"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", NSURLAuthenticationMethodServerTrust), v21, v20, !v22))
  {
    if (!sub_10004849C(v10) || self->_clientImplementsSessionChallenge || self->_clientImplementsTaskChallenge)
    {
      if (sub_10004849C(v10) || self->_clientImplementsTaskChallenge)
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

          v31 = [v10 protectionSpace];
          v32 = [v31 authenticationMethod];
          v33 = [v32 isEqualToString:NSURLAuthenticationMethodServerTrust];

          if (v33)
          {
            v34 = [v10 protectionSpace];
            v35 = [v34 serverTrust];

            if (!SecTrustEvaluateWithError(v35, 0))
            {
              goto LABEL_36;
            }

            v36 = qword_1000EB210;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = [(NDNWBackgroundSession *)self uuid];
              *v56 = 138543618;
              v57 = v37;
              v58 = 2048;
              v59 = v11;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> client is not running and trust is valid, performing default handling for auth challenge", v56, 0x16u);
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

            v48 = [v10 proposedCredential];
            v49 = v48 == 0;

            if (v49)
            {
              goto LABEL_36;
            }

            v36 = qword_1000EB210;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v50 = [(NDNWBackgroundSession *)self uuid];
              *v56 = 138543618;
              v57 = v50;
              v58 = 2048;
              v59 = v11;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> client is not running and challenge has a previousFailureCount of 0 and a proposedCredential, performing default handling for auth challenge", v56, 0x16u);
            }
          }
        }

        else
        {
          v36 = qword_1000EB210;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v38 = [(NDNWBackgroundSession *)self uuid];
            *v56 = 138543618;
            v57 = v38;
            v58 = 2048;
            v59 = v11;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> client is not running and doesn't support app wakes, performing default handling for auth challenge", v56, 0x16u);
          }
        }
      }

      else
      {
        v36 = qword_1000EB210;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [(NDNWBackgroundSession *)self uuid];
          *v56 = 138543618;
          v57 = v39;
          v58 = 2048;
          v59 = v11;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> client doesn't implement task-level auth challenge delegate, performing default handling for auth challenge", v56, 0x16u);
        }
      }
    }

    else
    {
      v36 = qword_1000EB210;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [(NDNWBackgroundSession *)self uuid];
        *v56 = 138543618;
        v57 = v40;
        v58 = 2048;
        v59 = v11;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> client doesn't implement session-level or task-level auth challenge delegate, performing default handling for auth challenge", v56, 0x16u);
      }
    }

    (v19[2])(v19);
    goto LABEL_36;
  }

  v23 = qword_1000EB210;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(NDNWBackgroundSession *)self uuid];
    *v56 = 138543618;
    v57 = v24;
    v58 = 2048;
    v59 = v11;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> performing Extended Validation Trust evaluation", v56, 0x16u);
  }

  v25 = [v10 protectionSpace];
  v26 = [v25 serverTrust];

  LODWORD(v25) = [(NDNWBackgroundSession *)self trustPassesExtendedValidation:v26];
  v27 = qword_1000EB210;
  v28 = v27;
  if (v25)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [(NDNWBackgroundSession *)self uuid];
      *v56 = 138543618;
      v57 = v29;
      v58 = 2048;
      v59 = v11;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> Extended Validation Trust evaluation succeeded", v56, 0x16u);
    }

    v30 = [NSURLCredential credentialForTrust:v26];
    (*(v18 + 2))(v18, 0, v30);
  }

  else
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v51 = [(NDNWBackgroundSession *)self uuid];
      *v56 = 138543618;
      v57 = v51;
      v58 = 2048;
      v59 = v11;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> Extended Validation Trust evaluation failed", v56, 0x16u);
    }

    (*(v18 + 2))(v18, 2, 0);
  }

  *(*&buf[8] + 24) = 1;
LABEL_36:
  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    v41 = [PendingCallback alloc];
    v42 = objc_retainBlock(v18);
    v43 = [v42 copy];
    v44 = [NSArray arrayWithObjects:v10, v43, 0];
    v45 = [(PendingCallback *)v41 initWithCallbackType:2 taskIdentifier:v11 args:v44];

    callbackQueue = self->_callbackQueue;
    if (self->_sendsLaunchEvents)
    {
      if ([(NDApplication *)self->_clientApplication supportsWakes])
      {
        v47 = 2;
      }

      else
      {
        v47 = 0;
      }
    }

    else
    {
      v47 = 0;
    }

    [(NDCallbackQueue *)callbackQueue addPendingCallback:v45 wakeRequirement:v47];
  }

  _Block_object_dispose(buf, 8);
}

- (void)URLSession:(id)a3 _taskDidConnect:(id)a4
{
  v9 = a4;
  v5 = [v9 taskIdentifier];
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v7 = [NSNumber numberWithUnsignedInteger:v5];
  v8 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v7];

  sub_10006E114(1, self->_clientBundleID, self->_identifier, self->_monitoredAppBundleID, self->_secondaryID, v9, v8);
}

- (void)URLSession:(id)a3 task:(id)a4 willBeginDelayedRequest:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a6;
  v10 = [v8 taskIdentifier];
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v12 = [NSNumber numberWithUnsignedInteger:v10];
  v13 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v12];

  if (!self->_clientImplementsWillBeginDelayedRequest)
  {
    v15 = qword_1000EB210;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543618;
      v41 = v18;
      v42 = 2048;
      v43 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> skipping delayed request callback - delegate not implemented", buf, 0x16u);
    }

    goto LABEL_7;
  }

  v14 = [v13 respondedToWillBeginDelayedRequestCallback];
  v15 = qword_1000EB210;
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      v17 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543618;
      v41 = v17;
      v42 = 2048;
      v43 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> already replied to delayed request callback - not calling again", buf, 0x16u);
    }

LABEL_7:

    [(NDNWBackgroundSession *)self startMonitorForTask:v10];
LABEL_8:
    (*(v9 + 2))(v9, 0, 0);
    goto LABEL_9;
  }

  if (v16)
  {
    v19 = [(NDNWBackgroundSession *)self uuid];
    *buf = 138543618;
    v41 = v19;
    v42 = 2048;
    v43 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> receiving delayed request callback", buf, 0x16u);
  }

  if (!self->_clientProxy && (!self->_sendsLaunchEvents || ![(NDApplication *)self->_clientApplication supportsWakes]))
  {
    v28 = qword_1000EB210;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543618;
      v41 = v29;
      v42 = 2048;
      v43 = v10;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> client is not running and doesn't support wakes, continuing load for delayed request", buf, 0x16u);
    }

    [v13 setRespondedToWillBeginDelayedRequestCallback:1];
    [(NDNWBackgroundSession *)self startMonitorForTask:v10];
    v30 = [NSNumber numberWithUnsignedInteger:v10];
    [(NDNWBackgroundSession *)self queueUpdatesForTask:v30 updateType:9 highPriority:0];

    goto LABEL_8;
  }

  v20 = [v13 currentRequest];
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_100048B4C;
  v34 = &unk_1000D5750;
  v35 = self;
  v38 = v10;
  v36 = v13;
  v37 = v9;
  v21 = objc_retainBlock(&v31);
  v22 = [PendingCallback alloc];
  v39[0] = v20;
  v23 = objc_retainBlock(v21);
  v39[1] = v23;
  v24 = [NSArray arrayWithObjects:v39 count:2, v31, v32, v33, v34, v35];
  v25 = [(PendingCallback *)v22 initWithCallbackType:9 taskIdentifier:v10 args:v24];

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

LABEL_9:
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
        v10 = [(NDNWBackgroundSession *)self uuid];
        v11 = error;
        v12 = [(__CFError *)error code];
        *buf = 138543618;
        v16 = v10;
        v17 = 2048;
        v18 = v12;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Invalid trust status: %ld", buf, 0x16u);
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
          v13 = [(NDNWBackgroundSession *)self uuid];
          *buf = 138543362;
          v16 = v13;
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Extended trust validation failed", buf, 0xCu);
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
    v9 = [(NDNWBackgroundSession *)self uuid];
    v10 = 138544130;
    v11 = v9;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2048;
    v17 = [v7 code];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Session %@ didBecomeInvalidWithError: %@ [%ld]", &v10, 0x2Au);
  }
}

- (void)invalidateWithReply:(id)a3
{
  v4 = a3;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NDNWBackgroundSession *)self uuid];
    identifier = self->_identifier;
    clientBundleID = self->_clientBundleID;
    v13 = 138543874;
    v14 = v6;
    v15 = 2112;
    v16 = identifier;
    v17 = 2114;
    v18 = clientBundleID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> InvalidateWithReply: for session %@ bundle ID %{public}@", &v13, 0x20u);
  }

  if ([(NDCallbackQueue *)self->_callbackQueue count]&& [(NSMutableDictionary *)self->_identifiersToTasks count]|| [(NDNWBackgroundSession *)self sessionHasOutstandingTasks])
  {
    v9 = [(NDNWBackgroundSession *)self invalidateReply];
    v10 = v9 == 0;

    if (v10)
    {
      [(NDNWBackgroundSession *)self setInvalidateReply:v4];
    }
  }

  else
  {
    v11 = qword_1000EB210;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(NDNWBackgroundSession *)self uuid];
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Cleaning up and invalidating immediately since there are no tasks", &v13, 0xCu);
    }

    [(NDNWBackgroundSession *)self cleanupSessionWithCompletionHandler:v4];
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
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [(NDNWBackgroundSession *)self uuid];
    v6 = 138543362;
    v7 = v5;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> setTLSSessionCachePrefix not supported", &v6, 0xCu);
  }
}

- (void)setDiscretionaryOverride:(int64_t)a3 forTaskWithIdentifier:(unint64_t)a4
{
  v7 = +[NSXPCConnection currentConnection];
  v8 = sub_100008D00(v7, @"com.apple.private.nsurlsession.set-discretionary-override-value");

  if (v8)
  {
    identifiersToTaskInfo = self->_identifiersToTaskInfo;
    v10 = [NSNumber numberWithUnsignedInteger:a4];
    v11 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v10];

    [v11 setQos:qos_class_self()];
    v12 = qword_1000EB210;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(NDNWBackgroundSession *)self uuid];
      if (a3)
      {
        if (a3 == 1)
        {
          v14 = 68;
        }

        else if (a3 == 2)
        {
          v14 = 78;
        }

        else
        {
          v14 = 63;
        }
      }

      else
      {
        v14 = 45;
      }

      v22 = 138544130;
      v23 = v13;
      v24 = 2048;
      v25 = a4;
      v26 = 1024;
      v27 = v14;
      v28 = 1024;
      LODWORD(v29) = [v11 qos];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> setting discretionaryOverrride to %c, QOS(0x%x)", &v22, 0x22u);
    }

    [v11 setDiscretionaryOverride:a3];
    [v11 setMayBeDemotedToDiscretionary:1];
    identifiersToTasks = self->_identifiersToTasks;
    v19 = [NSNumber numberWithUnsignedInteger:a4];
    v20 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v19];

    if (v20)
    {
      [v20 setBackgroundSchedulingPriority:{-[NDNWBackgroundSession backgroundSchedulingPriorityWithTaskInfo:](self, "backgroundSchedulingPriorityWithTaskInfo:", v11)}];
    }

    v21 = +[NDStatusMonitor sharedMonitor];
    [v21 simulateNetworkChangedEvent:self identifier:a4];
  }

  else
  {
    v11 = qword_1000EB210;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(NDNWBackgroundSession *)self uuid];
      v16 = v15;
      if (a3)
      {
        if (a3 == 1)
        {
          v17 = 68;
        }

        else if (a3 == 2)
        {
          v17 = 78;
        }

        else
        {
          v17 = 63;
        }
      }

      else
      {
        v17 = 45;
      }

      v22 = 138544130;
      v23 = v15;
      v24 = 2048;
      v25 = a4;
      v26 = 1024;
      v27 = v17;
      v28 = 2112;
      v29 = @"com.apple.private.nsurlsession.set-discretionary-override-value";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> attempted to set discretionaryOverrride to %c but lacks required entitlement %@", &v22, 0x26u);
    }
  }
}

- (void)setTLSMaximumSupportedProtocolVersion:(unsigned __int16)a3 forTaskWithIdentifier:(unint64_t)a4
{
  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [(NDNWBackgroundSession *)self uuid];
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> setTLSMaximumSupportedProtocolVersion not supported", &v7, 0xCu);
  }
}

- (void)setTLSMinimumSupportedProtocolVersion:(unsigned __int16)a3 forTaskWithIdentifier:(unint64_t)a4
{
  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [(NDNWBackgroundSession *)self uuid];
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> setTLSMinimumSupportedProtocolVersion not supported", &v7, 0xCu);
  }
}

- (void)setExpectedProgressTarget:(unint64_t)a3 forTaskWithIdentifier:(unint64_t)a4
{
  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [(NDNWBackgroundSession *)self uuid];
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> setExpectedProgressTarget not supported", &v7, 0xCu);
  }
}

- (void)setBytesPerSecondLimit:(int64_t)a3 forTaskWithIdentifier:(unint64_t)a4
{
  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [(NDNWBackgroundSession *)self uuid];
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> setBytesPerSecondLimit not supported", &v7, 0xCu);
  }
}

- (void)setLoadingPoolPriority:(double)a3 forTaskWithIdentifier:(unint64_t)a4
{
  v5 = [NSXPCConnection currentConnection:a4];
  v6 = sub_100008D00(v5, @"com.apple.private.nsurlsession.set-task-priority");

  v7 = qword_1000EB210;
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      v9 = [(NDNWBackgroundSession *)self uuid];
      v12 = 138543362;
      v13 = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> setLoadingPoolPriority not supported", &v12, 0xCu);
    }
  }

  else if (v8)
  {
    v10 = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    v12 = 138543874;
    v13 = v10;
    v14 = 2114;
    v15 = clientBundleID;
    v16 = 2112;
    v17 = @"com.apple.private.nsurlsession.set-task-priority";
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> %{public}@ tried to set the loading priority of a task but is missing the %@ entitlement", &v12, 0x20u);
  }
}

- (void)setPriority:(int64_t)a3 forTaskWithIdentifier:(unint64_t)a4
{
  v5 = [NSXPCConnection currentConnection:a3];
  v6 = sub_100008D00(v5, @"com.apple.private.nsurlsession.set-task-priority");

  v7 = qword_1000EB210;
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      v9 = [(NDNWBackgroundSession *)self uuid];
      v12 = 138543362;
      v13 = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> setPriority not supported", &v12, 0xCu);
    }
  }

  else if (v8)
  {
    v10 = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    v12 = 138543874;
    v13 = v10;
    v14 = 2114;
    v15 = clientBundleID;
    v16 = 2112;
    v17 = @"com.apple.private.nsurlsession.set-task-priority";
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> %{public}@ tried to set the priority of a task but is missing the %@ entitlement", &v12, 0x20u);
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
  [(NDNWBackgroundSession *)self queueUpdatesForTask:v12 updateType:0 highPriority:1];
}

- (void)setPropertyOnStreamWithIdentifier:(unint64_t)a3 propDict:(id)a4 propKey:(id)a5 withReply:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = qword_1000EB210;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    v20 = 138544130;
    v21 = v14;
    v22 = 2048;
    v23 = a3;
    v24 = 2114;
    v25 = clientBundleID;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> setPropertyOnStreamWithIdentifier, client %{public}@ property %@", &v20, 0x2Au);
  }

  v16 = 0;
  if (v10 && v11)
  {
    identifiersToStreams = self->_identifiersToStreams;
    v18 = [NSNumber numberWithUnsignedInteger:a3];
    v19 = [(NSMutableDictionary *)identifiersToStreams objectForKeyedSubscript:v18];
    v16 = [v19 setProperty:v10 forKey:v11];
  }

  v12[2](v12, v16);
}

- (void)resumeTaskWithIdentifier:(unint64_t)a3 withProperties:(id)a4
{
  v6 = a4;
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v8];

  if (v9 && [v9 state])
  {
    [v9 setState:0];
    [v9 setQos:qos_class_self()];
    v10 = +[UMUserManager sharedManager];
    v11 = [v10 currentPersona];
    v12 = [v11 userPersonaUniqueString];
    [v9 setPersonaUniqueString:v12];

    v13 = qword_1000EB210;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(NDNWBackgroundSession *)self uuid];
      v19 = 138544130;
      v20 = v14;
      v21 = 2048;
      v22 = a3;
      v23 = 1024;
      v24 = [v9 qos];
      v25 = 2112;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> resumeTaskWithIdentifier, QOS(0x%x), props %@", &v19, 0x26u);
    }

    v15 = [(NDNWBackgroundSession *)self sanitizeTaskProperties:v6];
    [v9 setAdditionalProperties:v15];

    [(NSXPCProxyCreating *)self->_clientProxy backgroundTaskDidResume:a3];
    identifiersToTasks = self->_identifiersToTasks;
    v17 = [NSNumber numberWithUnsignedInteger:a3];
    v18 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v17];

    if (v18)
    {
      [(NDNWBackgroundSession *)self _resumeTask:a3];
    }

    else
    {
      [(NDNWBackgroundSession *)self startTasksIfAllowed];
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
    v9 = [(NDNWBackgroundSession *)self uuid];
    v17 = 138543618;
    v18 = v9;
    v19 = 2048;
    v20 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> suspendTaskWithIdentifier", &v17, 0x16u);
  }

  if (v7 && [v7 state] != 1)
  {
    [v7 setState:1];
    [(NSXPCProxyCreating *)self->_clientProxy backgroundTaskDidSuspend:a3];
    identifiersToTasks = self->_identifiersToTasks;
    v11 = [NSNumber numberWithUnsignedInteger:a3];
    v12 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v11];

    if (v12)
    {
      [v12 suspend];
      identifiersToMonitors = self->_identifiersToMonitors;
      v14 = [NSNumber numberWithUnsignedInteger:a3];
      v15 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v14];

      [v15 taskWillSuspend];
    }

    sub_10006E114(2, self->_clientBundleID, self->_identifier, self->_monitoredAppBundleID, self->_secondaryID, v12, v7);
    v16 = [NSNumber numberWithUnsignedInteger:a3];
    [(NDNWBackgroundSession *)self queueUpdatesForTask:v16 updateType:11 highPriority:1];
  }
}

- (void)cancelTaskWithIdentifier:(unint64_t)a3
{
  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NDNWBackgroundSession *)self uuid];
    v13 = 138543618;
    v14 = v6;
    v15 = 2048;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> cancelTaskWithIdentifier", &v13, 0x16u);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v8];

  v10 = [[NWURLError alloc] initWithErrorCode:-999];
  v11 = [v9 currentRequest];
  v12 = [v11 URL];
  [v10 setFailingURL:v12];

  [(NDNWBackgroundSession *)self _cancelTaskWithIdentifier:a3 error:v10];
}

- (void)cancelTaskWithIdentifier:(unint64_t)a3 byProducingResumeData:(id)a4
{
  v6 = a4;
  v7 = [(NDNWBackgroundSession *)self createTaskIfNeeded:a3];
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v9 = [NSNumber numberWithUnsignedInteger:a3];
  v10 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v9];

  [v10 setState:2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v13;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004A9AC;
    v13[3] = &unk_1000D5728;
    v13[4] = self;
    v13[6] = a3;
    v13[5] = v6;
    [v7 cancelByProducingResumeData:v13];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      (*(v6 + 2))(v6, 0);
      goto LABEL_7;
    }

    v11 = v12;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10004AAC4;
    v12[3] = &unk_1000D5728;
    v12[4] = self;
    v12[6] = a3;
    v12[5] = v6;
    [v7 cancelByProducingResumeData:v12];
  }

LABEL_7:
}

- (void)dataTaskWithRequest:(id)a3 originalRequest:(id)a4 identifier:(unint64_t)a5 uniqueIdentifier:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = qword_1000EB210;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(NDNWBackgroundSession *)self uuid];
    v18 = [(NDNWBackgroundSession *)self descriptionForRequest:v12];
    v22 = 138544130;
    v23 = v17;
    v24 = 2114;
    v25 = v14;
    v26 = 2048;
    v27 = a5;
    v28 = 2112;
    v29 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Task <%{public}@>.<%lu> dataTaskWithRequest: %@", &v22, 0x2Au);
  }

  v19 = objc_alloc_init(__NSCFURLSessionTaskInfo);
  [v19 setTaskKind:2];
  [v19 setUniqueIdentifier:self->_uuid];
  [v19 setIdentifier:a5];
  [v19 setState:1];
  [v19 setOriginalRequest:v13];
  [v19 setCurrentRequest:v12];
  [v19 setBundleID:self->_clientBundleID];
  [v19 setSessionID:self->_identifier];
  [v19 setQos:qos_class_self()];
  if (!self->_clientImplementsWillSendRequest || !self->_sendsLaunchEvents)
  {
    [v19 setShouldCancelOnDisconnect:1];
  }

  [v19 setDisablesRetry:!self->_retryDataTasks];
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v21 = [NSNumber numberWithUnsignedInteger:a5];
  [(NSMutableDictionary *)identifiersToTaskInfo setObject:v19 forKeyedSubscript:v21];

  v15[2](v15, 1);
}

- (void)uploadTaskWithRequest:(id)a3 originalRequest:(id)a4 fromFile:(id)a5 sandboxExtensionData:(id)a6 identifier:(unint64_t)a7 uniqueIdentifier:(id)a8 potentialCredentials:(id)a9 reply:(id)a10
{
  v16 = a3;
  v31 = a4;
  v17 = a5;
  v18 = a6;
  v30 = a8;
  v19 = a9;
  v20 = a10;
  v21 = qword_1000EB210;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [(NDNWBackgroundSession *)self uuid];
    v23 = [(NDNWBackgroundSession *)self descriptionForRequest:v16];
    *buf = 138544386;
    v34 = v22;
    v35 = 2114;
    v36 = v30;
    v37 = 2048;
    v38 = a7;
    v39 = 2112;
    v40 = v23;
    v41 = 2112;
    v42 = v17;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Task <%{public}@>.<%lu> uploadTaskWithRequest: %@ fromFile: %@", buf, 0x34u);
  }

  if (!v17)
  {
    v24 = 0;
    if (!v19)
    {
      goto LABEL_11;
    }

LABEL_8:
    v25 = +[Daemon sharedDaemon];
    v26 = [v25 isInSyncBubble];

    if ((v26 & 1) == 0 && self->_clientBundleID)
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10004B260;
      v32[3] = &unk_1000D5700;
      v32[4] = self;
      [v19 enumerateKeysAndObjectsUsingBlock:v32];
    }

    goto LABEL_11;
  }

  v24 = [(NDNWBackgroundSession *)self makeTempUploadFile:v17 withExtensionData:v18];
  if (!v24)
  {
    v20[2](v20, 0);
    goto LABEL_13;
  }

  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v27 = objc_alloc_init(__NSCFURLSessionTaskInfo);
  [v27 setTaskKind:1];
  [v27 setUniqueIdentifier:self->_uuid];
  [v27 setIdentifier:a7];
  [v27 setState:1];
  [v27 setOriginalRequest:v31];
  [v27 setCurrentRequest:v16];
  [v27 setBundleID:self->_clientBundleID];
  [v27 setSessionID:self->_identifier];
  [v27 setQos:qos_class_self()];
  [v27 setFileURL:v24];
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v29 = [NSNumber numberWithUnsignedInteger:a7];
  [(NSMutableDictionary *)identifiersToTaskInfo setObject:v27 forKeyedSubscript:v29];

  v20[2](v20, 1);
LABEL_13:
}

- (void)uploadTaskWithResumableUploadState:(id)a3 request:(id)a4 originalRequest:(id)a5 fromFile:(id)a6 sandboxExtensionData:(id)a7 identifier:(unint64_t)a8 uniqueIdentifier:(id)a9 potentialCredentials:(id)a10 reply:(id)a11
{
  v28 = a3;
  v29 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = qword_1000EB210;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(NDNWBackgroundSession *)self uuid];
    *buf = 138543874;
    v32 = v24;
    v33 = 2114;
    v34 = v20;
    v35 = 2048;
    v36 = a8;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Task <%{public}@>.<%lu> uploadTaskWithResumableUploadState", buf, 0x20u);
  }

  if (!v18)
  {
    v25 = 0;
    if (!v21)
    {
      goto LABEL_11;
    }

LABEL_8:
    v26 = +[Daemon sharedDaemon];
    v27 = [v26 isInSyncBubble];

    if ((v27 & 1) == 0 && self->_clientBundleID)
    {
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10004B75C;
      v30[3] = &unk_1000D5700;
      v30[4] = self;
      [v21 enumerateKeysAndObjectsUsingBlock:v30];
    }

    goto LABEL_11;
  }

  v25 = [(NDNWBackgroundSession *)self makeTempUploadFile:v18 withExtensionData:v19];
  if (!v25)
  {
    v22[2](v22, 0);
    goto LABEL_13;
  }

  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22[2](v22, 1);
LABEL_13:
}

- (void)downloadTaskWithRequest:(id)a3 originalRequest:(id)a4 downloadFilePath:(id)a5 identifier:(unint64_t)a6 uniqueIdentifier:(id)a7 reply:(id)a8
{
  v34 = a3;
  v32 = a4;
  v14 = a5;
  v33 = a7;
  v15 = a8;
  v16 = qword_1000EB210;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(NDNWBackgroundSession *)self uuid];
    v18 = [(NDNWBackgroundSession *)self descriptionForRequest:v34];
    *buf = 138544130;
    *&buf[4] = v17;
    *&buf[12] = 2114;
    *&buf[14] = v33;
    *&buf[22] = 2048;
    *&buf[24] = a6;
    v36 = 2112;
    v37 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Task <%{public}@>.<%lu> downloadTaskWithRequest: %@", buf, 0x2Au);
  }

  if (_CFN_isSafeRequestForBackgroundDownload())
  {
    [(NDNWBackgroundSession *)self ensureSessionDownloadDirectoryExists];
    v19 = objc_alloc_init(__NSCFURLSessionTaskInfo);
    [v19 setTaskKind:0];
    [v19 setUniqueIdentifier:self->_uuid];
    [v19 setIdentifier:a6];
    [v19 setState:1];
    [v19 setOriginalRequest:v32];
    [v19 setCurrentRequest:v34];
    [v19 setBundleID:self->_clientBundleID];
    [v19 setSessionID:self->_identifier];
    [v19 setQos:qos_class_self()];
    v20 = +[Daemon sharedDaemon];
    if ([v20 isPrivileged])
    {
      v21 = v14;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;

    if (v22)
    {
      v23 = [NSURL fileURLWithPath:v22 isDirectory:0];
      if (v23)
      {
        v24 = +[NSXPCConnection currentConnection];
        v20 = v24;
        if (v24)
        {
          [v24 auditToken];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v27 = [NDFileUtilities safeURLForDownload:v23 auditToken:buf];
        v26 = 1;
LABEL_19:
        [v19 setDownloadFileURL:v27];
        if (v26)
        {
        }

        identifiersToTaskInfo = self->_identifiersToTaskInfo;
        v29 = [NSNumber numberWithUnsignedInteger:a6];
        [(NSMutableDictionary *)identifiersToTaskInfo setObject:v19 forKeyedSubscript:v29];

        v15[2](v15, 1);
        goto LABEL_22;
      }

      v26 = 0;
    }

    else
    {
      v26 = 0;
      v23 = 0;
    }

    v27 = 0;
    goto LABEL_19;
  }

  v25 = qword_1000EB210;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v30 = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    *buf = 138543874;
    *&buf[4] = v30;
    *&buf[12] = 2112;
    *&buf[14] = v34;
    *&buf[22] = 2114;
    *&buf[24] = clientBundleID;
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Received an unsafe request for background download: %@ from %{public}@", buf, 0x20u);
  }

  v15[2](v15, 0);
LABEL_22:
}

- (void)downloadTaskWithResumeData:(id)a3 identifier:(unint64_t)a4 uniqueIdentifier:(id)a5 reply:(id)a6
{
  v9 = a6;
  v10 = [NWURLSessionDownloadResumeInfo infoWithResumeData:a3];
  v11 = [v10 currentRequest];
  if (v11 && (_CFN_isSafeRequestForBackgroundDownload() & 1) != 0)
  {
    [(NDNWBackgroundSession *)self ensureSessionDownloadDirectoryExists];
    v12 = objc_alloc_init(__NSCFURLSessionTaskInfo);
    [v12 setTaskKind:0];
    [v12 setUniqueIdentifier:self->_uuid];
    [v12 setIdentifier:a4];
    [v12 setState:1];
    [(NDNWBackgroundSession *)self configureTaskInfo:v12 withResumeInfo:v10];
    [v12 setBundleID:self->_clientBundleID];
    [v12 setSessionID:self->_identifier];
    [v12 setQos:qos_class_self()];
    v13 = [v10 tempFileName];

    if (v13)
    {
      v14 = [v10 tempFileName];
      v15 = [NSURL fileURLWithPath:v14 isDirectory:0 relativeToURL:self->_downloadDirectory];
      [v12 setDownloadFileURL:v15];

LABEL_20:
      [v12 setExpectingResumeCallback:1];
      identifiersToTaskInfo = self->_identifiersToTaskInfo;
      v25 = [NSNumber numberWithUnsignedInteger:a4];
      [(NSMutableDictionary *)identifiersToTaskInfo setObject:v12 forKeyedSubscript:v25];

      v9[2](v9, 1);
      goto LABEL_21;
    }

    v17 = +[Daemon sharedDaemon];
    if ([v17 isPrivileged])
    {
      v18 = [v10 fileURL];

      if (v18)
      {
        v19 = +[NSXPCConnection currentConnection];
        v17 = v19;
        if (v19)
        {
          [v19 auditToken];
        }

        else
        {
          memset(v26, 0, sizeof(v26));
        }

        v23 = [NDFileUtilities safeURLForDownload:v18 auditToken:v26];
        v20 = 1;
LABEL_17:
        [v12 setDownloadFileURL:{v23, v26[0], v26[1]}];
        if (v20)
        {
        }

        goto LABEL_20;
      }

      v20 = 0;
    }

    else
    {

      v20 = 0;
      v18 = 0;
    }

    v23 = 0;
    goto LABEL_17;
  }

  v16 = qword_1000EB210;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v21 = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    LODWORD(v26[0]) = 138543618;
    *(v26 + 4) = v21;
    WORD6(v26[0]) = 2114;
    *(v26 + 14) = clientBundleID;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Received a background download request from unsafe resume data from %{public}@", v26, 0x16u);
  }

  v9[2](v9, 0);
LABEL_21:
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
            v6 = [(NDNWBackgroundSession *)self uuid];
            clientBundleID = self->_clientBundleID;
            *buf = 138543618;
            v39 = v6;
            v40 = 2114;
            v41 = clientBundleID;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Not waking up client %{public}@ since session is obliterated", buf, 0x16u);
          }
        }

        else if ([(NDNWBackgroundSession *)self clientIsActive])
        {
          v5 = qword_1000EB210;
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [(NDNWBackgroundSession *)self uuid];
            v16 = self->_clientBundleID;
            *buf = 138543618;
            v39 = v15;
            v40 = 2114;
            v41 = v16;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Not waking up client %{public}@ since it's already connected", buf, 0x16u);
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
            v26 = [(NDNWBackgroundSession *)self uuid];
            *buf = 138543618;
            v39 = v26;
            v40 = 2114;
            v41 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Waking up the client app: %{public}@", buf, 0x16u);
          }

          clientApplication = self->_clientApplication;
          identifier = self->_identifier;
          v29 = [(NDNWBackgroundSession *)self uuid];
          v30 = [(NDApplication *)clientApplication wakeForSessionIdentifier:identifier withSessionUUID:v29 wakeRequirement:a3];

          if ((v30 & 1) == 0)
          {
            v31 = qword_1000EB210;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v34 = [(NDNWBackgroundSession *)self uuid];
              *buf = 138543618;
              v39 = v34;
              v40 = 2114;
              v41 = v24;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Failed to wake app: %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          v5 = qword_1000EB210;
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [(NDNWBackgroundSession *)self uuid];
            v33 = self->_clientBundleID;
            *buf = 138543618;
            v39 = v32;
            v40 = 2114;
            v41 = v33;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Not waking up client %{public}@ since background updates are not enabled", buf, 0x16u);
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
          v35[2] = sub_10004C90C;
          v35[3] = &unk_1000D6470;
          v35[4] = self;
          v35[5] = a3;
          [v12 performWake:v35 uponNotification:self->_clientBundleID sessionIdentifier:self->_identifier];
        }

        v5 = qword_1000EB210;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(NDNWBackgroundSession *)self uuid];
          v14 = self->_clientBundleID;
          *buf = 138543618;
          v39 = v13;
          v40 = 2114;
          v41 = v14;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Not waking up client %{public}@ since it doesn't support app wakes", buf, 0x16u);
        }
      }
    }

    else
    {
      v5 = qword_1000EB210;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(NDNWBackgroundSession *)self uuid];
        v11 = self->_clientBundleID;
        *buf = 138543618;
        v39 = v10;
        v40 = 2114;
        v41 = v11;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Not waking up client %{public}@ since sessionSendsLaunchEvents is NO", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = qword_1000EB210;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(NDNWBackgroundSession *)self uuid];
      v9 = self->_clientBundleID;
      *buf = 138543618;
      v39 = v8;
      v40 = 2114;
      v41 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Not waking up client %{public}@ since wake request is unnecessary", buf, 0x16u);
    }
  }
}

- (void)clientAcknowledgedTerminalCallbackForTask:(unint64_t)a3
{
  identifiersToTasks = self->_identifiersToTasks;
  v7 = [NSNumber numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)identifiersToTasks removeObjectForKey:?];

  v8 = [NSNumber numberWithUnsignedInteger:a3];
  [NDNWBackgroundSession queueUpdatesForTask:"queueUpdatesForTask:updateType:highPriority:" updateType:? highPriority:?];

  [(NDCallbackQueue *)self->_callbackQueue drainCallbacksForTaskIdentifier:a3];
  if (![(NDCallbackQueue *)self->_callbackQueue count]&& ![(NDNWBackgroundSession *)self sessionHasOutstandingTasks])
  {
    v6 = [(NDNWBackgroundSession *)self invalidateReply];

    if (v6)
    {
      v9 = [(NDNWBackgroundSession *)self invalidateReply];
      [(NDNWBackgroundSession *)self setInvalidateReply:0];
      [(NDNWBackgroundSession *)self cleanupSessionWithCompletionHandler:v9];
    }
  }
}

- (void)errorOccurredDuringAuthCallbackDelivery:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = [(NDNWBackgroundSession *)self uuid];
    v11 = 138543618;
    v12 = v10;
    v13 = 2112;
    v14 = v6;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Encountered error %@ error delivering auth challenge to client, performing default handling", &v11, 0x16u);
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
    v7 = [(NDNWBackgroundSession *)self uuid];
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v4;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Encountered error %@ during task completion callback delivery", &v8, 0x16u);
  }

  clientProxy = self->_clientProxy;
  self->_clientProxy = 0;

  if (![(NDNWBackgroundSession *)self sessionHasOutstandingTasks])
  {
    [(NDNWBackgroundSession *)self wakeUpClient:1];
  }
}

- (void)taskMonitor:(id)a3 terminateTask:(unint64_t)a4 reason:(int)a5
{
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v9 = [NSNumber numberWithUnsignedInteger:a4];
  v14 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v9];

  v10 = [[NWURLError alloc] initWithErrorCode:-999];
  v11 = [v14 currentRequest];
  v12 = [v11 URL];
  [v10 setFailingURL:v12];

  if (a5 == 1)
  {
    v13 = &off_1000D89C8;
  }

  else
  {
    if (a5 != 2)
    {
      goto LABEL_6;
    }

    v13 = &off_1000D89E0;
  }

  [v10 setBackgroundTaskCancelledReason:v13];
LABEL_6:
  [(NDNWBackgroundSession *)self _cancelTaskWithIdentifier:a4 error:v10];
}

- (void)taskMonitor:(id)a3 retryTask:(unint64_t)a4 reason:(int)a5
{
  identifiersToTasks = self->_identifiersToTasks;
  v6 = [NSNumber numberWithUnsignedInteger:a4];
  v10 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v6];

  if (v10)
  {
    v7 = [[NWURLError alloc] initWithErrorCode:-999];
    v8 = [v10 currentRequest];
    v9 = [v8 URL];
    [v7 setFailingURL:v9];

    [v7 setBackgroundTaskCancelledReason:&off_1000D89B0];
    [v10 stopAndRetryWithError:v7];
  }
}

- (void)taskMonitor:(id)a3 updateTaskPriority:(unint64_t)a4 reason:(int)a5
{
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:a4];
  v13 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  v9 = v13;
  if (v13)
  {
    identifiersToTaskInfo = self->_identifiersToTaskInfo;
    v11 = [NSNumber numberWithUnsignedInteger:a4];
    v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

    [v13 setBackgroundSchedulingPriority:{-[NDNWBackgroundSession backgroundSchedulingPriorityWithTaskInfo:](self, "backgroundSchedulingPriorityWithTaskInfo:", v12)}];
    v9 = v13;
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
      v13 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543618;
      v16 = v13;
      v17 = 2048;
      v18 = [v6 taskIdentifier];
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> is blocked due to tracker policy", buf, 0x16u);
    }

    v11 = [[NWURLError alloc] initWithErrorCode:-1004];
    [v11 setFailingURL:v7];
    -[NDNWBackgroundSession _cancelTaskWithIdentifier:error:](self, "_cancelTaskWithIdentifier:error:", [v6 taskIdentifier], v11);
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
    v9 = [(NDNWBackgroundSession *)self uuid];
    *buf = 138543618;
    v17 = v9;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Created stream with file descriptor: %d", buf, 0x12u);
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
      v32 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543874;
      v47 = v32;
      v48 = 2112;
      v49 = v6;
      v50 = 2048;
      v51 = v10;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Consumed sandbox extension for file %@, extension = %lld", buf, 0x20u);
    }

    if (v10 < 0)
    {
      v33 = qword_1000EB210;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v43 = [(NDNWBackgroundSession *)self uuid];
        *buf = 138543874;
        v47 = v43;
        v48 = 2080;
        v49 = v8;
        v50 = 2112;
        v51 = v6;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Failed to consume sandbox extension %s for fileURL %@", buf, 0x20u);
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
        v34 = [(NDNWBackgroundSession *)self uuid];
        *buf = 138543618;
        v47 = v34;
        v48 = 1024;
        LODWORD(v49) = v16;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Error cloning file: %{errno}d", buf, 0x12u);
      }

      goto LABEL_37;
    }

    v17 = qword_1000EB210;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543362;
      v47 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Falling back to copy", buf, 0xCu);
    }

    v19 = v14;
    v20 = open([v14 fileSystemRepresentation], 513, 384);
    if (v20 == -1)
    {
      v23 = qword_1000EB210;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v40 = [(NDNWBackgroundSession *)self uuid];
        v41 = *__error();
        *buf = 138543618;
        v47 = v40;
        v48 = 1024;
        LODWORD(v49) = v41;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Error creating file: %{errno}d", buf, 0x12u);
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
        v38 = [(NDNWBackgroundSession *)self uuid];
        v39 = *__error();
        *buf = 138543618;
        v47 = v38;
        v48 = 1024;
        LODWORD(v49) = v39;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Error copying file: %{errno}d", buf, 0x12u);
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
      v36 = [(NDNWBackgroundSession *)self uuid];
      v37 = [v23 code];
      *buf = 138543874;
      v47 = v36;
      v48 = 2112;
      v49 = v23;
      v50 = 2048;
      v51 = v37;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Error checking resource value: %@ [%ld]", buf, 0x20u);
    }

    goto LABEL_21;
  }

  if ([v25 BOOLValue])
  {
    v26 = qword_1000EB210;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v42 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543362;
      v47 = v42;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> File is a symlink", buf, 0xCu);
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
      v29 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543618;
      v47 = v29;
      v48 = 2048;
      v49 = v10;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Released sandbox extension %lld", buf, 0x16u);
    }
  }

  v14 = v14;

  v30 = v14;
LABEL_38:

  return v30;
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

- (void)_resumeTask:(unint64_t)a3
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
      v16 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138544130;
      v22 = v16;
      v23 = 2048;
      v24 = a3;
      v25 = 2112;
      v26 = v7;
      v27 = 2112;
      v28 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> cannot resume because task: %@ or taskInfo: %@ is nil", buf, 0x2Au);
    }
  }

  else
  {
    workQueue = self->_workQueue;
    v14 = [v10 qos];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10004DFF8;
    v17[3] = &unk_1000D6498;
    v17[4] = self;
    v20 = a3;
    v18 = v10;
    v19 = v7;
    v15 = dispatch_block_create_with_qos_class(0, v14, 0, v17);
    dispatch_async(workQueue, v15);
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

- (void)startMonitorForTask:(unint64_t)a3
{
  identifiersToTasks = self->_identifiersToTasks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v17 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v6];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v8];

  identifiersToMonitors = self->_identifiersToMonitors;
  v11 = [NSNumber numberWithUnsignedInteger:a3];
  v12 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v11];

  if (!v12)
  {
    v13 = [v9 isDiscretionary];
    if (self->_discretionary)
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    if (self->_infersDiscretionary || [(NDApplication *)self->_clientApplication canBeSuspended])
    {
      v14 |= 4uLL;
    }

    v12 = -[NDTaskMonitor initWithDelegate:taskInfo:clientBundleIdentifier:secondaryIdentifier:monitoredApplication:priority:options:queue:]([NDTaskMonitor alloc], "initWithDelegate:taskInfo:clientBundleIdentifier:secondaryIdentifier:monitoredApplication:priority:options:queue:", self, v9, self->_clientBundleID, self->_secondaryID, self->_monitoredApplication, [v9 basePriority], v14, self->_workQueue);
    v15 = self->_identifiersToMonitors;
    v16 = [NSNumber numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v15 setObject:v12 forKeyedSubscript:v16];
  }

  [(NDTaskMonitor *)v12 taskWillResume];
  sub_10006E114(0, self->_clientBundleID, self->_identifier, self->_monitoredAppBundleID, self->_secondaryID, v17, v9);
}

- (BOOL)currentDiscretionaryStatusWithOptionalTaskInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 discretionaryOverride])
  {
    v8 = self->_clientApplication;
    if (self->_infersDiscretionary)
    {
      monitoredApplication = self->_monitoredApplication;
      if (monitoredApplication)
      {
        v15 = monitoredApplication;

        v8 = v15;
      }
    }

    xpcConn = self->_xpcConn;
    if (xpcConn)
    {
      v17 = [(NSXPCConnection *)xpcConn _xpcConnection];
      if (xpc_connection_is_extension())
      {
        discretionary = self->_discretionary;

        if (!discretionary)
        {
          v19 = qword_1000EB210;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [(NDNWBackgroundSession *)self uuid];
            v21 = [v5 identifier];
            v22 = [(NDApplication *)self->_clientApplication bundleIdentifier];
            v36 = 138543874;
            v37 = v20;
            v38 = 2048;
            v39 = v21;
            v40 = 2114;
            v41 = v22;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> current discretionary status for %{public}@ is non-discretionary because the connected client is an extension", &v36, 0x20u);
          }

          goto LABEL_29;
        }
      }

      else
      {
      }
    }

    v23 = +[Daemon sharedDaemon];
    v24 = [v23 isInSyncBubble];

    if (v24)
    {
      v19 = qword_1000EB210;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(NDNWBackgroundSession *)self uuid];
        v26 = [v5 identifier];
        v27 = [(NDApplication *)v8 bundleIdentifier];
        v36 = 138543874;
        v37 = v25;
        v38 = 2048;
        v39 = v26;
        v40 = 2114;
        v41 = v27;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> current discretionary status for %{public}@ is non-discretionary, since nsurlsessiond is running in EDU sync mode", &v36, 0x20u);
      }
    }

    else
    {
      if (self->_discretionary || [(NDApplication *)v8 hasForegroundBackgroundStates]&& ![(NDApplication *)v8 isForeground]&& ![(NDApplication *)v8 hasBackgroundTaskCompletion])
      {
        v19 = qword_1000EB210;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [(NDNWBackgroundSession *)self uuid];
          v29 = [v5 identifier];
          v30 = [(NDApplication *)v8 bundleIdentifier];
          v31 = self->_discretionary;
          v36 = 138544130;
          v37 = v28;
          v38 = 2048;
          v39 = v29;
          v40 = 2114;
          v41 = v30;
          v42 = 1024;
          v43 = v31;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> current discretionary status for %{public}@ is discretionary (opt-in: %d)", &v36, 0x26u);
        }

        v7 = 1;
        goto LABEL_30;
      }

      v19 = qword_1000EB210;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [(NDNWBackgroundSession *)self uuid];
        v33 = [v5 identifier];
        v34 = [(NDApplication *)v8 bundleIdentifier];
        v36 = 138543874;
        v37 = v32;
        v38 = 2048;
        v39 = v33;
        v40 = 2114;
        v41 = v34;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> current discretionary status for %{public}@ is non-discretionary", &v36, 0x20u);
      }
    }

LABEL_29:
    v7 = 0;
LABEL_30:

    goto LABEL_31;
  }

  v6 = [v5 discretionaryOverride];
  v7 = v6 == 1;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NDNWBackgroundSession *)self uuid];
    v10 = [v5 identifier];
    v11 = [(NDApplication *)self->_clientApplication bundleIdentifier];
    v12 = v11;
    v36 = 138544130;
    if (v6 == 1)
    {
      v13 = 89;
    }

    else
    {
      v13 = 78;
    }

    v37 = v9;
    v38 = 2048;
    v39 = v10;
    v40 = 2114;
    v41 = v11;
    v42 = 1024;
    v43 = v13;
    _os_log_impl(&_mh_execute_header, &v8->super, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> for %{public}@ is overriding discretionary status - forcing to %c", &v36, 0x26u);
  }

LABEL_31:

  return v7;
}

- (id)getTasksForReconnection
{
  v3 = [(NSMutableDictionary *)self->_identifiersToTaskInfo copy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004EC38;
  v8[3] = &unk_1000D56B0;
  v8[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NDNWBackgroundSession *)self uuid];
    identifier = self->_identifier;
    *buf = 138543874;
    v10 = v5;
    v11 = 2112;
    v12 = identifier;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Session: %@ get tasks for reconnection: %@", buf, 0x20u);
  }

  return v3;
}

- (void)triggerPowerlogPeriodicUpdate
{
  identifiersToTasks = self->_identifiersToTasks;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004ED3C;
  v3[3] = &unk_1000D56D8;
  v3[4] = self;
  [(NSMutableDictionary *)identifiersToTasks enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)fillInByteCountsForTaskInfo:(id)a3 withTaskID:(id)a4
{
  v8 = a3;
  v6 = [(NSMutableDictionary *)self->_identifiersToTasks objectForKeyedSubscript:a4];
  v7 = v6;
  if (v6)
  {
    [v8 setCountOfBytesSent:{objc_msgSend(v6, "countOfBytesSent")}];
    [v8 setCountOfBytesReceived:{objc_msgSend(v7, "countOfBytesReceived")}];
    [v8 setCountOfBytesExpectedToSend:{objc_msgSend(v7, "countOfBytesExpectedToSend")}];
    [v8 setCountOfBytesExpectedToReceive:{objc_msgSend(v7, "countOfBytesExpectedToReceive")}];
  }
}

- (void)allowReconnect
{
  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004EF2C;
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
  v26[2] = sub_10004F4C4;
  v26[3] = &unk_1000D5F80;
  v26[4] = self;
  v8 = v6;
  v27 = v8;
  v9 = v7;
  v28 = v9;
  v10 = objc_retainBlock(v26);
  clientApplication = self->_clientApplication;
  identifier = self->_identifier;
  v13 = [(NDNWBackgroundSession *)self uuid];
  v14 = [(NDApplication *)clientApplication isHandlingBackgroundURLSessionWithIdentifier:identifier withSessionUUID:v13];

  LOBYTE(identifier) = self->_hasBeenSignalledToDeliverPendingEvents;
  v15 = qword_1000EB210;
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if ((identifier & 1) != 0 || v14 != 1)
  {
    if (v16)
    {
      v22 = [(NDNWBackgroundSession *)self uuid];
      clientBundleID = self->_clientBundleID;
      v24 = self->_identifier;
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
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Delivering pending events immediately for client session: <%{public}@>.<%@>. Signalled already: %d, isHandlingBackgroundSession: %d", buf, 0x2Cu);
    }

    self->_hasBeenSignalledToDeliverPendingEvents = 0;
    (v10[2])(v10);
  }

  else
  {
    if (v16)
    {
      v17 = [(NDNWBackgroundSession *)self uuid];
      v18 = self->_clientBundleID;
      v19 = self->_identifier;
      *buf = 138543874;
      v30 = v17;
      v31 = 2114;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Waiting for notification to deliver pending events for client session: <%{public}@>.<%@>", buf, 0x20u);
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
    v4 = [(NDNWBackgroundSession *)self uuid];
    v5 = v4;
    clientBundleID = self->_clientBundleID;
    if (self->_xpcConn)
    {
      v7 = 89;
    }

    else
    {
      v7 = 78;
    }

    if (self->_clientProxy)
    {
      v8 = 89;
    }

    else
    {
      v8 = 78;
    }

    identifier = self->_identifier;
    v17 = 138544386;
    v18 = v4;
    v19 = 2114;
    v20 = clientBundleID;
    v21 = 1024;
    v22 = v7;
    v23 = 1024;
    v24 = v8;
    v25 = 2112;
    v26 = identifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> client %{public}@ disconnected, XPC(%c) proxy(%c) for %@", &v17, 0x2Cu);
  }

  clientProxy = self->_clientProxy;
  if (clientProxy)
  {
    self->_clientProxy = 0;

    self->_clientPID = -1;
    [(NDNWBackgroundSession *)self cancelTasksRequiringClientConnectionAndResumeUnstartedTasks];
    if (![(NDNWBackgroundSession *)self sessionHasOutstandingTasks]&& ![(NDCallbackQueue *)self->_callbackQueue count])
    {
      [(NDNWBackgroundSession *)self cleanupSessionWithCompletionHandler:0];
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

  [(NDNWBackgroundSession *)self setInvalidateReply:0];
  v14 = [(NDTaskStorageDB *)self->_tasksDB _getOptionsForBundleID:self->_clientBundleID sessionID:self->_identifier];
  v15 = [v14 mutableCopy];
  v16 = +[NSDate now];
  [v15 setObject:v16 forKeyedSubscript:@"NSURLSessionLastDisconnectDateKey"];

  [(NDTaskStorageDB *)self->_tasksDB _updateOptionsForBundleID:self->_clientBundleID sessionID:self->_identifier with:v15];
}

- (void)cancelTasksRequiringClientConnectionAndResumeUnstartedTasks
{
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004F878;
  v3[3] = &unk_1000D56B0;
  v3[4] = self;
  [(NSMutableDictionary *)identifiersToTaskInfo enumerateKeysAndObjectsUsingBlock:v3];
}

- (BOOL)finalizeTaskCompletionWithSuppressedWake:(BOOL)a3
{
  if (![(NDNWBackgroundSession *)self sessionHasOutstandingTasks]&& ![(NDNWBackgroundSession *)self clientIsActive])
  {
    if (!a3)
    {
      v5 = 1;
      [(NDNWBackgroundSession *)self wakeUpClient:1];
      return v5;
    }

    if (![(NDCallbackQueue *)self->_callbackQueue count])
    {
      [(NDNWBackgroundSession *)self cleanupSessionWithCompletionHandler:0];
    }
  }

  return 0;
}

- (BOOL)clientIsActive
{
  clientProxy = self->_clientProxy;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NDNWBackgroundSession *)self uuid];
    v6 = v5;
    clientBundleID = self->_clientBundleID;
    if (clientProxy)
    {
      v8 = 89;
    }

    else
    {
      v8 = 78;
    }

    if (self->_xpcConn)
    {
      v9 = 89;
    }

    else
    {
      v9 = 78;
    }

    identifier = self->_identifier;
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
    v18 = v8;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v11;
    v23 = 2112;
    v24 = identifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> client %{public}@ is active result (%c), XPC(%c) proxy(%c) for %@", &v13, 0x32u);
  }

  return clientProxy != 0;
}

- (BOOL)sessionHasOutstandingTasks
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NDNWBackgroundSession *)self uuid];
    v5 = [(NSMutableDictionary *)self->_identifiersToTasks count];
    v7 = 138543618;
    v8 = v4;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> has %lu outstanding tasks", &v7, 0x16u);
  }

  return [(NSMutableDictionary *)self->_identifiersToTasks count]!= 0;
}

- (void)removeUploadFileForTaskInfo:(id)a3
{
  v3 = [a3 fileURL];
  [NDFileUtilities removeItemAtURL:?];
}

- (void)removeDownloadFileForTaskInfo:(id)a3
{
  v3 = [NDNWBackgroundSession downloadFileURLFormTaskInfo:a3];
  if (v3)
  {
    [NDFileUtilities removeItemAtURL:v3];
  }
}

- (void)statusMonitor:(id)a3 callbackForIdentifier:(unint64_t)a4 networkChanged:(BOOL)a5
{
  workQueue = self->_workQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004FEE4;
  v6[3] = &unk_1000D6470;
  v6[4] = self;
  v6[5] = a4;
  dispatch_async(workQueue, v6);
}

- (id)restoreTasks:(BOOL *)a3
{
  v5 = +[NSMutableArray array];
  v6 = [(NDNWBackgroundSession *)self restoreTasksFromSqliteDB:v5];
  v7 = [(NSMutableDictionary *)self->_identifiersToTaskInfo count];
  if (!v7)
  {
    [(NDNWBackgroundSession *)self cleanupSessionWithCompletionHandler:0];
  }

  if (a3)
  {
    *a3 = v7 == 0;
  }

  if (v7)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = self->_identifiersToTaskInfo;
    v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [(NDNWBackgroundSession *)self queueUpdatesForTask:*(*(&v13 + 1) + 8 * i) updateType:14 highPriority:1, v13];
        }

        v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    if ([v5 count])
    {
      [(NDTaskStorageDB *)self->_tasksDB _deleteTaskEntriesWithIdentifiers:v5 forSession:self->_identifier sessionUUID:self->_uuid];
    }
  }

  if ([(NSMutableDictionary *)self->_identifiersToTaskInfo count]&& ![(NDNWBackgroundSession *)self sessionHasOutstandingTasks]&& self->_sendsLaunchEvents && ![(NDApplication *)self->_clientApplication canBeSuspended])
  {
    [(NDNWBackgroundSession *)self wakeUpClient:2];
  }

  return v6;
}

- (id)restoreTasksFromSqliteDB:(id)a3
{
  v57 = a3;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NDNWBackgroundSession *)self uuid];
    *buf = 138543362;
    v66 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> restoreTasksFromSqliteDB", buf, 0xCu);
  }

  tasksDB = self->_tasksDB;
  if (tasksDB)
  {
    v7 = [(NDTaskStorageDB *)tasksDB _getAllTasksFromDBForSession:self->_identifier sessionUUID:self->_uuid];
  }

  else
  {
    v7 = 0;
  }

  v55 = +[NSMutableArray array];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v8)
  {
    v59 = *v62;
    do
    {
      v9 = 0;
      do
      {
        if (*v62 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v61 + 1) + 8 * v9);
        if (v10)
        {
          v11 = [*(*(&v61 + 1) + 8 * v9) downloadFileURL];
          v12 = v11 == 0;

          if (!v12)
          {
            v13 = [v10 downloadFileURL];
            v14 = +[Daemon sharedDaemon];
            if (([v14 isPrivileged]& 1) != 0)
            {
              goto LABEL_14;
            }

            v15 = [v13 path];
            v16 = [(NSURL *)self->_downloadDirectory path];
            v17 = [v15 hasPrefix:v16];

            if ((v17 & 1) == 0)
            {
              v33 = qword_1000EB210;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = [(NDNWBackgroundSession *)self uuid];
                clientBundleID = self->_clientBundleID;
                v36 = [(NSURL *)self->_downloadDirectory path];
                v37 = [v13 path];
                *buf = 138544130;
                v66 = v34;
                v67 = 2114;
                v68 = clientBundleID;
                v69 = 2112;
                v70 = v36;
                v71 = 2112;
                v72 = v37;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Download directory for bundle %{public}@ has moved to %@, but saved download file path is %@. Need to fix download path", buf, 0x2Au);
              }

              downloadDirectory = self->_downloadDirectory;
              v39 = [v13 lastPathComponent];
              v40 = [(NSURL *)downloadDirectory URLByAppendingPathComponent:v39];
              [v10 setDownloadFileURL:v40];

              v14 = qword_1000EB210;
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                v41 = [(NDNWBackgroundSession *)self uuid];
                v42 = [v10 downloadFileURL];
                v43 = [v42 path];
                *buf = 138543618;
                v66 = v41;
                v67 = 2112;
                v68 = v43;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> New download path: %@", buf, 0x16u);
              }

LABEL_14:
            }
          }

          v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 identifier]);
          if ([v10 shouldCancelOnDisconnect] && objc_msgSend(v10, "state") <= 2)
          {
            [v10 setState:3];
            v19 = [[NWURLError alloc] initWithErrorCode:-997];
            v20 = [v10 currentRequest];
            v21 = [v20 URL];
            [v19 setFailingURL:v21];

            [v10 setError:v19];
            v22 = qword_1000EB210;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v56 = [(NDNWBackgroundSession *)self uuid];
              v44 = [v10 identifier];
              v45 = [v10 error];
              v46 = [v10 error];
              v47 = [v46 code];
              *buf = 138544130;
              v66 = v56;
              v67 = 2048;
              v68 = v44;
              v69 = 2112;
              v70 = v45;
              v71 = 2048;
              v72 = v47;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> completed with error %@ [%ld] (was active before nsurlsessiond exit)", buf, 0x2Au);
            }
          }

          if ([v10 state] == 2)
          {
            [v10 setState:3];
            v23 = [[NWURLError alloc] initWithErrorCode:-999];
            v24 = [v10 currentRequest];
            v25 = [v24 URL];
            [v23 setFailingURL:v25];

            [v10 setError:v23];
          }

          if (([v10 hasStarted] & 1) == 0)
          {
            v26 = [v10 bundleID];
            v27 = [v26 isEqualToString:@"com.apple.mobileassetd"];

            if (v27)
            {
              [v10 setHasStarted:1];
              [v10 setState:3];
              v28 = [[NWURLError alloc] initWithErrorCode:-1001];
              v29 = [v10 currentRequest];
              v30 = [v29 URL];
              [v28 setFailingURL:v30];

              [v10 setError:v28];
              v31 = qword_1000EB210;
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v50 = [(NDNWBackgroundSession *)self uuid];
                v51 = [v10 identifier];
                *buf = 138543618;
                v66 = v50;
                v67 = 2048;
                v68 = v51;
                _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> restored but never started, terminating with timeout", buf, 0x16u);
              }
            }
          }

          if ([v10 state] == 3)
          {
            [(NDNWBackgroundSession *)self restoreCompletedTask:v10];
            goto LABEL_32;
          }

          if ([v10 hasStarted])
          {
LABEL_32:
            [(NSMutableDictionary *)self->_identifiersToTaskInfo setObject:v10 forKeyedSubscript:v18];
          }

          else
          {
            v32 = qword_1000EB210;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v48 = [(NDNWBackgroundSession *)self uuid];
              v49 = [v10 identifier];
              *buf = 138543618;
              v66 = v48;
              v67 = 2048;
              v68 = v49;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> not restoring, which had never been started", buf, 0x16u);
            }

            [v57 addObject:v18];
          }
        }

        v9 = v9 + 1;
      }

      while (v8 != v9);
      v52 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
      v8 = v52;
    }

    while (v52);
  }

  workQueue = self->_workQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050B98;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(workQueue, block);

  return v55;
}

- (void)restoreCompletedTask:(id)a3
{
  v26 = self;
  v3 = a3;
  v4 = [NDNWBackgroundSession downloadFileURLFormTaskInfo:v3];
  v5 = v4;
  if (v4 && [v4 checkResourceIsReachableAndReturnError:0])
  {
    v6 = qword_1000EB210;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v25 = [(NDNWBackgroundSession *)v26 uuid];
      *buf = 138543874;
      v31 = v25;
      v32 = 2048;
      v33 = [v3 identifier];
      v34 = 2112;
      v35 = v5;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "NDNWSession <%{public}@> <%zu> is being restored as completed with download file still at %@", buf, 0x20u);
    }

    v7 = [PendingCallback alloc];
    v8 = [v3 identifier];
    v29[0] = v3;
    v9 = [v3 response];
    v10 = v9;
    if (!v9)
    {
      v10 = +[NSNull null];
    }

    v29[1] = v10;
    v11 = [NSArray arrayWithObjects:v29 count:2, v26];
    v12 = [(PendingCallback *)v7 initWithCallbackType:1 taskIdentifier:v8 args:v11];

    if (!v9)
    {
    }

    [(NDCallbackQueue *)v26->_callbackQueue addPendingCallback:v12 wakeRequirement:0];
  }

  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = [v3 _backgroundTrailers];
  v15 = v14 == 0;

  if (!v15)
  {
    v16 = [v3 _backgroundTrailers];
    [v13 setObject:v16 forKeyedSubscript:@"trailers"];
  }

  v17 = [PendingCallback alloc];
  v18 = [v3 identifier];
  v19 = [v3 error];
  v20 = v19;
  if (!v19)
  {
    v20 = +[NSNull null];
  }

  v21 = [v3 taskMetrics];
  v22 = v21;
  if (!v21)
  {
    v22 = +[NSNull null];
  }

  v28[1] = v22;
  v28[2] = v13;
  v23 = [NSArray arrayWithObjects:v28 count:3];
  v24 = [(PendingCallback *)v17 initWithCallbackType:0 taskIdentifier:v18 args:v23];

  if (!v21)
  {
  }

  if (!v19)
  {
  }

  [*(v27 + 224) addPendingCallback:v24 wakeRequirement:0];
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
        v7 = [(NDNWBackgroundSession *)self uuid];
        clientBundleID = self->_clientBundleID;
        identifier = self->_identifier;
        v10 = [(NSURL *)self->_downloadDirectory path];
        v11 = 138544130;
        v12 = v7;
        v13 = 2114;
        v14 = clientBundleID;
        v15 = 2112;
        v16 = identifier;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Session <%{public}@>.<%@> download path %@ did not exist, recreating.", &v11, 0x2Au);
      }

      [NDFileUtilities createDirectoryAtURL:self->_downloadDirectory];
    }
  }
}

- (void)_cancelTaskWithIdentifier:(unint64_t)a3 error:(id)a4
{
  v12 = a4;
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  v8 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v7];

  if (v8)
  {
    [v8 setError:v12];
    [v8 setState:2];
    identifiersToTasks = self->_identifiersToTasks;
    v10 = [NSNumber numberWithUnsignedInteger:a3];
    v11 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v10];

    if (v11)
    {
      [v11 cancel];
    }

    else
    {
      [(NDNWBackgroundSession *)self restoreCompletedTask:v8];
    }
  }
}

- (void)startTasksIfAllowed
{
  if ([(NSMutableDictionary *)self->_identifiersToTasks count]<= 7)
  {
    *&v3 = -1;
    *(&v3 + 1) = -1;
    v11[0] = v3;
    v11[1] = v3;
    identifiersToTaskInfo = self->_identifiersToTaskInfo;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000513F0;
    v10[3] = &unk_1000D5688;
    v10[4] = v11;
    [(NSMutableDictionary *)identifiersToTaskInfo enumerateKeysAndObjectsUsingBlock:v10];
    for (i = 0; i != 32; i += 4)
    {
      if (*(v11 + i) == -1)
      {
        break;
      }

      identifiersToTasks = self->_identifiersToTasks;
      v7 = [NSNumber numberWithUnsignedInt:?];
      v8 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v7];
      LODWORD(identifiersToTasks) = v8 == 0;

      if (identifiersToTasks)
      {
        v9 = [(NDNWBackgroundSession *)self createTaskIfNeeded:*(v11 + i)];
        [(NDNWBackgroundSession *)self _resumeTask:*(v11 + i)];
      }
    }
  }
}

- (id)taskWithTaskInfo:(id)a3
{
  v5 = a3;
  v6 = [v5 taskKind];
  v7 = 0;
  if (v6 > 2)
  {
    if ((v6 - 3) < 3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  switch(v6)
  {
    case 0:
      v8 = objc_alloc_init(NWURLSessionDownloadResumeInfo);
      [(NDNWBackgroundSession *)self configureResumeInfo:v8 withTaskInfo:v5];
      v10 = [NDNWBackgroundSession downloadFileURLFormTaskInfo:v5];
      [v8 setFileURL:v10];

      v9 = [(NSURLSession *)self->_session downloadTaskWithResumeInfo:v8];
      goto LABEL_15;
    case 1:
      v8 = objc_alloc_init(NWURLSessionUploadResumeInfo);
      [(NDNWBackgroundSession *)self configureResumeInfo:v8 withTaskInfo:v5];
      v11 = [v5 resumableUploadData];
      if (v11)
      {
        v12 = objc_opt_class();
        v3 = [v5 resumableUploadData];
        v13 = [NSKeyedUnarchiver unarchivedObjectOfClass:v12 fromData:v3 error:0];
      }

      else
      {
        v13 = 0;
      }

      [v8 setResumeURL:v13];
      if (v11)
      {
      }

      v14 = [v5 fileURL];
      [v8 setFileURL:v14];

      v9 = [(NSURLSession *)self->_session uploadTaskWithResumeInfo:v8];
      goto LABEL_15;
    case 2:
      v8 = objc_alloc_init(NWURLSessionResumeInfo);
      [(NDNWBackgroundSession *)self configureResumeInfo:v8 withTaskInfo:v5];
      v9 = [(NSURLSession *)self->_session dataTaskWithResumeInfo:v8];
LABEL_15:
      v7 = v9;

      break;
  }

LABEL_16:
  [(NDNWBackgroundSession *)self configureTask:v7 withTaskInfo:v5];
LABEL_17:

  return v7;
}

- (void)configureTaskInfo:(id)a3 withResumeInfo:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = [v5 originalRequest];
  [v11 setOriginalRequest:v6];

  v7 = [v5 currentRequest];
  [v11 setCurrentRequest:v7];

  v8 = [v5 response];
  [v11 setResponse:v8];

  v9 = [v5 earliestBeginDate];
  [v11 setEarliestBeginDate:v9];

  [v11 setCountOfBytesClientExpectsToSend:{objc_msgSend(v5, "countOfBytesClientExpectsToSend")}];
  [v11 setCountOfBytesClientExpectsToReceive:{objc_msgSend(v5, "countOfBytesClientExpectsToReceive")}];
  v10 = [v5 taskDescription];
  [v11 setTaskDescription:v10];

  [v11 setIdentifier:{objc_msgSend(v5, "taskIdentifier")}];
  [v5 startTime];
  [v11 setCreationTime:?];
}

- (void)configureTask:(id)a3 withTaskInfo:(id)a4
{
  v7 = a3;
  v6 = a4;
  [v7 setAutomaticRetry:1];
  [v7 setBackgroundSchedulingPriority:{-[NDNWBackgroundSession backgroundSchedulingPriorityWithTaskInfo:](self, "backgroundSchedulingPriorityWithTaskInfo:", v6)}];
  [(NDApplication *)self->_clientApplication currentRequestDelay];
  [v7 setBackgroundSchedulingDelay:?];
}

- (int64_t)backgroundSchedulingPriorityWithTaskInfo:(id)a3
{
  if (![(NDNWBackgroundSession *)self currentDiscretionaryStatusWithOptionalTaskInfo:a3])
  {
    return 1;
  }

  if (self->_discretionary)
  {
    return 3;
  }

  return 2;
}

- (void)configureResumeInfo:(id)a3 withTaskInfo:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [v6 originalRequest];
  [v17 setOriginalRequest:v7];

  v8 = [v6 currentRequest];
  [v17 setCurrentRequest:v8];

  v9 = [v6 response];
  [v17 setResponse:v9];

  v10 = [v6 earliestBeginDate];
  [v17 setEarliestBeginDate:v10];

  [v17 setCountOfBytesClientExpectsToSend:{objc_msgSend(v6, "countOfBytesClientExpectsToSend")}];
  [v17 setCountOfBytesClientExpectsToReceive:{objc_msgSend(v6, "countOfBytesClientExpectsToReceive")}];
  v11 = [v6 taskDescription];
  [v17 setTaskDescription:v11];

  [v17 setTaskIdentifier:{objc_msgSend(v6, "identifier")}];
  [v6 creationTime];
  [v17 setStartTime:?];
  [v6 setDiscretionary:{-[NDNWBackgroundSession currentDiscretionaryStatusWithOptionalTaskInfo:](self, "currentDiscretionaryStatusWithOptionalTaskInfo:", 0)}];
  v12 = [v6 additionalProperties];

  if (v12)
  {
    v13 = [v6 additionalProperties];
    v14 = [v13 objectForKeyedSubscript:@"cookies"];

    if (v14)
    {
      v15 = [v17 currentRequest];
      v16 = [v15 mutableCopy];

      [v16 setValue:v14 forHTTPHeaderField:@"Cookie"];
      [v17 setCurrentRequest:v16];
    }
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
          v51 = [(NDNWBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543618;
          *(v60 + 4) = v51;
          WORD6(v60[0]) = 2112;
          *(v60 + 14) = @"com.apple.private.nsurlsession.impersonate";
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _sourceApplicationBundleIdentifier but is missing the %@ entitlement", v60, 0x16u);
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
          v52 = [(NDNWBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543618;
          *(v60 + 4) = v52;
          WORD6(v60[0]) = 2112;
          *(v60 + 14) = @"com.apple.private.nsurlsession.impersonate";
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _sourceApplicationSecondaryIdentifier but is missing the %@ entitlement", v60, 0x16u);
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
          v53 = [(NDNWBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543618;
          *(v60 + 4) = v53;
          WORD6(v60[0]) = 2112;
          *(v60 + 14) = @"com.apple.private.nsurlsession.impersonate";
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _sourceApplicationAuditTokenData but is missing the %@ entitlement", v60, 0x16u);
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
        v56 = [(NDNWBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = v56;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = @"com.apple.private.nsurlsession.allow-discretionary-cellular";
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _respectsAllowsCellularAccessForDiscretionaryTasks but is missing the %@ entitlement", v60, 0x16u);
      }
    }

    if ([v7 _allowsPowerNapScheduling] && (sub_100008D00(v5, @"com.apple.private.dark-wake-network-reachability") & 1) == 0)
    {
      [v7 set_allowsPowerNapScheduling:0];
      v18 = qword_1000EB210;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v57 = [(NDNWBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = v57;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = @"com.apple.private.dark-wake-network-reachability";
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _allowsPowerNapScheduling but is missing the %@ entitlement", v60, 0x16u);
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
          v54 = [(NDNWBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543618;
          *(v60 + 4) = v54;
          WORD6(v60[0]) = 2112;
          *(v60 + 14) = @"com.apple.private.nsurlsession-allow-override-connection-pool";
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _connectionPoolName but is missing the %@ entitlement", v60, 0x16u);
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
            v59 = [(NDNWBackgroundSession *)self uuid];
            LODWORD(v60[0]) = 138543362;
            *(v60 + 4) = v59;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _directoryForDownloadedFiles but does not have access to directory", v60, 0xCu);
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
        v58 = [(NDNWBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = v58;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = @"com.apple.private.nsurlsession.allow-duet-preauthorization";
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _duetPreauthorized but is missing the %@ entitlement", v60, 0x16u);
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
          v55 = [(NDNWBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543362;
          *(v60 + 4) = v55;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _maximumWatchCellularTransferSize but is missing the necessary entitlement", v60, 0xCu);
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
        v50 = [(NDNWBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = v50;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = v36;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _pathToDownloadTaskFile but is not allowed to create %@", v60, 0x16u);
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
        v49 = [(NDNWBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = v49;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = @"com.apple.private.nsurlsession.impersonate";
        _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _sourceApplicationBundleIdentifier but is missing the %@ entitlement", v60, 0x16u);
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

- (id)descriptionForRequest:(id)a3
{
  v3 = a3;
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ [allowsCellularAccess: %d, allowsExpensiveAccess: %d, allowsConstrainedAccess: %d]", v3, [v3 allowsCellularAccess], objc_msgSend(v3, "allowsExpensiveNetworkAccess"), objc_msgSend(v3, "allowsConstrainedNetworkAccess"));

  return v4;
}

- (void)queueUpdatesForTask:(id)a3 updateType:(unint64_t)a4 highPriority:(BOOL)a5
{
  v8 = a3;
  workQueue = self->_workQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100052A48;
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
  block[2] = sub_100052C3C;
  block[3] = &unk_1000D5640;
  v8 = a3;
  *&block[5] = Current;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)obliterate
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    identifier = self->_identifier;
    *buf = 138543874;
    v19 = v4;
    v20 = 2114;
    v21 = clientBundleID;
    v22 = 2112;
    v23 = identifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Obliterating session: <%{public}@>.<%@>", buf, 0x20u);
  }

  self->_obliterated = 1;
  clientProxy = self->_clientProxy;
  self->_clientProxy = 0;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(NSMutableDictionary *)self->_identifiersToTasks allValues];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v11) cancel];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(NDNWBackgroundSession *)self cleanupSessionWithCompletionHandler:0];
  v12 = +[NDUserEventAgentConnection sharedUserEventAgentConnection];
  [v12 removePendingWakeForClient:self->_clientBundleID sessionIdentifier:self->_identifier];
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
      v6 = [(NDNWBackgroundSession *)self uuid];
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Cleaning up", &v12, 0xCu);
    }

    [(NSURLSession *)self->_session finishTasksAndInvalidate];
    session = self->_session;
    self->_session = 0;

    [NDFileUtilities removeItemAtURL:self->_uploadsDirectory];
    tasksDB = self->_tasksDB;
    if (tasksDB)
    {
      [(NDTaskStorageDB *)tasksDB _deleteAllTaskEntriesForSession:self->_identifier sessionUUID:self->_uuid];
      v9 = self->_tasksDB;
      self->_tasksDB = 0;
    }

    [NDFileUtilities removeItemAtURL:self->_sessionDirectory];
    [(NDApplication *)self->_monitoredApplication removeObserver:self];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sessionCompleted:self withCompletionHandler:v4];

    v11 = +[Daemon sharedDaemon];
    [v11 releaseTransaction];
  }
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

- (void)clientApplicationWasReinstalled
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    *buf = 138543618;
    v32 = v4;
    v33 = 2114;
    v34 = clientBundleID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Application %{public}@ was reinstalled, adjusting download paths", buf, 0x16u);
  }

  v6 = [(NDNWBackgroundSession *)self setupDownloadDirectory];
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
              [(NDNWBackgroundSession *)self queueUpdatesForTask:v17 updateType:3 highPriority:0];

              v18 = [(NSMutableDictionary *)self->_identifiersToTasks objectForKeyedSubscript:v11];
              v19 = [NDNWBackgroundSession downloadFileURLFormTaskInfo:v12];
              v20 = [v19 path];
              [v18 set_pathToDownloadTaskFile:v20];
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
      v22 = [(NDNWBackgroundSession *)self uuid];
      v23 = self->_clientBundleID;
      *buf = 138543618;
      v32 = v22;
      v33 = 2114;
      v34 = v23;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Couldn't find out download directory for re-installed application %{public}@. It must not have been re-installed properly. Obliterating session", buf, 0x16u);
    }

    v7 = 0;
    [(NDNWBackgroundSession *)self obliterate];
  }
}

- (void)backgroundUpdatesEnabledForApplication:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000537A0;
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
  block[2] = sub_100053934;
  block[3] = &unk_1000D5618;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(workQueue, block);
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
    v5 = [(NDNWBackgroundSession *)self uuid];
    v6 = v5;
    clientBundleID = self->_clientBundleID;
    if (v3)
    {
      v8 = 89;
    }

    else
    {
      v8 = 78;
    }

    if (self->_xpcConn)
    {
      v9 = 89;
    }

    else
    {
      v9 = 78;
    }

    identifier = self->_identifier;
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
    v18 = v8;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v11;
    v23 = 2112;
    v24 = identifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> client %{public}@ connected result (%c), XPC(%c) proxy(%c) for %@", &v13, 0x32u);
  }

  return v3;
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
    v7 = [(NDNWBackgroundSession *)self uuid];
    xpcConn = self->_xpcConn;
    clientBundleID = self->_clientBundleID;
    identifier = self->_identifier;
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Using XPC connection %@ for client %{public}@ with identifier %@ and PID %d", buf, 0x30u);
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
      v16 = [(NDNWBackgroundSession *)self uuid];
      v17 = self->_clientBundleID;
      v18 = self->_identifier;
      *buf = 138544130;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = 0;
      *&buf[22] = 2114;
      *&buf[24] = v17;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> XPC connection is to PlugIn %{public}@ for session <%{public}@>.<%@>", buf, 0x2Au);
    }
  }

  self->_shouldElevateDiscretionaryPriority = [(NDApplication *)self->_clientApplication shouldElevateDiscretionaryPriority];
  v19 = +[NDUserEventAgentConnection sharedUserEventAgentConnection];
  [v19 removePendingWakeForClient:self->_clientBundleID sessionIdentifier:self->_identifier];
}

- (NDNWBackgroundSession)initWithConfiguration:(id)a3 bundleID:(id)a4 isSpringBoardApp:(BOOL)a5 downloadDirectory:(id)a6 options:(id)a7 clientProxy:(id)a8 delegate:(id)a9 workQueue:(id)a10 db:(id)a11
{
  v13 = a5;
  v16 = a3;
  v128 = a4;
  v131 = a7;
  v127 = a8;
  obj = a9;
  v124 = a10;
  v129 = a11;
  v132.receiver = self;
  v132.super_class = NDNWBackgroundSession;
  v17 = [(NDNWBackgroundSession *)&v132 init];
  if (!v17)
  {
LABEL_67:
    v88 = v17;
    goto LABEL_68;
  }

  v18 = +[Daemon sharedDaemon];
  [v18 addTransaction];

  v19 = [v131 objectForKeyedSubscript:@"NDBackgroundSessionManagerKeySessionUUID"];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = objc_alloc_init(NSUUID);
  }

  uuid = v17->_uuid;
  v17->_uuid = v21;

  objc_storeWeak(&v17->_delegate, obj);
  objc_storeStrong(&v17->_clientBundleID, a4);
  v23 = [v16 _sourceApplicationBundleIdentifier];
  if (v23)
  {
    v24 = [v16 _sourceApplicationBundleIdentifier];
  }

  else
  {
    v24 = v17->_clientBundleID;
  }

  p_monitoredAppBundleID = &v17->_monitoredAppBundleID;
  monitoredAppBundleID = v17->_monitoredAppBundleID;
  v17->_monitoredAppBundleID = v24;

  v27 = +[NSMutableDictionary dictionary];
  identifiersToUpdates = v17->_identifiersToUpdates;
  v17->_identifiersToUpdates = v27;

  v126 = [[LSApplicationExtensionRecord alloc] initWithBundleIdentifier:v17->_clientBundleID error:0];
  v29 = [v16 _sourceApplicationSecondaryIdentifier];
  secondaryID = v17->_secondaryID;
  v17->_secondaryID = v29;

  v125 = [NDCloudContainer containerIDForPrimaryIdentifier:v17->_monitoredAppBundleID secondaryIdentifier:v17->_secondaryID];
  if (v125)
  {
    v31 = [NDCloudContainer bundleIDForPrimaryIdentifier:v17->_monitoredAppBundleID secondaryIdentifier:v17->_secondaryID];
    v32 = qword_1000EB210;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [(NDNWBackgroundSession *)v17 uuid];
      clientBundleID = v17->_clientBundleID;
      *buf = 138544130;
      v134 = v33;
      v135 = 2114;
      v136 = clientBundleID;
      v137 = 2112;
      v138 = v125;
      v139 = 2114;
      v140 = v31;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Client %{public}@ is acting on behalf of cloud documents container with container id: %@ and bundle id: %{public}@", buf, 0x2Au);
    }

    if (v31)
    {
      v35 = v31;
    }

    else
    {
      v35 = v125;
    }

    objc_storeStrong(&v17->_monitoredAppBundleID, v35);
    v36 = [NDApplication cloudContainerWithIdentifier:v125];
    monitoredApplication = v17->_monitoredApplication;
    v17->_monitoredApplication = v36;
  }

  p_monitoredApplication = &v17->_monitoredApplication;
  if (!v17->_monitoredApplication)
  {
    v39 = *p_monitoredAppBundleID;
    v40 = [v16 sharedContainerIdentifier];
    v41 = [NDFPProvider providerIDForBundle:v39 sharedContainerIdentifier:v40];

    if (v41)
    {
      v42 = [NDApplication fileProviderWithIdentifer:v41 applicationIdentifier:*p_monitoredAppBundleID];
      v43 = *p_monitoredApplication;
      *p_monitoredApplication = v42;

      v44 = qword_1000EB210;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [(NDNWBackgroundSession *)v17 uuid];
        v46 = v17->_clientBundleID;
        v47 = *p_monitoredAppBundleID;
        *buf = 138544130;
        v134 = v45;
        v135 = 2114;
        v136 = v46;
        v137 = 2112;
        v138 = v41;
        v139 = 2114;
        v140 = v47;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Client %{public}@ is acting on behalf of file provider id: %@ and bundle id: %{public}@", buf, 0x2Au);
      }
    }
  }

  if (v126 && sub_1000093C4(v126))
  {
    v48 = qword_1000EB210;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = [(NDNWBackgroundSession *)v17 uuid];
      v50 = v17->_clientBundleID;
      *buf = 138543618;
      v134 = v49;
      v135 = 2114;
      v136 = v50;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Client %{public}@ is an independent extension", buf, 0x16u);
    }

    v51 = [NDApplication chronoKitExtensionWithIdentifier:v17->_clientBundleID];
    clientApplication = v17->_clientApplication;
    v17->_clientApplication = v51;
  }

  v53 = v17->_clientApplication;
  if (v53)
  {
    v54 = v53;
  }

  else
  {
    v55 = v17->_clientBundleID;
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

  v56 = v17->_clientApplication;
  v17->_clientApplication = v54;

  if (!v17->_monitoredApplication)
  {
    if ([*p_monitoredAppBundleID isEqualToString:v17->_clientBundleID])
    {
      objc_storeStrong(&v17->_monitoredApplication, v17->_clientApplication);
      v57 = qword_1000EB210;
      v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v58)
        {
          v59 = [(NDNWBackgroundSession *)v17 uuid];
          v60 = *p_monitoredAppBundleID;
          *buf = 138543618;
          v134 = v59;
          v135 = 2114;
          v136 = v60;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Client %{public}@ is a SpringBoard application", buf, 0x16u);
        }
      }

      else if (v58)
      {
        v64 = [(NDNWBackgroundSession *)v17 uuid];
        v65 = *p_monitoredAppBundleID;
        *buf = 138543618;
        v134 = v64;
        v135 = 2114;
        v136 = v65;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Client %{public}@ is a daemon or non-SpringBoard application", buf, 0x16u);
      }
    }

    else
    {
      v61 = [NDApplication springBoardApplicationExistsWithIdentifier:*p_monitoredAppBundleID];
      v62 = *p_monitoredAppBundleID;
      if (v61)
      {
        [NDApplication springboardApplicationWithBundleIdentifier:v62];
      }

      else
      {
        [NDApplication applicationWithIdentifier:v62];
      }
      v63 = ;
      v66 = *p_monitoredApplication;
      *p_monitoredApplication = v63;

      v57 = qword_1000EB210;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v67 = [(NDNWBackgroundSession *)v17 uuid];
        v68 = v17->_clientBundleID;
        v69 = *p_monitoredAppBundleID;
        *buf = 138544130;
        v134 = v67;
        v135 = 2114;
        v136 = v68;
        v137 = 2114;
        v138 = v69;
        v139 = 1024;
        LODWORD(v140) = v61;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Client %{public}@ is acting on behalf of application %{public}@, impersonatingSpringBoardApp: %d", buf, 0x26u);
      }
    }
  }

  v70 = [v16 identifier];
  identifier = v17->_identifier;
  v17->_identifier = v70;

  v72 = [v16 sharedContainerIdentifier];
  sharedContainerIdentifier = v17->_sharedContainerIdentifier;
  v17->_sharedContainerIdentifier = v72;

  v74 = [NDFileUtilities sessionPath:v17->_identifier forBundleID:v17->_clientBundleID];
  v75 = [NSURL fileURLWithPath:v74];
  sessionDirectory = v17->_sessionDirectory;
  v17->_sessionDirectory = v75;

  v77 = [v16 _directoryForDownloadedFiles];
  v78 = v77;
  if (v77)
  {
    v79 = v77;
  }

  else
  {
    v79 = [(NDNWBackgroundSession *)v17 setupDownloadDirectory];
  }

  downloadDirectory = v17->_downloadDirectory;
  v17->_downloadDirectory = v79;

  v81 = [(NSURL *)v17->_sessionDirectory URLByAppendingPathComponent:@"Uploads"];
  uploadsDirectory = v17->_uploadsDirectory;
  v17->_uploadsDirectory = v81;

  if (v17->_downloadDirectory)
  {
    objc_storeStrong(&v17->_workQueue, a10);
    objc_storeStrong(&v17->_clientProxy, a8);
    v83 = [[NDCredentialStorage alloc] initWithDelegate:v17 forBundleID:v17->_clientBundleID];
    credentialStorage = v17->_credentialStorage;
    v17->_credentialStorage = v83;

    v85 = [(NDNWBackgroundSession *)v17 configurationWithClientConfiguration:v16];
    v17->_discretionary = [v16 isDiscretionary];
    if ([v16 sessionSendsLaunchEvents])
    {
      v86 = 1;
    }

    else
    {
      v86 = [v16 _sessionSendsLaunchOnDemandEvents];
    }

    v17->_sendsLaunchEvents = v86;
    v89 = +[Daemon sharedDaemon];
    v90 = [v89 isInSyncBubble];

    if (v90)
    {
      v17->_sendsLaunchEvents = 0;
    }

    v17->_performsEVCertCheck = [v16 _performsEVCertCheck];
    [(NDNWBackgroundSession *)v17 updateOptions:v131];
    v91 = [objc_alloc(objc_getClass("NWURLSession")) initWithConfiguration:v85 UUID:v17->_uuid delegate:v17 delegateQueue:0 delegateDispatchQueue:v17->_workQueue];
    session = v17->_session;
    v17->_session = v91;

    v93 = [[NDCallbackQueue alloc] initWithDelegate:v17];
    callbackQueue = v17->_callbackQueue;
    v17->_callbackQueue = v93;

    v95 = +[NSMutableDictionary dictionary];
    identifiersToTasks = v17->_identifiersToTasks;
    v17->_identifiersToTasks = v95;

    v97 = +[NSMutableDictionary dictionary];
    identifiersToTaskInfo = v17->_identifiersToTaskInfo;
    v17->_identifiersToTaskInfo = v97;

    v99 = +[NSMutableDictionary dictionary];
    identifiersToMonitors = v17->_identifiersToMonitors;
    v17->_identifiersToMonitors = v99;

    v101 = +[NSMutableDictionary dictionary];
    identifiersToStreams = v17->_identifiersToStreams;
    v17->_identifiersToStreams = v101;

    v17->_shouldPullInitialCredentials = v127 != 0;
    v17->_retryDataTasks = [v16 _allowsRetryForBackgroundDataTasks];
    if (v17->_infersDiscretionary)
    {
      v103 = 1;
    }

    else
    {
      v103 = [v16 _infersDiscretionaryFromOriginatingClient];
    }

    v17->_infersDiscretionary = v103;
    *&v17->_obliterated = 0;
    v17->_clientPID = -1;
    [NDFileUtilities createDirectoryAtURL:v17->_sessionDirectory];
    [NDFileUtilities createDirectoryAtURL:v17->_uploadsDirectory];
    if (v17->_clientProxy)
    {
      v104 = [v16 copy];
      v105 = [v131 mutableCopy];
      [v105 setObject:v17->_uuid forKeyedSubscript:@"NDBackgroundSessionManagerKeySessionUUID"];
      [v129 _updateConfigurationForBundleID:v128 sessionID:v17->_identifier with:v104];
      [v129 _updateOptionsForBundleID:v128 sessionID:v17->_identifier with:v105];
    }

    if (*p_monitoredApplication)
    {
      [*p_monitoredApplication addObserver:v17];
    }

    objc_storeStrong(&v17->_tasksDB, a11);
    v106 = qword_1000EB210;
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v122 = v85;
      v123 = [(NDNWBackgroundSession *)v17 uuid];
      v107 = v17->_uuid;
      v108 = v17->_clientBundleID;
      v121 = v17->_identifier;
      [v16 timeoutIntervalForResource];
      v110 = v109;
      [v16 timeoutIntervalForRequest];
      v112 = v111;
      v113 = [v16 allowsCellularAccess];
      v114 = [v16 allowsExpensiveNetworkAccess];
      v115 = [v16 allowsConstrainedNetworkAccess];
      v116 = [v16 _sourceApplicationBundleIdentifier];
      v117 = [v16 _sourceApplicationSecondaryIdentifier];
      *buf = 138545922;
      v134 = v123;
      v135 = 2114;
      v136 = v107;
      v137 = 2114;
      v138 = v108;
      v139 = 2112;
      v140 = v121;
      v141 = 2048;
      v142 = v110;
      v143 = 2048;
      v144 = v112;
      v145 = 1024;
      v146 = v113;
      v147 = 1024;
      v148 = v114;
      v149 = 1024;
      v150 = v115;
      v151 = 2114;
      v152 = v116;
      v153 = 2114;
      v154 = v117;
      _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Session <%{public}@> is for <%{public}@>.<%@> using resource timeout: %f, request timeout: %f allowsCellularAccess: %d, allowsExpensiveAccess: %d, allowsConstrainedAccess: %d, _sourceApplicationBundleIdentifier: %{public}@, _sourceApplicationSecondaryIdentifier: %{public}@", buf, 0x64u);

      v85 = v122;
    }

    goto LABEL_67;
  }

  v87 = qword_1000EB210;
  if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
  {
    v119 = [(NDNWBackgroundSession *)v17 uuid];
    v120 = v17->_clientBundleID;
    *buf = 138543618;
    v134 = v119;
    v135 = 2114;
    v136 = v120;
    _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Couldn't find out download directory for %{public}@. Not creating session", buf, 0x16u);
  }

  v88 = 0;
LABEL_68:

  return v88;
}

- (id)configurationWithClientConfiguration:(id)a3
{
  v4 = a3;
  v5 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [v5 setUsesClassicLoadingMode:0];
  [v4 timeoutIntervalForRequest];
  [v5 setTimeoutIntervalForRequest:?];
  [v4 timeoutIntervalForResource];
  if (v6 == 0.0)
  {
    [v5 timeoutIntervalForResource];
  }

  [v5 setTimeoutIntervalForResource:?];
  v7 = [v4 connectionProxyDictionary];
  [v5 setConnectionProxyDictionary:v7];

  [v5 setTLSMinimumSupportedProtocol:{objc_msgSend(v4, "TLSMinimumSupportedProtocol")}];
  [v5 setTLSMaximumSupportedProtocol:{objc_msgSend(v4, "TLSMaximumSupportedProtocol")}];
  v8 = [v4 HTTPAdditionalHeaders];
  [v5 setHTTPAdditionalHeaders:v8];

  [v5 setHTTPMaximumConnectionsPerHost:{objc_msgSend(v4, "HTTPMaximumConnectionsPerHost")}];
  [v5 setNetworkServiceType:{objc_msgSend(v4, "networkServiceType")}];
  v9 = [v4 _atsContext];
  [v5 set_atsContext:v9];

  [v5 set_allowsTLSFalseStart:{objc_msgSend(v4, "_allowsTLSFalseStart")}];
  [v5 set_allowsTLSFallback:{objc_msgSend(v4, "_allowsTLSFallback")}];
  v10 = [v4 _tlsTrustPinningPolicyName];
  [v5 set_tlsTrustPinningPolicyName:v10];

  [v5 set_allowsTLSECH:{objc_msgSend(v4, "_allowsTLSECH")}];
  [v5 set_forceEnablePQTLS:{objc_msgSend(v4, "_forceEnablePQTLS")}];
  [v5 set_reportsDataStalls:{objc_msgSend(v4, "_reportsDataStalls")}];
  [v5 set_TCPAdaptiveReadTimeout:{objc_msgSend(v4, "_TCPAdaptiveReadTimeout")}];
  [v5 set_TCPAdaptiveWriteTimeout:{objc_msgSend(v4, "_TCPAdaptiveWriteTimeout")}];
  [v5 set_onBehalfOfPairedDevice:{objc_msgSend(v4, "_onBehalfOfPairedDevice")}];
  [v5 set_requiresSustainedDataDelivery:{objc_msgSend(v4, "_requiresSustainedDataDelivery")}];
  [v5 set_alwaysPerformDefaultTrustEvaluation:{objc_msgSend(v4, "_alwaysPerformDefaultTrustEvaluation")}];
  [v5 set_prefersInfraWiFi:{objc_msgSend(v4, "_prefersInfraWiFi")}];
  if ([(NDApplication *)self->_clientApplication canBeSuspended]&& (_os_feature_enabled_impl() & 1) == 0)
  {
    [v5 setNetworkServiceType:3];
  }

  v11 = [v4 _maximumWatchCellularTransferSize];
  [v5 set_maximumWatchCellularTransferSize:v11];

  [v5 setHTTPCookieStorage:0];
  [v5 setURLCache:0];
  [v5 setURLCredentialStorage:self->_credentialStorage];
  [v5 setAllowsCellularAccess:{objc_msgSend(v4, "allowsCellularAccess")}];
  [v5 setWaitsForConnectivity:0];
  [v5 setAllowsExpensiveNetworkAccess:{objc_msgSend(v4, "allowsExpensiveNetworkAccess")}];
  [v5 setAllowsConstrainedNetworkAccess:{objc_msgSend(v4, "allowsConstrainedNetworkAccess")}];
  if ([v4 _explicitlySetAllowsUCA])
  {
    [v5 setAllowsUltraConstrainedNetworkAccess:{objc_msgSend(v4, "allowsUltraConstrainedNetworkAccess")}];
  }

  [v5 set_allowsVirtualInterfaces:{objc_msgSend(v4, "_allowsVirtualInterfaces")}];
  [v5 set_multipathAlternatePort:{objc_msgSend(v4, "_multipathAlternatePort")}];
  [v5 set_allowsPowerNapScheduling:{objc_msgSend(v4, "_allowsPowerNapScheduling")}];
  [v5 set_allowsHSTSWithUntrustedRootCertificate:{objc_msgSend(v4, "_allowsHSTSWithUntrustedRootCertificate")}];
  [v5 set_connectionCachePurgeTimeout:1.0];
  [v5 set_longLivedConnectionCachePurgeTimeout:1.0];
  [v5 set_preventsIdleSleepOnceConnected:1];
  [v5 set_timingDataOptions:{objc_msgSend(v4, "_timingDataOptions")}];
  [v5 set_shouldSkipPreferredClientCertificateLookup:{objc_msgSend(v4, "_shouldSkipPreferredClientCertificateLookup")}];
  [v5 set_requiresPowerPluggedIn:{objc_msgSend(v4, "_requiresPowerPluggedIn")}];
  [v5 set_sourceApplicationBundleIdentifier:self->_monitoredAppBundleID];
  [v5 set_sourceApplicationSecondaryIdentifier:self->_secondaryID];
  v12 = [v4 _sourceApplicationAuditTokenData];
  [v5 set_sourceApplicationAuditTokenData:v12];

  [v5 set_directoryForDownloadedFiles:self->_downloadDirectory];
  v13 = [v4 _downloadFileProtectionType];
  [v5 set_downloadFileProtectionType:v13];

  [v5 set_duetPreauthorized:{objc_msgSend(v4, "_duetPreauthorized")}];
  [v5 set_loggingPrivacyLevel:{objc_msgSend(v4, "_loggingPrivacyLevel")}];
  [v5 set_duetPreClearedMode:{objc_msgSend(v4, "_duetPreClearedMode")}];
  [v5 set_pidForHAR:{objc_msgSend(v4, "_pidForHAR")}];

  return v5;
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

+ (id)downloadFileURLFormTaskInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 pathToDownloadTaskFile];
  if (v4 || ([v3 additionalProperties], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKeyedSubscript:", @"pathToDownloadTaskFile"), v4 = objc_claimAutoreleasedReturnValue(), v5, v4))
  {
    v6 = [NSURL fileURLWithPath:v4 isDirectory:0];
  }

  else
  {
    v6 = [v3 downloadFileURL];
  }

  return v6;
}

@end