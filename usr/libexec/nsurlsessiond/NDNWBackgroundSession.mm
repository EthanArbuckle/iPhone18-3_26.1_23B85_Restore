@interface NDNWBackgroundSession
+ (id)downloadFileURLFormTaskInfo:(id)info;
- (BOOL)clientIsActive;
- (BOOL)currentDiscretionaryStatusWithOptionalTaskInfo:(id)info;
- (BOOL)errorIfBlockedTracker:(id)tracker url:(id)url;
- (BOOL)finalizeTaskCompletionWithSuppressedWake:(BOOL)wake;
- (BOOL)hasConnectedClient;
- (BOOL)sessionHasOutstandingTasks;
- (BOOL)trustPassesExtendedValidation:(__SecTrust *)validation;
- (NDBackgroundSessionDelegate)delegate;
- (NDNWBackgroundSession)initWithConfiguration:(id)configuration bundleID:(id)d isSpringBoardApp:(BOOL)app downloadDirectory:(id)directory options:(id)options clientProxy:(id)proxy delegate:(id)delegate workQueue:(id)self0 db:(id)self1;
- (id)_URLSession:(id)session downloadTaskNeedsDownloadDirectory:(id)directory;
- (id)configurationWithClientConfiguration:(id)configuration;
- (id)descriptionForRequest:(id)request;
- (id)getTasksForReconnection;
- (id)inputStreamWithFileHandle:(id)handle taskIdentifier:(unint64_t)identifier;
- (id)makeTempUploadFile:(id)file withExtensionData:(id)data;
- (id)restoreTasks:(BOOL *)tasks;
- (id)restoreTasksFromSqliteDB:(id)b;
- (id)sanitizeTaskProperties:(id)properties;
- (id)setupDownloadDirectory;
- (id)taskWithTaskInfo:(id)info;
- (int64_t)backgroundSchedulingPriorityWithTaskInfo:(id)info;
- (void)URLSession:(id)session _taskDidConnect:(id)connect;
- (void)URLSession:(id)session dataTask:(id)task _didReceiveData:(id)data completionHandler:(id)handler;
- (void)URLSession:(id)session dataTask:(id)task didBecomeDownloadTask:(id)downloadTask;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didReceiveInformationalResponse:(id)response;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)URLSession:(id)session task:(id)task willBeginDelayedRequest:(id)request completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_URLSession:(id)session downloadTask:(id)task didReceiveResponse:(id)response;
- (void)_URLSession:(id)session task:(id)task getAuthHeadersForResponse:(id)response completionHandler:(id)handler;
- (void)_cancelTaskWithIdentifier:(unint64_t)identifier error:(id)error;
- (void)_resumeTask:(unint64_t)task;
- (void)allowReconnect;
- (void)applicationWasSuspended:(id)suspended pid:(int)pid;
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
- (void)configureResumeInfo:(id)info withTaskInfo:(id)taskInfo;
- (void)configureTask:(id)task withTaskInfo:(id)info;
- (void)configureTaskInfo:(id)info withResumeInfo:(id)resumeInfo;
- (void)dataTaskWithRequest:(id)request originalRequest:(id)originalRequest identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier reply:(id)reply;
- (void)downloadTaskWithRequest:(id)request originalRequest:(id)originalRequest downloadFilePath:(id)path identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier reply:(id)reply;
- (void)downloadTaskWithResumeData:(id)data identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier reply:(id)reply;
- (void)enqueueTaskWithIdentifier:(unint64_t)identifier;
- (void)ensureSessionDownloadDirectoryExists;
- (void)errorOccurredDuringAuthCallbackDelivery:(id)delivery completionHandler:(id)handler;
- (void)errorOccurredDuringFinishedCallbackDelivery:(id)delivery;
- (void)fillInByteCountsForTaskInfo:(id)info withTaskID:(id)d;
- (void)invalidateWithReply:(id)reply;
- (void)obliterate;
- (void)queueUpdatesForTask:(id)task updateType:(unint64_t)type highPriority:(BOOL)priority;
- (void)reconnectClient:(id)client withCompletion:(id)completion;
- (void)removeDownloadFileForTaskInfo:(id)info;
- (void)removeUploadFileForTaskInfo:(id)info;
- (void)resetStorageWithReply:(id)reply;
- (void)restoreCompletedTask:(id)task;
- (void)resumeTaskWithIdentifier:(unint64_t)identifier withProperties:(id)properties;
- (void)setBytesPerSecondLimit:(int64_t)limit forTaskWithIdentifier:(unint64_t)identifier;
- (void)setDescription:(id)description forTask:(unint64_t)task;
- (void)setDiscretionaryOverride:(int64_t)override forTaskWithIdentifier:(unint64_t)identifier;
- (void)setExpectedProgressTarget:(unint64_t)target forTaskWithIdentifier:(unint64_t)identifier;
- (void)setLoadingPoolPriority:(double)priority forTaskWithIdentifier:(unint64_t)identifier;
- (void)setPriority:(int64_t)priority forTaskWithIdentifier:(unint64_t)identifier;
- (void)setPropertyOnStreamWithIdentifier:(unint64_t)identifier propDict:(id)dict propKey:(id)key withReply:(id)reply;
- (void)setTLSMaximumSupportedProtocolVersion:(unsigned __int16)version forTaskWithIdentifier:(unint64_t)identifier;
- (void)setTLSMinimumSupportedProtocolVersion:(unsigned __int16)version forTaskWithIdentifier:(unint64_t)identifier;
- (void)setTLSSessionCachePrefix:(id)prefix;
- (void)setXPCConnection:(id)connection;
- (void)startMonitorForTask:(unint64_t)task;
- (void)startTasksIfAllowed;
- (void)statusMonitor:(id)monitor callbackForIdentifier:(unint64_t)identifier networkChanged:(BOOL)changed;
- (void)storeTaskInfoUpdates:(BOOL)updates;
- (void)suspendTaskWithIdentifier:(unint64_t)identifier;
- (void)taskMonitor:(id)monitor retryTask:(unint64_t)task reason:(int)reason;
- (void)taskMonitor:(id)monitor terminateTask:(unint64_t)task reason:(int)reason;
- (void)taskMonitor:(id)monitor updateTaskPriority:(unint64_t)priority reason:(int)reason;
- (void)triggerPowerlogPeriodicUpdate;
- (void)updateOptions:(id)options;
- (void)uploadTaskWithRequest:(id)request originalRequest:(id)originalRequest fromFile:(id)file sandboxExtensionData:(id)data identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier potentialCredentials:(id)credentials reply:(id)self0;
- (void)uploadTaskWithResumableUploadState:(id)state request:(id)request originalRequest:(id)originalRequest fromFile:(id)file sandboxExtensionData:(id)data identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier potentialCredentials:(id)self0 reply:(id)self1;
- (void)wakeUpClient:(int64_t)client;
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

- (void)_URLSession:(id)session task:(id)task getAuthHeadersForResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  taskIdentifier = [taskCopy taskIdentifier];
  v13 = qword_1000EB210;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    sendsLaunchEvents = self->_sendsLaunchEvents;
    supportsWakes = [(NDApplication *)self->_clientApplication supportsWakes];
    v18 = "N";
    *buf = 138544386;
    v41 = 2048;
    v40 = uuid;
    if (sendsLaunchEvents)
    {
      v19 = "Y";
    }

    else
    {
      v19 = "N";
    }

    v42 = taskIdentifier;
    v43 = 2114;
    if (supportsWakes)
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
    v38 = taskIdentifier;
    v21 = handlerCopy;
    v37 = v21;
    v22 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v36];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100044658;
    v33[3] = &unk_1000D58E0;
    v33[4] = self;
    v35 = taskIdentifier;
    v34 = v21;
    [v22 backgroundTask:taskIdentifier getAuthHeadersForResponse:responseCopy reply:v33];
  }

  else if (self->_sendsLaunchEvents && [(NDApplication *)self->_clientApplication supportsWakes])
  {
    v23 = qword_1000EB210;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [(NDNWBackgroundSession *)self uuid];
      v25 = self->_clientBundleID;
      *buf = 138543874;
      v40 = uuid2;
      v41 = 2048;
      v42 = taskIdentifier;
      v43 = 2114;
      v44 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> waking %{public}@ for auth headers", buf, 0x20u);
    }

    v26 = [PendingCallback alloc];
    v27 = objc_retainBlock(handlerCopy);
    v28 = [v27 copy];
    v29 = [NSArray arrayWithObjects:v28, responseCopy, 0];
    v30 = [(PendingCallback *)v26 initWithCallbackType:10 taskIdentifier:taskIdentifier args:v29];

    [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v30 wakeRequirement:2];
  }

  else
  {
    v31 = qword_1000EB210;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      uuid3 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543618;
      v40 = uuid3;
      v41 = 2048;
      v42 = taskIdentifier;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> getAuthHeadersForResponse does not have a remote object and does not support app wakes, canceling.", buf, 0x16u);
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
  taskIdentifier = [taskCopy taskIdentifier];
  v10 = qword_1000EB210;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    v18 = 138544130;
    v19 = uuid;
    v20 = 2048;
    v21 = taskIdentifier;
    v22 = 2114;
    v23 = clientBundleID;
    v24 = 1024;
    statusCode = [responseCopy statusCode];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> download for client %{public}@ received response, status code: %d", &v18, 0x26u);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v14 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  v15 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v14];

  [v15 setResponse:responseCopy];
  fileURL = [taskCopy fileURL];
  [v15 setDownloadFileURL:fileURL];

  v17 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  [(NDNWBackgroundSession *)self queueUpdatesForTask:v17 updateType:1 highPriority:1];

  [(NSXPCProxyCreating *)self->_clientProxy backgroundTask:taskIdentifier didReceiveResponse:responseCopy transactionMetrics:0];
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  taskCopy = task;
  taskIdentifier = [taskCopy taskIdentifier];
  identifiersToMonitors = self->_identifiersToMonitors;
  v13 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  v14 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v13];

  if (v14)
  {
    _incompleteCurrentTaskTransactionMetrics = [taskCopy _incompleteCurrentTaskTransactionMetrics];
    [v14 taskTransferredData:0 countOfBytesReceived:data cellular:{objc_msgSend(_incompleteCurrentTaskTransactionMetrics, "isCellular")}];
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v17 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  v18 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v17];

  if (![v18 taskKind])
  {
    [(NSXPCProxyCreating *)self->_clientProxy backgroundDownloadTask:taskIdentifier didWriteData:data totalBytesWritten:written totalBytesExpectedToWrite:write];
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes
{
  taskCopy = task;
  taskIdentifier = [taskCopy taskIdentifier];
  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    v16 = 138544130;
    v17 = uuid;
    v18 = 2048;
    v19 = taskIdentifier;
    v20 = 2048;
    offsetCopy = offset;
    v22 = 2048;
    bytesCopy = bytes;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> didResumeAtOffset: %lld expectedTotalBytes: %lld", &v16, 0x2Au);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v14 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  v15 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v14];

  if ([v15 expectingResumeCallback])
  {
    [(NSXPCProxyCreating *)self->_clientProxy backgroundDownloadTask:taskIdentifier didResumeAtOffset:offset expectedTotalBytes:bytes];
    [v15 setExpectingResumeCallback:0];
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  taskCopy = task;
  lCopy = l;
  taskIdentifier = [taskCopy taskIdentifier];
  v10 = qword_1000EB210;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    *buf = 138543874;
    *&buf[4] = uuid;
    *&buf[12] = 2048;
    *&buf[14] = taskIdentifier;
    *&buf[22] = 2112;
    v39 = lCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> finished downloading to %@", buf, 0x20u);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v13 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
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
      uuid2 = [(NDNWBackgroundSession *)self uuid];
      *v34 = 138543618;
      v35 = uuid2;
      v36 = 2112;
      v37 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> identifiersToTaskInfo key dump: %@", v34, 0x16u);
    }

    v22 = qword_1000EB210;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      uuid3 = [(NDNWBackgroundSession *)self uuid];
      *v34 = 138543618;
      v35 = uuid3;
      v36 = 2112;
      v37 = v19;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> identifiersToTaskInfo states dump: %@", v34, 0x16u);
    }

    _Block_object_dispose(buf, 8);
  }

  v24 = [PendingCallback alloc];
  v33[0] = v14;
  response = [taskCopy response];
  v26 = response;
  if (!response)
  {
    v26 = +[NSNull null];
  }

  v33[1] = v26;
  v27 = [NSArray arrayWithObjects:v33 count:2];
  v28 = [(PendingCallback *)v24 initWithCallbackType:1 taskIdentifier:taskIdentifier args:v27];

  if (!response)
  {
  }

  [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v28 wakeRequirement:0];
}

- (void)URLSession:(id)session dataTask:(id)task didBecomeDownloadTask:(id)downloadTask
{
  taskCopy = task;
  downloadTaskCopy = downloadTask;
  taskIdentifier = [taskCopy taskIdentifier];
  v10 = qword_1000EB210;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    v19 = 138543618;
    v20 = uuid;
    v21 = 2048;
    v22 = taskIdentifier;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> became download task", &v19, 0x16u);
  }

  identifiersToTasks = self->_identifiersToTasks;
  v13 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  [(NSMutableDictionary *)identifiersToTasks setObject:downloadTaskCopy forKeyedSubscript:v13];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v15 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  v16 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v15];

  fileURL = [downloadTaskCopy fileURL];
  [v16 setDownloadFileURL:fileURL];

  if ([v16 taskKind] == 2)
  {
    [(NSXPCProxyCreating *)self->_clientProxy backgroundDataTaskDidBecomeDownloadTask:taskIdentifier];
    [v16 setTaskKind:0];
  }

  v18 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  [(NDNWBackgroundSession *)self queueUpdatesForTask:v18 updateType:14 highPriority:0];
}

- (void)URLSession:(id)session dataTask:(id)task _didReceiveData:(id)data completionHandler:(id)handler
{
  taskCopy = task;
  dataCopy = data;
  handlerCopy = handler;
  taskIdentifier = [taskCopy taskIdentifier];
  identifiersToMonitors = self->_identifiersToMonitors;
  v14 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  v15 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v14];

  if (v15)
  {
    v16 = [dataCopy length];
    _incompleteCurrentTaskTransactionMetrics = [taskCopy _incompleteCurrentTaskTransactionMetrics];
    [v15 taskTransferredData:0 countOfBytesReceived:v16 cellular:{objc_msgSend(_incompleteCurrentTaskTransactionMetrics, "isCellular")}];
  }

  v18 = qword_1000EB210;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    *buf = 138544130;
    v34 = uuid;
    v35 = 2048;
    v36 = taskIdentifier;
    v37 = 2048;
    countOfBytesReceived = [taskCopy countOfBytesReceived];
    v39 = 2048;
    countOfBytesExpectedToReceive = [taskCopy countOfBytesExpectedToReceive];
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
    v32 = taskIdentifier;
    v20 = handlerCopy;
    v31 = v20;
    v21 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v30];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100045F10;
    v28[3] = &unk_1000D5F30;
    v29 = v20;
    [v21 backgroundDataTask:taskIdentifier didReceiveData:dataCopy withReply:v28];
  }

  else
  {
    v22 = qword_1000EB210;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543618;
      v34 = uuid2;
      v35 = 2048;
      v36 = taskIdentifier;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> received data and there is no connected client. Canceling task.", buf, 0x16u);
    }

    v24 = [[NWURLError alloc] initWithErrorCode:-997];
    currentRequest = [taskCopy currentRequest];
    v26 = [currentRequest URL];
    [v24 setFailingURL:v26];

    [(NDNWBackgroundSession *)self _cancelTaskWithIdentifier:taskIdentifier error:v24];
    handlerCopy[2](handlerCopy);
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  taskIdentifier = [taskCopy taskIdentifier];
  v13 = qword_1000EB210;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    *buf = 138544130;
    v38 = uuid;
    v39 = 2048;
    v40 = taskIdentifier;
    v41 = 2112;
    v42 = responseCopy;
    v43 = 1024;
    statusCode = [responseCopy statusCode];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> didReceiveResponse: %@, status code: %d", buf, 0x26u);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v16 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  v17 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v16];

  [v17 setResponse:responseCopy];
  v18 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  [(NDNWBackgroundSession *)self queueUpdatesForTask:v18 updateType:1 highPriority:0];

  resumableUploadData = [v17 resumableUploadData];
  LOBYTE(v18) = resumableUploadData == 0;

  if ((v18 & 1) == 0)
  {
    [v17 setResumableUploadData:0];
    v20 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
    [(NDNWBackgroundSession *)self queueUpdatesForTask:v20 updateType:2 highPriority:0];
  }

  taskKind = [v17 taskKind];
  clientProxy = self->_clientProxy;
  if (taskKind == 1)
  {
    [(NSXPCProxyCreating *)self->_clientProxy backgroundTask:taskIdentifier didReceiveResponse:responseCopy transactionMetrics:0];
    [(NDNWBackgroundSession *)self ensureSessionDownloadDirectoryExists];
    handlerCopy[2](handlerCopy, 2);
  }

  else if (clientProxy)
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100046424;
    v33[3] = &unk_1000D5840;
    v33[4] = self;
    v36 = taskIdentifier;
    v34 = v17;
    v23 = handlerCopy;
    v35 = v23;
    v24 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v33];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000465D0;
    v30[3] = &unk_1000D5868;
    v30[4] = self;
    v32 = taskIdentifier;
    v31 = v23;
    [v24 backgroundTask:taskIdentifier didReceiveResponse:responseCopy transactionMetrics:0 reply:v30];
  }

  else
  {
    v25 = qword_1000EB210;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      uuid2 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543618;
      v38 = uuid2;
      v39 = 2048;
      v40 = taskIdentifier;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> received data task didReceiveResponse callback and there is no connected client. Canceling task.", buf, 0x16u);
    }

    v26 = [[NWURLError alloc] initWithErrorCode:-997];
    currentRequest = [v17 currentRequest];
    v28 = [currentRequest URL];
    [v26 setFailingURL:v28];

    [(NDNWBackgroundSession *)self _cancelTaskWithIdentifier:taskIdentifier error:v26];
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  taskIdentifier = [taskCopy taskIdentifier];
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v10 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  v11 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v10];

  identifiersToStreams = self->_identifiersToStreams;
  if (identifiersToStreams)
  {
    v13 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
    [(NSMutableDictionary *)identifiersToStreams removeObjectForKey:v13];
  }

  [v11 setState:3];
  error = [v11 error];

  if (!error)
  {
    [v11 setError:errorCopy];
  }

  error2 = [v11 error];
  if (sub_100004F90(error2))
  {
    canBeSuspended = [(NDApplication *)self->_clientApplication canBeSuspended];
  }

  else
  {
    canBeSuspended = 0;
  }

  _trailers = [taskCopy _trailers];
  [v11 set_backgroundTrailers:_trailers];

  v18 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  [(NDNWBackgroundSession *)self queueUpdatesForTask:v18 updateType:14 highPriority:1];

  v37 = objc_alloc_init(NSMutableDictionary);
  _backgroundTrailers = [v11 _backgroundTrailers];

  if (_backgroundTrailers)
  {
    _backgroundTrailers2 = [v11 _backgroundTrailers];
    [v37 setObject:_backgroundTrailers2 forKeyedSubscript:@"trailers"];
  }

  v35 = canBeSuspended;
  v21 = [PendingCallback alloc];
  error3 = [v11 error];
  v23 = error3;
  if (!error3)
  {
    v23 = +[NSNull null];
  }

  v38[0] = v23;
  taskMetrics = [v11 taskMetrics];
  v25 = taskMetrics;
  if (!taskMetrics)
  {
    v25 = +[NSNull null];
  }

  v38[1] = v25;
  v38[2] = v37;
  v26 = [NSArray arrayWithObjects:v38 count:3];
  v27 = [(PendingCallback *)v21 initWithCallbackType:0 taskIdentifier:taskIdentifier args:v26];

  if (!taskMetrics)
  {
  }

  if (!error3)
  {
  }

  [(NDCallbackQueue *)self->_callbackQueue addPendingCallback:v27 wakeRequirement:0];
  identifiersToTasks = self->_identifiersToTasks;
  v29 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  [(NSMutableDictionary *)identifiersToTasks removeObjectForKey:v29];

  [(NDNWBackgroundSession *)self handleCompletionOfTask:taskCopy identifier:taskIdentifier taskInfo:v11 suppressWake:v35];
  [(NDNWBackgroundSession *)self removeUploadFileForTaskInfo:v11];
  if (![v11 taskKind])
  {
    error4 = [v11 error];
    if (error4)
    {
      error5 = [v11 error];
      userInfo = [error5 userInfo];
      v33 = [userInfo objectForKeyedSubscript:NSURLSessionDownloadTaskResumeData];
      v34 = v33 == 0;

      if (v34)
      {
        [(NDNWBackgroundSession *)self removeDownloadFileForTaskInfo:v11];
      }
    }
  }

  [(NDNWBackgroundSession *)self startTasksIfAllowed];
}

- (void)URLSession:(id)session task:(id)task didReceiveInformationalResponse:(id)response
{
  taskCopy = task;
  responseCopy = response;
  taskIdentifier = [taskCopy taskIdentifier];
  v10 = qword_1000EB210;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    v18 = 138544130;
    v19 = uuid;
    v20 = 2048;
    v21 = taskIdentifier;
    v22 = 2112;
    v23 = responseCopy;
    v24 = 1024;
    statusCode = [responseCopy statusCode];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> didReceiveInformationalResponse: %@, status code: %d", &v18, 0x26u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    resumeURL = [taskCopy resumeURL];
    if (resumeURL)
    {
      identifiersToTaskInfo = self->_identifiersToTaskInfo;
      v14 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
      v15 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v14];

      v16 = [NSKeyedArchiver archivedDataWithRootObject:resumeURL requiringSecureCoding:1 error:0];
      [v15 setResumableUploadData:v16];

      v17 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
      [(NDNWBackgroundSession *)self queueUpdatesForTask:v17 updateType:2 highPriority:0];
    }
  }

  [(NSXPCProxyCreating *)self->_clientProxy backgroundTask:taskIdentifier didReceiveInformationalResponse:responseCopy];
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  taskCopy = task;
  streamCopy = stream;
  taskIdentifier = [taskCopy taskIdentifier];
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v11 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

  [v12 setShouldCancelOnDisconnect:1];
  [v12 setDisablesRetry:!self->_retryDataTasks];
  v13 = qword_1000EB210;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    *buf = 138543618;
    v25 = uuid;
    v26 = 2048;
    v27 = taskIdentifier;
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
    v23 = taskIdentifier;
    v16 = streamCopy;
    v22 = v16;
    v17 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v21];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10004722C;
    v18[3] = &unk_1000D5818;
    v18[4] = self;
    v20 = taskIdentifier;
    v19 = v16;
    [v17 backgroundTask:taskIdentifier needNewBodyStream:1 withReply:v18];
  }

  else
  {
    (*(streamCopy + 2))(streamCopy, 0);
  }
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  taskCopy = task;
  taskIdentifier = [taskCopy taskIdentifier];
  identifiersToMonitors = self->_identifiersToMonitors;
  v13 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  v14 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v13];

  if (v14)
  {
    _incompleteCurrentTaskTransactionMetrics = [taskCopy _incompleteCurrentTaskTransactionMetrics];
    [v14 taskTransferredData:data countOfBytesReceived:0 cellular:{objc_msgSend(_incompleteCurrentTaskTransactionMetrics, "isCellular")}];
  }

  [(NSXPCProxyCreating *)self->_clientProxy backgroundTask:taskIdentifier didSendBodyData:data totalBytesSent:sent totalBytesExpectedToSend:send];
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  taskCopy = task;
  redirectionCopy = redirection;
  requestCopy = request;
  handlerCopy = handler;
  taskIdentifier = [taskCopy taskIdentifier];
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v16 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  v17 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v16];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100047830;
  v39[3] = &unk_1000D57A0;
  v18 = v17;
  v40 = v18;
  selfCopy = self;
  v43 = taskIdentifier;
  v19 = handlerCopy;
  v42 = v19;
  v20 = objc_retainBlock(v39);
  [v18 setCurrentRequest:requestCopy];
  v21 = [requestCopy URL];
  LOBYTE(v16) = [(NDNWBackgroundSession *)self errorIfBlockedTracker:taskCopy url:v21];

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
    uuid = [(NDNWBackgroundSession *)self uuid];
    *buf = 138544130;
    v45 = uuid;
    v46 = 2048;
    v47 = taskIdentifier;
    v48 = 2112;
    v49 = redirectionCopy;
    v50 = 2112;
    v51 = requestCopy;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> willPerformHTTPRedirection, response: %@, new request: %@", buf, 0x2Au);
  }

  clientProxy = self->_clientProxy;
  v23 = v20;
  v22 = requestCopy;
  if (!clientProxy)
  {
    goto LABEL_7;
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000478F0;
  v35[3] = &unk_1000D5840;
  v35[4] = self;
  v38 = taskIdentifier;
  v27 = v20;
  v37 = v27;
  v28 = requestCopy;
  v36 = v28;
  v29 = [(NSXPCProxyCreating *)clientProxy remoteObjectProxyWithErrorHandler:v35];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100047A14;
  v31[3] = &unk_1000D57C8;
  v31[4] = self;
  v32 = taskCopy;
  v33 = v19;
  v34 = v27;
  [v29 backgroundTask:taskIdentifier willPerformHTTPRedirection:redirectionCopy withNewRequest:v28 reply:v31];

LABEL_8:
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  taskIdentifier = [taskCopy taskIdentifier];
  v12 = qword_1000EB210;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    protectionSpace = [challengeCopy protectionSpace];
    clientBundleID = self->_clientBundleID;
    protectionSpace2 = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace2 authenticationMethod];
    *buf = 138544642;
    *&buf[4] = uuid;
    *&buf[12] = 2048;
    *&buf[14] = taskIdentifier;
    *&buf[22] = 2112;
    v61 = challengeCopy;
    v62 = 2112;
    v63 = protectionSpace;
    v64 = 2114;
    v65 = clientBundleID;
    v66 = 2114;
    v67 = authenticationMethod;
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
  v18 = handlerCopy;
  v54 = v18;
  v19 = objc_retainBlock(v53);
  if (!self->_performsEVCertCheck || ([challengeCopy protectionSpace], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "authenticationMethod"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", NSURLAuthenticationMethodServerTrust), v21, v20, !v22))
  {
    if (!sub_10004849C(challengeCopy) || self->_clientImplementsSessionChallenge || self->_clientImplementsTaskChallenge)
    {
      if (sub_10004849C(challengeCopy) || self->_clientImplementsTaskChallenge)
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
          v33 = [authenticationMethod2 isEqualToString:NSURLAuthenticationMethodServerTrust];

          if (v33)
          {
            protectionSpace4 = [challengeCopy protectionSpace];
            serverTrust = [protectionSpace4 serverTrust];

            if (!SecTrustEvaluateWithError(serverTrust, 0))
            {
              goto LABEL_36;
            }

            v36 = qword_1000EB210;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              uuid2 = [(NDNWBackgroundSession *)self uuid];
              *v56 = 138543618;
              v57 = uuid2;
              v58 = 2048;
              v59 = taskIdentifier;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> client is not running and trust is valid, performing default handling for auth challenge", v56, 0x16u);
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
            v49 = proposedCredential == 0;

            if (v49)
            {
              goto LABEL_36;
            }

            v36 = qword_1000EB210;
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              uuid3 = [(NDNWBackgroundSession *)self uuid];
              *v56 = 138543618;
              v57 = uuid3;
              v58 = 2048;
              v59 = taskIdentifier;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> client is not running and challenge has a previousFailureCount of 0 and a proposedCredential, performing default handling for auth challenge", v56, 0x16u);
            }
          }
        }

        else
        {
          v36 = qword_1000EB210;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            uuid4 = [(NDNWBackgroundSession *)self uuid];
            *v56 = 138543618;
            v57 = uuid4;
            v58 = 2048;
            v59 = taskIdentifier;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> client is not running and doesn't support app wakes, performing default handling for auth challenge", v56, 0x16u);
          }
        }
      }

      else
      {
        v36 = qword_1000EB210;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          uuid5 = [(NDNWBackgroundSession *)self uuid];
          *v56 = 138543618;
          v57 = uuid5;
          v58 = 2048;
          v59 = taskIdentifier;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> client doesn't implement task-level auth challenge delegate, performing default handling for auth challenge", v56, 0x16u);
        }
      }
    }

    else
    {
      v36 = qword_1000EB210;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        uuid6 = [(NDNWBackgroundSession *)self uuid];
        *v56 = 138543618;
        v57 = uuid6;
        v58 = 2048;
        v59 = taskIdentifier;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> client doesn't implement session-level or task-level auth challenge delegate, performing default handling for auth challenge", v56, 0x16u);
      }
    }

    (v19[2])(v19);
    goto LABEL_36;
  }

  v23 = qword_1000EB210;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    uuid7 = [(NDNWBackgroundSession *)self uuid];
    *v56 = 138543618;
    v57 = uuid7;
    v58 = 2048;
    v59 = taskIdentifier;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> performing Extended Validation Trust evaluation", v56, 0x16u);
  }

  protectionSpace5 = [challengeCopy protectionSpace];
  serverTrust2 = [protectionSpace5 serverTrust];

  LODWORD(protectionSpace5) = [(NDNWBackgroundSession *)self trustPassesExtendedValidation:serverTrust2];
  v27 = qword_1000EB210;
  v28 = v27;
  if (protectionSpace5)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      uuid8 = [(NDNWBackgroundSession *)self uuid];
      *v56 = 138543618;
      v57 = uuid8;
      v58 = 2048;
      v59 = taskIdentifier;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> Extended Validation Trust evaluation succeeded", v56, 0x16u);
    }

    v30 = [NSURLCredential credentialForTrust:serverTrust2];
    (*(v18 + 2))(v18, 0, v30);
  }

  else
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      uuid9 = [(NDNWBackgroundSession *)self uuid];
      *v56 = 138543618;
      v57 = uuid9;
      v58 = 2048;
      v59 = taskIdentifier;
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
    v44 = [NSArray arrayWithObjects:challengeCopy, v43, 0];
    v45 = [(PendingCallback *)v41 initWithCallbackType:2 taskIdentifier:taskIdentifier args:v44];

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

- (void)URLSession:(id)session _taskDidConnect:(id)connect
{
  connectCopy = connect;
  taskIdentifier = [connectCopy taskIdentifier];
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v7 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  v8 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v7];

  sub_10006E114(1, self->_clientBundleID, self->_identifier, self->_monitoredAppBundleID, self->_secondaryID, connectCopy, v8);
}

- (void)URLSession:(id)session task:(id)task willBeginDelayedRequest:(id)request completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  taskIdentifier = [taskCopy taskIdentifier];
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v12 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  v13 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v12];

  if (!self->_clientImplementsWillBeginDelayedRequest)
  {
    v15 = qword_1000EB210;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543618;
      v41 = uuid;
      v42 = 2048;
      v43 = taskIdentifier;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> skipping delayed request callback - delegate not implemented", buf, 0x16u);
    }

    goto LABEL_7;
  }

  respondedToWillBeginDelayedRequestCallback = [v13 respondedToWillBeginDelayedRequestCallback];
  v15 = qword_1000EB210;
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (respondedToWillBeginDelayedRequestCallback)
  {
    if (v16)
    {
      uuid2 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543618;
      v41 = uuid2;
      v42 = 2048;
      v43 = taskIdentifier;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> already replied to delayed request callback - not calling again", buf, 0x16u);
    }

LABEL_7:

    [(NDNWBackgroundSession *)self startMonitorForTask:taskIdentifier];
LABEL_8:
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
    goto LABEL_9;
  }

  if (v16)
  {
    uuid3 = [(NDNWBackgroundSession *)self uuid];
    *buf = 138543618;
    v41 = uuid3;
    v42 = 2048;
    v43 = taskIdentifier;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> receiving delayed request callback", buf, 0x16u);
  }

  if (!self->_clientProxy && (!self->_sendsLaunchEvents || ![(NDApplication *)self->_clientApplication supportsWakes]))
  {
    v28 = qword_1000EB210;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      uuid4 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543618;
      v41 = uuid4;
      v42 = 2048;
      v43 = taskIdentifier;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> client is not running and doesn't support wakes, continuing load for delayed request", buf, 0x16u);
    }

    [v13 setRespondedToWillBeginDelayedRequestCallback:1];
    [(NDNWBackgroundSession *)self startMonitorForTask:taskIdentifier];
    v30 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
    [(NDNWBackgroundSession *)self queueUpdatesForTask:v30 updateType:9 highPriority:0];

    goto LABEL_8;
  }

  currentRequest = [v13 currentRequest];
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_100048B4C;
  v34 = &unk_1000D5750;
  selfCopy = self;
  v38 = taskIdentifier;
  v36 = v13;
  v37 = handlerCopy;
  v21 = objc_retainBlock(&v31);
  v22 = [PendingCallback alloc];
  v39[0] = currentRequest;
  v23 = objc_retainBlock(v21);
  v39[1] = v23;
  selfCopy = [NSArray arrayWithObjects:v39 count:2, v31, v32, v33, v34, selfCopy];
  v25 = [(PendingCallback *)v22 initWithCallbackType:9 taskIdentifier:taskIdentifier args:selfCopy];

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
        uuid = [(NDNWBackgroundSession *)self uuid];
        v11 = error;
        code = [(__CFError *)error code];
        *buf = 138543618;
        v16 = uuid;
        v17 = 2048;
        v18 = code;
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
          uuid2 = [(NDNWBackgroundSession *)self uuid];
          *buf = 138543362;
          v16 = uuid2;
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

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    v10 = 138544130;
    v11 = uuid;
    v12 = 2112;
    v13 = sessionCopy;
    v14 = 2112;
    v15 = errorCopy;
    v16 = 2048;
    code = [errorCopy code];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Session %@ didBecomeInvalidWithError: %@ [%ld]", &v10, 0x2Au);
  }
}

- (void)invalidateWithReply:(id)reply
{
  replyCopy = reply;
  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    identifier = self->_identifier;
    clientBundleID = self->_clientBundleID;
    v13 = 138543874;
    v14 = uuid;
    v15 = 2112;
    v16 = identifier;
    v17 = 2114;
    v18 = clientBundleID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> InvalidateWithReply: for session %@ bundle ID %{public}@", &v13, 0x20u);
  }

  if ([(NDCallbackQueue *)self->_callbackQueue count]&& [(NSMutableDictionary *)self->_identifiersToTasks count]|| [(NDNWBackgroundSession *)self sessionHasOutstandingTasks])
  {
    invalidateReply = [(NDNWBackgroundSession *)self invalidateReply];
    v10 = invalidateReply == 0;

    if (v10)
    {
      [(NDNWBackgroundSession *)self setInvalidateReply:replyCopy];
    }
  }

  else
  {
    v11 = qword_1000EB210;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [(NDNWBackgroundSession *)self uuid];
      v13 = 138543362;
      v14 = uuid2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Cleaning up and invalidating immediately since there are no tasks", &v13, 0xCu);
    }

    [(NDNWBackgroundSession *)self cleanupSessionWithCompletionHandler:replyCopy];
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
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    v6 = 138543362;
    v7 = uuid;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> setTLSSessionCachePrefix not supported", &v6, 0xCu);
  }
}

- (void)setDiscretionaryOverride:(int64_t)override forTaskWithIdentifier:(unint64_t)identifier
{
  v7 = +[NSXPCConnection currentConnection];
  v8 = sub_100008D00(v7, @"com.apple.private.nsurlsession.set-discretionary-override-value");

  if (v8)
  {
    identifiersToTaskInfo = self->_identifiersToTaskInfo;
    v10 = [NSNumber numberWithUnsignedInteger:identifier];
    v11 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v10];

    [v11 setQos:qos_class_self()];
    v12 = qword_1000EB210;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(NDNWBackgroundSession *)self uuid];
      if (override)
      {
        if (override == 1)
        {
          v14 = 68;
        }

        else if (override == 2)
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
      v23 = uuid;
      v24 = 2048;
      identifierCopy2 = identifier;
      v26 = 1024;
      v27 = v14;
      v28 = 1024;
      LODWORD(v29) = [v11 qos];
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> setting discretionaryOverrride to %c, QOS(0x%x)", &v22, 0x22u);
    }

    [v11 setDiscretionaryOverride:override];
    [v11 setMayBeDemotedToDiscretionary:1];
    identifiersToTasks = self->_identifiersToTasks;
    v19 = [NSNumber numberWithUnsignedInteger:identifier];
    v20 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v19];

    if (v20)
    {
      [v20 setBackgroundSchedulingPriority:{-[NDNWBackgroundSession backgroundSchedulingPriorityWithTaskInfo:](self, "backgroundSchedulingPriorityWithTaskInfo:", v11)}];
    }

    v21 = +[NDStatusMonitor sharedMonitor];
    [v21 simulateNetworkChangedEvent:self identifier:identifier];
  }

  else
  {
    v11 = qword_1000EB210;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      uuid2 = [(NDNWBackgroundSession *)self uuid];
      v16 = uuid2;
      if (override)
      {
        if (override == 1)
        {
          v17 = 68;
        }

        else if (override == 2)
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
      v23 = uuid2;
      v24 = 2048;
      identifierCopy2 = identifier;
      v26 = 1024;
      v27 = v17;
      v28 = 2112;
      v29 = @"com.apple.private.nsurlsession.set-discretionary-override-value";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> attempted to set discretionaryOverrride to %c but lacks required entitlement %@", &v22, 0x26u);
    }
  }
}

- (void)setTLSMaximumSupportedProtocolVersion:(unsigned __int16)version forTaskWithIdentifier:(unint64_t)identifier
{
  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    v7 = 138543362;
    v8 = uuid;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> setTLSMaximumSupportedProtocolVersion not supported", &v7, 0xCu);
  }
}

- (void)setTLSMinimumSupportedProtocolVersion:(unsigned __int16)version forTaskWithIdentifier:(unint64_t)identifier
{
  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    v7 = 138543362;
    v8 = uuid;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> setTLSMinimumSupportedProtocolVersion not supported", &v7, 0xCu);
  }
}

- (void)setExpectedProgressTarget:(unint64_t)target forTaskWithIdentifier:(unint64_t)identifier
{
  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    v7 = 138543362;
    v8 = uuid;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> setExpectedProgressTarget not supported", &v7, 0xCu);
  }
}

- (void)setBytesPerSecondLimit:(int64_t)limit forTaskWithIdentifier:(unint64_t)identifier
{
  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    v7 = 138543362;
    v8 = uuid;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> setBytesPerSecondLimit not supported", &v7, 0xCu);
  }
}

- (void)setLoadingPoolPriority:(double)priority forTaskWithIdentifier:(unint64_t)identifier
{
  v5 = [NSXPCConnection currentConnection:identifier];
  v6 = sub_100008D00(v5, @"com.apple.private.nsurlsession.set-task-priority");

  v7 = qword_1000EB210;
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      uuid = [(NDNWBackgroundSession *)self uuid];
      v12 = 138543362;
      v13 = uuid;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> setLoadingPoolPriority not supported", &v12, 0xCu);
    }
  }

  else if (v8)
  {
    uuid2 = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    v12 = 138543874;
    v13 = uuid2;
    v14 = 2114;
    v15 = clientBundleID;
    v16 = 2112;
    v17 = @"com.apple.private.nsurlsession.set-task-priority";
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> %{public}@ tried to set the loading priority of a task but is missing the %@ entitlement", &v12, 0x20u);
  }
}

- (void)setPriority:(int64_t)priority forTaskWithIdentifier:(unint64_t)identifier
{
  v5 = [NSXPCConnection currentConnection:priority];
  v6 = sub_100008D00(v5, @"com.apple.private.nsurlsession.set-task-priority");

  v7 = qword_1000EB210;
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v6)
  {
    if (v8)
    {
      uuid = [(NDNWBackgroundSession *)self uuid];
      v12 = 138543362;
      v13 = uuid;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> setPriority not supported", &v12, 0xCu);
    }
  }

  else if (v8)
  {
    uuid2 = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    v12 = 138543874;
    v13 = uuid2;
    v14 = 2114;
    v15 = clientBundleID;
    v16 = 2112;
    v17 = @"com.apple.private.nsurlsession.set-task-priority";
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> %{public}@ tried to set the priority of a task but is missing the %@ entitlement", &v12, 0x20u);
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
  [(NDNWBackgroundSession *)self queueUpdatesForTask:v12 updateType:0 highPriority:1];
}

- (void)setPropertyOnStreamWithIdentifier:(unint64_t)identifier propDict:(id)dict propKey:(id)key withReply:(id)reply
{
  dictCopy = dict;
  keyCopy = key;
  replyCopy = reply;
  v13 = qword_1000EB210;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    v20 = 138544130;
    v21 = uuid;
    v22 = 2048;
    identifierCopy = identifier;
    v24 = 2114;
    v25 = clientBundleID;
    v26 = 2112;
    v27 = dictCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> setPropertyOnStreamWithIdentifier, client %{public}@ property %@", &v20, 0x2Au);
  }

  v16 = 0;
  if (dictCopy && keyCopy)
  {
    identifiersToStreams = self->_identifiersToStreams;
    v18 = [NSNumber numberWithUnsignedInteger:identifier];
    v19 = [(NSMutableDictionary *)identifiersToStreams objectForKeyedSubscript:v18];
    v16 = [v19 setProperty:dictCopy forKey:keyCopy];
  }

  replyCopy[2](replyCopy, v16);
}

- (void)resumeTaskWithIdentifier:(unint64_t)identifier withProperties:(id)properties
{
  propertiesCopy = properties;
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v8 = [NSNumber numberWithUnsignedInteger:identifier];
  v9 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v8];

  if (v9 && [v9 state])
  {
    [v9 setState:0];
    [v9 setQos:qos_class_self()];
    v10 = +[UMUserManager sharedManager];
    currentPersona = [v10 currentPersona];
    userPersonaUniqueString = [currentPersona userPersonaUniqueString];
    [v9 setPersonaUniqueString:userPersonaUniqueString];

    v13 = qword_1000EB210;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(NDNWBackgroundSession *)self uuid];
      v19 = 138544130;
      v20 = uuid;
      v21 = 2048;
      identifierCopy = identifier;
      v23 = 1024;
      v24 = [v9 qos];
      v25 = 2112;
      v26 = propertiesCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> resumeTaskWithIdentifier, QOS(0x%x), props %@", &v19, 0x26u);
    }

    v15 = [(NDNWBackgroundSession *)self sanitizeTaskProperties:propertiesCopy];
    [v9 setAdditionalProperties:v15];

    [(NSXPCProxyCreating *)self->_clientProxy backgroundTaskDidResume:identifier];
    identifiersToTasks = self->_identifiersToTasks;
    v17 = [NSNumber numberWithUnsignedInteger:identifier];
    v18 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v17];

    if (v18)
    {
      [(NDNWBackgroundSession *)self _resumeTask:identifier];
    }

    else
    {
      [(NDNWBackgroundSession *)self startTasksIfAllowed];
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
    uuid = [(NDNWBackgroundSession *)self uuid];
    v17 = 138543618;
    v18 = uuid;
    v19 = 2048;
    identifierCopy = identifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> suspendTaskWithIdentifier", &v17, 0x16u);
  }

  if (v7 && [v7 state] != 1)
  {
    [v7 setState:1];
    [(NSXPCProxyCreating *)self->_clientProxy backgroundTaskDidSuspend:identifier];
    identifiersToTasks = self->_identifiersToTasks;
    v11 = [NSNumber numberWithUnsignedInteger:identifier];
    v12 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v11];

    if (v12)
    {
      [v12 suspend];
      identifiersToMonitors = self->_identifiersToMonitors;
      v14 = [NSNumber numberWithUnsignedInteger:identifier];
      v15 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v14];

      [v15 taskWillSuspend];
    }

    sub_10006E114(2, self->_clientBundleID, self->_identifier, self->_monitoredAppBundleID, self->_secondaryID, v12, v7);
    v16 = [NSNumber numberWithUnsignedInteger:identifier];
    [(NDNWBackgroundSession *)self queueUpdatesForTask:v16 updateType:11 highPriority:1];
  }
}

- (void)cancelTaskWithIdentifier:(unint64_t)identifier
{
  v5 = qword_1000EB210;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    v13 = 138543618;
    v14 = uuid;
    v15 = 2048;
    identifierCopy = identifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> cancelTaskWithIdentifier", &v13, 0x16u);
  }

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v8 = [NSNumber numberWithUnsignedInteger:identifier];
  v9 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v8];

  v10 = [[NWURLError alloc] initWithErrorCode:-999];
  currentRequest = [v9 currentRequest];
  v12 = [currentRequest URL];
  [v10 setFailingURL:v12];

  [(NDNWBackgroundSession *)self _cancelTaskWithIdentifier:identifier error:v10];
}

- (void)cancelTaskWithIdentifier:(unint64_t)identifier byProducingResumeData:(id)data
{
  dataCopy = data;
  v7 = [(NDNWBackgroundSession *)self createTaskIfNeeded:identifier];
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v9 = [NSNumber numberWithUnsignedInteger:identifier];
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
    v13[6] = identifier;
    v13[5] = dataCopy;
    [v7 cancelByProducingResumeData:v13];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      (*(dataCopy + 2))(dataCopy, 0);
      goto LABEL_7;
    }

    v11 = v12;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10004AAC4;
    v12[3] = &unk_1000D5728;
    v12[4] = self;
    v12[6] = identifier;
    v12[5] = dataCopy;
    [v7 cancelByProducingResumeData:v12];
  }

LABEL_7:
}

- (void)dataTaskWithRequest:(id)request originalRequest:(id)originalRequest identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier reply:(id)reply
{
  requestCopy = request;
  originalRequestCopy = originalRequest;
  uniqueIdentifierCopy = uniqueIdentifier;
  replyCopy = reply;
  v16 = qword_1000EB210;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    v18 = [(NDNWBackgroundSession *)self descriptionForRequest:requestCopy];
    v22 = 138544130;
    v23 = uuid;
    v24 = 2114;
    v25 = uniqueIdentifierCopy;
    v26 = 2048;
    identifierCopy = identifier;
    v28 = 2112;
    v29 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Task <%{public}@>.<%lu> dataTaskWithRequest: %@", &v22, 0x2Au);
  }

  v19 = objc_alloc_init(__NSCFURLSessionTaskInfo);
  [v19 setTaskKind:2];
  [v19 setUniqueIdentifier:self->_uuid];
  [v19 setIdentifier:identifier];
  [v19 setState:1];
  [v19 setOriginalRequest:originalRequestCopy];
  [v19 setCurrentRequest:requestCopy];
  [v19 setBundleID:self->_clientBundleID];
  [v19 setSessionID:self->_identifier];
  [v19 setQos:qos_class_self()];
  if (!self->_clientImplementsWillSendRequest || !self->_sendsLaunchEvents)
  {
    [v19 setShouldCancelOnDisconnect:1];
  }

  [v19 setDisablesRetry:!self->_retryDataTasks];
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v21 = [NSNumber numberWithUnsignedInteger:identifier];
  [(NSMutableDictionary *)identifiersToTaskInfo setObject:v19 forKeyedSubscript:v21];

  replyCopy[2](replyCopy, 1);
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
  v21 = qword_1000EB210;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    v23 = [(NDNWBackgroundSession *)self descriptionForRequest:requestCopy];
    *buf = 138544386;
    v34 = uuid;
    v35 = 2114;
    v36 = uniqueIdentifierCopy;
    v37 = 2048;
    identifierCopy = identifier;
    v39 = 2112;
    v40 = v23;
    v41 = 2112;
    v42 = fileCopy;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Task <%{public}@>.<%lu> uploadTaskWithRequest: %@ fromFile: %@", buf, 0x34u);
  }

  if (!fileCopy)
  {
    v24 = 0;
    if (!credentialsCopy)
    {
      goto LABEL_11;
    }

LABEL_8:
    v25 = +[Daemon sharedDaemon];
    isInSyncBubble = [v25 isInSyncBubble];

    if ((isInSyncBubble & 1) == 0 && self->_clientBundleID)
    {
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10004B260;
      v32[3] = &unk_1000D5700;
      v32[4] = self;
      [credentialsCopy enumerateKeysAndObjectsUsingBlock:v32];
    }

    goto LABEL_11;
  }

  v24 = [(NDNWBackgroundSession *)self makeTempUploadFile:fileCopy withExtensionData:dataCopy];
  if (!v24)
  {
    replyCopy[2](replyCopy, 0);
    goto LABEL_13;
  }

  if (credentialsCopy)
  {
    goto LABEL_8;
  }

LABEL_11:
  v27 = objc_alloc_init(__NSCFURLSessionTaskInfo);
  [v27 setTaskKind:1];
  [v27 setUniqueIdentifier:self->_uuid];
  [v27 setIdentifier:identifier];
  [v27 setState:1];
  [v27 setOriginalRequest:originalRequestCopy];
  [v27 setCurrentRequest:requestCopy];
  [v27 setBundleID:self->_clientBundleID];
  [v27 setSessionID:self->_identifier];
  [v27 setQos:qos_class_self()];
  [v27 setFileURL:v24];
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v29 = [NSNumber numberWithUnsignedInteger:identifier];
  [(NSMutableDictionary *)identifiersToTaskInfo setObject:v27 forKeyedSubscript:v29];

  replyCopy[2](replyCopy, 1);
LABEL_13:
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
  v23 = qword_1000EB210;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    *buf = 138543874;
    v32 = uuid;
    v33 = 2114;
    v34 = uniqueIdentifierCopy;
    v35 = 2048;
    identifierCopy = identifier;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Task <%{public}@>.<%lu> uploadTaskWithResumableUploadState", buf, 0x20u);
  }

  if (!fileCopy)
  {
    v25 = 0;
    if (!credentialsCopy)
    {
      goto LABEL_11;
    }

LABEL_8:
    v26 = +[Daemon sharedDaemon];
    isInSyncBubble = [v26 isInSyncBubble];

    if ((isInSyncBubble & 1) == 0 && self->_clientBundleID)
    {
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10004B75C;
      v30[3] = &unk_1000D5700;
      v30[4] = self;
      [credentialsCopy enumerateKeysAndObjectsUsingBlock:v30];
    }

    goto LABEL_11;
  }

  v25 = [(NDNWBackgroundSession *)self makeTempUploadFile:fileCopy withExtensionData:dataCopy];
  if (!v25)
  {
    replyCopy[2](replyCopy, 0);
    goto LABEL_13;
  }

  if (credentialsCopy)
  {
    goto LABEL_8;
  }

LABEL_11:
  replyCopy[2](replyCopy, 1);
LABEL_13:
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
    uuid = [(NDNWBackgroundSession *)self uuid];
    v18 = [(NDNWBackgroundSession *)self descriptionForRequest:requestCopy];
    *buf = 138544130;
    *&buf[4] = uuid;
    *&buf[12] = 2114;
    *&buf[14] = uniqueIdentifierCopy;
    *&buf[22] = 2048;
    *&buf[24] = identifier;
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
    [v19 setIdentifier:identifier];
    [v19 setState:1];
    [v19 setOriginalRequest:originalRequestCopy];
    [v19 setCurrentRequest:requestCopy];
    [v19 setBundleID:self->_clientBundleID];
    [v19 setSessionID:self->_identifier];
    [v19 setQos:qos_class_self()];
    v20 = +[Daemon sharedDaemon];
    if ([v20 isPrivileged])
    {
      v21 = pathCopy;
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
        v29 = [NSNumber numberWithUnsignedInteger:identifier];
        [(NSMutableDictionary *)identifiersToTaskInfo setObject:v19 forKeyedSubscript:v29];

        replyCopy[2](replyCopy, 1);
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
    uuid2 = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    *buf = 138543874;
    *&buf[4] = uuid2;
    *&buf[12] = 2112;
    *&buf[14] = requestCopy;
    *&buf[22] = 2114;
    *&buf[24] = clientBundleID;
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Received an unsafe request for background download: %@ from %{public}@", buf, 0x20u);
  }

  replyCopy[2](replyCopy, 0);
LABEL_22:
}

- (void)downloadTaskWithResumeData:(id)data identifier:(unint64_t)identifier uniqueIdentifier:(id)uniqueIdentifier reply:(id)reply
{
  replyCopy = reply;
  v10 = [NWURLSessionDownloadResumeInfo infoWithResumeData:data];
  currentRequest = [v10 currentRequest];
  if (currentRequest && (_CFN_isSafeRequestForBackgroundDownload() & 1) != 0)
  {
    [(NDNWBackgroundSession *)self ensureSessionDownloadDirectoryExists];
    v12 = objc_alloc_init(__NSCFURLSessionTaskInfo);
    [v12 setTaskKind:0];
    [v12 setUniqueIdentifier:self->_uuid];
    [v12 setIdentifier:identifier];
    [v12 setState:1];
    [(NDNWBackgroundSession *)self configureTaskInfo:v12 withResumeInfo:v10];
    [v12 setBundleID:self->_clientBundleID];
    [v12 setSessionID:self->_identifier];
    [v12 setQos:qos_class_self()];
    tempFileName = [v10 tempFileName];

    if (tempFileName)
    {
      tempFileName2 = [v10 tempFileName];
      v15 = [NSURL fileURLWithPath:tempFileName2 isDirectory:0 relativeToURL:self->_downloadDirectory];
      [v12 setDownloadFileURL:v15];

LABEL_20:
      [v12 setExpectingResumeCallback:1];
      identifiersToTaskInfo = self->_identifiersToTaskInfo;
      v25 = [NSNumber numberWithUnsignedInteger:identifier];
      [(NSMutableDictionary *)identifiersToTaskInfo setObject:v12 forKeyedSubscript:v25];

      replyCopy[2](replyCopy, 1);
      goto LABEL_21;
    }

    v17 = +[Daemon sharedDaemon];
    if ([v17 isPrivileged])
    {
      fileURL = [v10 fileURL];

      if (fileURL)
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

        v23 = [NDFileUtilities safeURLForDownload:fileURL auditToken:v26];
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
      fileURL = 0;
    }

    v23 = 0;
    goto LABEL_17;
  }

  v16 = qword_1000EB210;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    LODWORD(v26[0]) = 138543618;
    *(v26 + 4) = uuid;
    WORD6(v26[0]) = 2114;
    *(v26 + 14) = clientBundleID;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Received a background download request from unsafe resume data from %{public}@", v26, 0x16u);
  }

  replyCopy[2](replyCopy, 0);
LABEL_21:
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
            uuid = [(NDNWBackgroundSession *)self uuid];
            clientBundleID = self->_clientBundleID;
            *buf = 138543618;
            v39 = uuid;
            v40 = 2114;
            v41 = clientBundleID;
            _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Not waking up client %{public}@ since session is obliterated", buf, 0x16u);
          }
        }

        else if ([(NDNWBackgroundSession *)self clientIsActive])
        {
          uUIDString = qword_1000EB210;
          if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_DEFAULT))
          {
            uuid2 = [(NDNWBackgroundSession *)self uuid];
            v16 = self->_clientBundleID;
            *buf = 138543618;
            v39 = uuid2;
            v40 = 2114;
            v41 = v16;
            _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Not waking up client %{public}@ since it's already connected", buf, 0x16u);
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
            uuid3 = [(NDNWBackgroundSession *)self uuid];
            *buf = 138543618;
            v39 = uuid3;
            v40 = 2114;
            v41 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Waking up the client app: %{public}@", buf, 0x16u);
          }

          clientApplication = self->_clientApplication;
          identifier = self->_identifier;
          uuid4 = [(NDNWBackgroundSession *)self uuid];
          v30 = [(NDApplication *)clientApplication wakeForSessionIdentifier:identifier withSessionUUID:uuid4 wakeRequirement:client];

          if ((v30 & 1) == 0)
          {
            v31 = qword_1000EB210;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              uuid5 = [(NDNWBackgroundSession *)self uuid];
              *buf = 138543618;
              v39 = uuid5;
              v40 = 2114;
              v41 = v24;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Failed to wake app: %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          uUIDString = qword_1000EB210;
          if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_DEFAULT))
          {
            uuid6 = [(NDNWBackgroundSession *)self uuid];
            v33 = self->_clientBundleID;
            *buf = 138543618;
            v39 = uuid6;
            v40 = 2114;
            v41 = v33;
            _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Not waking up client %{public}@ since background updates are not enabled", buf, 0x16u);
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
          v35[5] = client;
          [v12 performWake:v35 uponNotification:self->_clientBundleID sessionIdentifier:self->_identifier];
        }

        uUIDString = qword_1000EB210;
        if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_DEFAULT))
        {
          uuid7 = [(NDNWBackgroundSession *)self uuid];
          v14 = self->_clientBundleID;
          *buf = 138543618;
          v39 = uuid7;
          v40 = 2114;
          v41 = v14;
          _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Not waking up client %{public}@ since it doesn't support app wakes", buf, 0x16u);
        }
      }
    }

    else
    {
      uUIDString = qword_1000EB210;
      if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_DEFAULT))
      {
        uuid8 = [(NDNWBackgroundSession *)self uuid];
        v11 = self->_clientBundleID;
        *buf = 138543618;
        v39 = uuid8;
        v40 = 2114;
        v41 = v11;
        _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Not waking up client %{public}@ since sessionSendsLaunchEvents is NO", buf, 0x16u);
      }
    }
  }

  else
  {
    uUIDString = qword_1000EB210;
    if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_DEFAULT))
    {
      uuid9 = [(NDNWBackgroundSession *)self uuid];
      v9 = self->_clientBundleID;
      *buf = 138543618;
      v39 = uuid9;
      v40 = 2114;
      v41 = v9;
      _os_log_impl(&_mh_execute_header, uUIDString, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Not waking up client %{public}@ since wake request is unnecessary", buf, 0x16u);
    }
  }
}

- (void)clientAcknowledgedTerminalCallbackForTask:(unint64_t)task
{
  identifiersToTasks = self->_identifiersToTasks;
  v7 = [NSNumber numberWithUnsignedInteger:?];
  [(NSMutableDictionary *)identifiersToTasks removeObjectForKey:?];

  v8 = [NSNumber numberWithUnsignedInteger:task];
  [NDNWBackgroundSession queueUpdatesForTask:"queueUpdatesForTask:updateType:highPriority:" updateType:? highPriority:?];

  [(NDCallbackQueue *)self->_callbackQueue drainCallbacksForTaskIdentifier:task];
  if (![(NDCallbackQueue *)self->_callbackQueue count]&& ![(NDNWBackgroundSession *)self sessionHasOutstandingTasks])
  {
    invalidateReply = [(NDNWBackgroundSession *)self invalidateReply];

    if (invalidateReply)
    {
      invalidateReply2 = [(NDNWBackgroundSession *)self invalidateReply];
      [(NDNWBackgroundSession *)self setInvalidateReply:0];
      [(NDNWBackgroundSession *)self cleanupSessionWithCompletionHandler:invalidateReply2];
    }
  }
}

- (void)errorOccurredDuringAuthCallbackDelivery:(id)delivery completionHandler:(id)handler
{
  deliveryCopy = delivery;
  handlerCopy = handler;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    v11 = 138543618;
    v12 = uuid;
    v13 = 2112;
    v14 = deliveryCopy;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Encountered error %@ error delivering auth challenge to client, performing default handling", &v11, 0x16u);
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
    uuid = [(NDNWBackgroundSession *)self uuid];
    v8 = 138543618;
    v9 = uuid;
    v10 = 2112;
    v11 = deliveryCopy;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Encountered error %@ during task completion callback delivery", &v8, 0x16u);
  }

  clientProxy = self->_clientProxy;
  self->_clientProxy = 0;

  if (![(NDNWBackgroundSession *)self sessionHasOutstandingTasks])
  {
    [(NDNWBackgroundSession *)self wakeUpClient:1];
  }
}

- (void)taskMonitor:(id)monitor terminateTask:(unint64_t)task reason:(int)reason
{
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v9 = [NSNumber numberWithUnsignedInteger:task];
  v14 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v9];

  v10 = [[NWURLError alloc] initWithErrorCode:-999];
  currentRequest = [v14 currentRequest];
  v12 = [currentRequest URL];
  [v10 setFailingURL:v12];

  if (reason == 1)
  {
    v13 = &off_1000D89C8;
  }

  else
  {
    if (reason != 2)
    {
      goto LABEL_6;
    }

    v13 = &off_1000D89E0;
  }

  [v10 setBackgroundTaskCancelledReason:v13];
LABEL_6:
  [(NDNWBackgroundSession *)self _cancelTaskWithIdentifier:task error:v10];
}

- (void)taskMonitor:(id)monitor retryTask:(unint64_t)task reason:(int)reason
{
  identifiersToTasks = self->_identifiersToTasks;
  v6 = [NSNumber numberWithUnsignedInteger:task];
  v10 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v6];

  if (v10)
  {
    v7 = [[NWURLError alloc] initWithErrorCode:-999];
    currentRequest = [v10 currentRequest];
    v9 = [currentRequest URL];
    [v7 setFailingURL:v9];

    [v7 setBackgroundTaskCancelledReason:&off_1000D89B0];
    [v10 stopAndRetryWithError:v7];
  }
}

- (void)taskMonitor:(id)monitor updateTaskPriority:(unint64_t)priority reason:(int)reason
{
  identifiersToTasks = self->_identifiersToTasks;
  v8 = [NSNumber numberWithUnsignedInteger:priority];
  v13 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v8];

  v9 = v13;
  if (v13)
  {
    identifiersToTaskInfo = self->_identifiersToTaskInfo;
    v11 = [NSNumber numberWithUnsignedInteger:priority];
    v12 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v11];

    [v13 setBackgroundSchedulingPriority:{-[NDNWBackgroundSession backgroundSchedulingPriorityWithTaskInfo:](self, "backgroundSchedulingPriorityWithTaskInfo:", v12)}];
    v9 = v13;
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
      uuid = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543618;
      v16 = uuid;
      v17 = 2048;
      taskIdentifier = [trackerCopy taskIdentifier];
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> is blocked due to tracker policy", buf, 0x16u);
    }

    v11 = [[NWURLError alloc] initWithErrorCode:-1004];
    [v11 setFailingURL:urlCopy];
    -[NDNWBackgroundSession _cancelTaskWithIdentifier:error:](self, "_cancelTaskWithIdentifier:error:", [trackerCopy taskIdentifier], v11);
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
    uuid = [(NDNWBackgroundSession *)self uuid];
    *buf = 138543618;
    v17 = uuid;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Created stream with file descriptor: %d", buf, 0x12u);
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
      uuid = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543874;
      v47 = uuid;
      v48 = 2112;
      v49 = fileCopy;
      v50 = 2048;
      v51 = v10;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Consumed sandbox extension for file %@, extension = %lld", buf, 0x20u);
    }

    if (v10 < 0)
    {
      v33 = qword_1000EB210;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [(NDNWBackgroundSession *)self uuid];
        *buf = 138543874;
        v47 = uuid2;
        v48 = 2080;
        v49 = bytes;
        v50 = 2112;
        v51 = fileCopy;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Failed to consume sandbox extension %s for fileURL %@", buf, 0x20u);
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
        uuid3 = [(NDNWBackgroundSession *)self uuid];
        *buf = 138543618;
        v47 = uuid3;
        v48 = 1024;
        LODWORD(v49) = v16;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Error cloning file: %{errno}d", buf, 0x12u);
      }

      goto LABEL_37;
    }

    v17 = qword_1000EB210;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      uuid4 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543362;
      v47 = uuid4;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Falling back to copy", buf, 0xCu);
    }

    v19 = v14;
    v20 = open([v14 fileSystemRepresentation], 513, 384);
    if (v20 == -1)
    {
      v23 = qword_1000EB210;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        uuid5 = [(NDNWBackgroundSession *)self uuid];
        v41 = *__error();
        *buf = 138543618;
        v47 = uuid5;
        v48 = 1024;
        LODWORD(v49) = v41;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Error creating file: %{errno}d", buf, 0x12u);
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
        uuid6 = [(NDNWBackgroundSession *)self uuid];
        v39 = *__error();
        *buf = 138543618;
        v47 = uuid6;
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
      uuid7 = [(NDNWBackgroundSession *)self uuid];
      code = [v23 code];
      *buf = 138543874;
      v47 = uuid7;
      v48 = 2112;
      v49 = v23;
      v50 = 2048;
      v51 = code;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Error checking resource value: %@ [%ld]", buf, 0x20u);
    }

    goto LABEL_21;
  }

  if ([v25 BOOLValue])
  {
    v26 = qword_1000EB210;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      uuid8 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543362;
      v47 = uuid8;
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
      uuid9 = [(NDNWBackgroundSession *)self uuid];
      *buf = 138543618;
      v47 = uuid9;
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

- (void)_resumeTask:(unint64_t)task
{
  identifiersToTasks = self->_identifiersToTasks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v6];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v9 = [NSNumber numberWithUnsignedInteger:task];
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
      uuid = [(NDNWBackgroundSession *)self uuid];
      *buf = 138544130;
      v22 = uuid;
      v23 = 2048;
      taskCopy = task;
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
    taskCopy2 = task;
    v18 = v10;
    v19 = v7;
    v15 = dispatch_block_create_with_qos_class(0, v14, 0, v17);
    dispatch_async(workQueue, v15);
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

- (void)startMonitorForTask:(unint64_t)task
{
  identifiersToTasks = self->_identifiersToTasks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v17 = [(NSMutableDictionary *)identifiersToTasks objectForKeyedSubscript:v6];

  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v8 = [NSNumber numberWithUnsignedInteger:task];
  v9 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v8];

  identifiersToMonitors = self->_identifiersToMonitors;
  v11 = [NSNumber numberWithUnsignedInteger:task];
  v12 = [(NSMutableDictionary *)identifiersToMonitors objectForKeyedSubscript:v11];

  if (!v12)
  {
    isDiscretionary = [v9 isDiscretionary];
    if (self->_discretionary)
    {
      v14 = isDiscretionary | 2;
    }

    else
    {
      v14 = isDiscretionary;
    }

    if (self->_infersDiscretionary || [(NDApplication *)self->_clientApplication canBeSuspended])
    {
      v14 |= 4uLL;
    }

    v12 = -[NDTaskMonitor initWithDelegate:taskInfo:clientBundleIdentifier:secondaryIdentifier:monitoredApplication:priority:options:queue:]([NDTaskMonitor alloc], "initWithDelegate:taskInfo:clientBundleIdentifier:secondaryIdentifier:monitoredApplication:priority:options:queue:", self, v9, self->_clientBundleID, self->_secondaryID, self->_monitoredApplication, [v9 basePriority], v14, self->_workQueue);
    v15 = self->_identifiersToMonitors;
    v16 = [NSNumber numberWithUnsignedInteger:task];
    [(NSMutableDictionary *)v15 setObject:v12 forKeyedSubscript:v16];
  }

  [(NDTaskMonitor *)v12 taskWillResume];
  sub_10006E114(0, self->_clientBundleID, self->_identifier, self->_monitoredAppBundleID, self->_secondaryID, v17, v9);
}

- (BOOL)currentDiscretionaryStatusWithOptionalTaskInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (!infoCopy || ![infoCopy discretionaryOverride])
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
      _xpcConnection = [(NSXPCConnection *)xpcConn _xpcConnection];
      if (xpc_connection_is_extension())
      {
        discretionary = self->_discretionary;

        if (!discretionary)
        {
          v19 = qword_1000EB210;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            uuid = [(NDNWBackgroundSession *)self uuid];
            identifier = [v5 identifier];
            bundleIdentifier = [(NDApplication *)self->_clientApplication bundleIdentifier];
            v36 = 138543874;
            v37 = uuid;
            v38 = 2048;
            v39 = identifier;
            v40 = 2114;
            v41 = bundleIdentifier;
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
    isInSyncBubble = [v23 isInSyncBubble];

    if (isInSyncBubble)
    {
      v19 = qword_1000EB210;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        uuid2 = [(NDNWBackgroundSession *)self uuid];
        identifier2 = [v5 identifier];
        bundleIdentifier2 = [(NDApplication *)v8 bundleIdentifier];
        v36 = 138543874;
        v37 = uuid2;
        v38 = 2048;
        v39 = identifier2;
        v40 = 2114;
        v41 = bundleIdentifier2;
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
          uuid3 = [(NDNWBackgroundSession *)self uuid];
          identifier3 = [v5 identifier];
          bundleIdentifier3 = [(NDApplication *)v8 bundleIdentifier];
          v31 = self->_discretionary;
          v36 = 138544130;
          v37 = uuid3;
          v38 = 2048;
          v39 = identifier3;
          v40 = 2114;
          v41 = bundleIdentifier3;
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
        uuid4 = [(NDNWBackgroundSession *)self uuid];
        identifier4 = [v5 identifier];
        bundleIdentifier4 = [(NDApplication *)v8 bundleIdentifier];
        v36 = 138543874;
        v37 = uuid4;
        v38 = 2048;
        v39 = identifier4;
        v40 = 2114;
        v41 = bundleIdentifier4;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> <%zu> current discretionary status for %{public}@ is non-discretionary", &v36, 0x20u);
      }
    }

LABEL_29:
    v7 = 0;
LABEL_30:

    goto LABEL_31;
  }

  discretionaryOverride = [v5 discretionaryOverride];
  v7 = discretionaryOverride == 1;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(&v8->super, OS_LOG_TYPE_DEFAULT))
  {
    uuid5 = [(NDNWBackgroundSession *)self uuid];
    identifier5 = [v5 identifier];
    bundleIdentifier5 = [(NDApplication *)self->_clientApplication bundleIdentifier];
    v12 = bundleIdentifier5;
    v36 = 138544130;
    if (discretionaryOverride == 1)
    {
      v13 = 89;
    }

    else
    {
      v13 = 78;
    }

    v37 = uuid5;
    v38 = 2048;
    v39 = identifier5;
    v40 = 2114;
    v41 = bundleIdentifier5;
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
    uuid = [(NDNWBackgroundSession *)self uuid];
    identifier = self->_identifier;
    *buf = 138543874;
    v10 = uuid;
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

- (void)fillInByteCountsForTaskInfo:(id)info withTaskID:(id)d
{
  infoCopy = info;
  v6 = [(NSMutableDictionary *)self->_identifiersToTasks objectForKeyedSubscript:d];
  v7 = v6;
  if (v6)
  {
    [infoCopy setCountOfBytesSent:{objc_msgSend(v6, "countOfBytesSent")}];
    [infoCopy setCountOfBytesReceived:{objc_msgSend(v7, "countOfBytesReceived")}];
    [infoCopy setCountOfBytesExpectedToSend:{objc_msgSend(v7, "countOfBytesExpectedToSend")}];
    [infoCopy setCountOfBytesExpectedToReceive:{objc_msgSend(v7, "countOfBytesExpectedToReceive")}];
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

- (void)reconnectClient:(id)client withCompletion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10004F4C4;
  v26[3] = &unk_1000D5F80;
  v26[4] = self;
  v8 = clientCopy;
  v27 = v8;
  v9 = completionCopy;
  v28 = v9;
  v10 = objc_retainBlock(v26);
  clientApplication = self->_clientApplication;
  identifier = self->_identifier;
  uuid = [(NDNWBackgroundSession *)self uuid];
  v14 = [(NDApplication *)clientApplication isHandlingBackgroundURLSessionWithIdentifier:identifier withSessionUUID:uuid];

  LOBYTE(identifier) = self->_hasBeenSignalledToDeliverPendingEvents;
  v15 = qword_1000EB210;
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if ((identifier & 1) != 0 || v14 != 1)
  {
    if (v16)
    {
      uuid2 = [(NDNWBackgroundSession *)self uuid];
      clientBundleID = self->_clientBundleID;
      v24 = self->_identifier;
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
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Delivering pending events immediately for client session: <%{public}@>.<%@>. Signalled already: %d, isHandlingBackgroundSession: %d", buf, 0x2Cu);
    }

    self->_hasBeenSignalledToDeliverPendingEvents = 0;
    (v10[2])(v10);
  }

  else
  {
    if (v16)
    {
      uuid3 = [(NDNWBackgroundSession *)self uuid];
      v18 = self->_clientBundleID;
      v19 = self->_identifier;
      *buf = 138543874;
      v30 = uuid3;
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
    uuid = [(NDNWBackgroundSession *)self uuid];
    v5 = uuid;
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
    v18 = uuid;
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

- (BOOL)finalizeTaskCompletionWithSuppressedWake:(BOOL)wake
{
  if (![(NDNWBackgroundSession *)self sessionHasOutstandingTasks]&& ![(NDNWBackgroundSession *)self clientIsActive])
  {
    if (!wake)
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
    uuid = [(NDNWBackgroundSession *)self uuid];
    v6 = uuid;
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
    v14 = uuid;
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
    uuid = [(NDNWBackgroundSession *)self uuid];
    v5 = [(NSMutableDictionary *)self->_identifiersToTasks count];
    v7 = 138543618;
    v8 = uuid;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> has %lu outstanding tasks", &v7, 0x16u);
  }

  return [(NSMutableDictionary *)self->_identifiersToTasks count]!= 0;
}

- (void)removeUploadFileForTaskInfo:(id)info
{
  fileURL = [info fileURL];
  [NDFileUtilities removeItemAtURL:?];
}

- (void)removeDownloadFileForTaskInfo:(id)info
{
  v3 = [NDNWBackgroundSession downloadFileURLFormTaskInfo:info];
  if (v3)
  {
    [NDFileUtilities removeItemAtURL:v3];
  }
}

- (void)statusMonitor:(id)monitor callbackForIdentifier:(unint64_t)identifier networkChanged:(BOOL)changed
{
  workQueue = self->_workQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004FEE4;
  v6[3] = &unk_1000D6470;
  v6[4] = self;
  v6[5] = identifier;
  dispatch_async(workQueue, v6);
}

- (id)restoreTasks:(BOOL *)tasks
{
  v5 = +[NSMutableArray array];
  v6 = [(NDNWBackgroundSession *)self restoreTasksFromSqliteDB:v5];
  v7 = [(NSMutableDictionary *)self->_identifiersToTaskInfo count];
  if (!v7)
  {
    [(NDNWBackgroundSession *)self cleanupSessionWithCompletionHandler:0];
  }

  if (tasks)
  {
    *tasks = v7 == 0;
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

- (id)restoreTasksFromSqliteDB:(id)b
{
  bCopy = b;
  v4 = qword_1000EB210;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    *buf = 138543362;
    v66 = uuid;
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
          downloadFileURL = [*(*(&v61 + 1) + 8 * v9) downloadFileURL];
          v12 = downloadFileURL == 0;

          if (!v12)
          {
            downloadFileURL2 = [v10 downloadFileURL];
            v14 = +[Daemon sharedDaemon];
            if (([v14 isPrivileged]& 1) != 0)
            {
              goto LABEL_14;
            }

            path = [downloadFileURL2 path];
            path2 = [(NSURL *)self->_downloadDirectory path];
            v17 = [path hasPrefix:path2];

            if ((v17 & 1) == 0)
            {
              v33 = qword_1000EB210;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                uuid2 = [(NDNWBackgroundSession *)self uuid];
                clientBundleID = self->_clientBundleID;
                path3 = [(NSURL *)self->_downloadDirectory path];
                path4 = [downloadFileURL2 path];
                *buf = 138544130;
                v66 = uuid2;
                v67 = 2114;
                v68 = clientBundleID;
                v69 = 2112;
                v70 = path3;
                v71 = 2112;
                v72 = path4;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Download directory for bundle %{public}@ has moved to %@, but saved download file path is %@. Need to fix download path", buf, 0x2Au);
              }

              downloadDirectory = self->_downloadDirectory;
              lastPathComponent = [downloadFileURL2 lastPathComponent];
              v40 = [(NSURL *)downloadDirectory URLByAppendingPathComponent:lastPathComponent];
              [v10 setDownloadFileURL:v40];

              v14 = qword_1000EB210;
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                uuid3 = [(NDNWBackgroundSession *)self uuid];
                downloadFileURL3 = [v10 downloadFileURL];
                path5 = [downloadFileURL3 path];
                *buf = 138543618;
                v66 = uuid3;
                v67 = 2112;
                v68 = path5;
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
            currentRequest = [v10 currentRequest];
            v21 = [currentRequest URL];
            [v19 setFailingURL:v21];

            [v10 setError:v19];
            v22 = qword_1000EB210;
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              uuid4 = [(NDNWBackgroundSession *)self uuid];
              identifier = [v10 identifier];
              error = [v10 error];
              error2 = [v10 error];
              code = [error2 code];
              *buf = 138544130;
              v66 = uuid4;
              v67 = 2048;
              v68 = identifier;
              v69 = 2112;
              v70 = error;
              v71 = 2048;
              v72 = code;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> completed with error %@ [%ld] (was active before nsurlsessiond exit)", buf, 0x2Au);
            }
          }

          if ([v10 state] == 2)
          {
            [v10 setState:3];
            v23 = [[NWURLError alloc] initWithErrorCode:-999];
            currentRequest2 = [v10 currentRequest];
            v25 = [currentRequest2 URL];
            [v23 setFailingURL:v25];

            [v10 setError:v23];
          }

          if (([v10 hasStarted] & 1) == 0)
          {
            bundleID = [v10 bundleID];
            v27 = [bundleID isEqualToString:@"com.apple.mobileassetd"];

            if (v27)
            {
              [v10 setHasStarted:1];
              [v10 setState:3];
              v28 = [[NWURLError alloc] initWithErrorCode:-1001];
              currentRequest3 = [v10 currentRequest];
              v30 = [currentRequest3 URL];
              [v28 setFailingURL:v30];

              [v10 setError:v28];
              v31 = qword_1000EB210;
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                uuid5 = [(NDNWBackgroundSession *)self uuid];
                identifier2 = [v10 identifier];
                *buf = 138543618;
                v66 = uuid5;
                v67 = 2048;
                v68 = identifier2;
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
              uuid6 = [(NDNWBackgroundSession *)self uuid];
              identifier3 = [v10 identifier];
              *buf = 138543618;
              v66 = uuid6;
              v67 = 2048;
              v68 = identifier3;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> <%zu> not restoring, which had never been started", buf, 0x16u);
            }

            [bCopy addObject:v18];
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

- (void)restoreCompletedTask:(id)task
{
  selfCopy = self;
  taskCopy = task;
  v4 = [NDNWBackgroundSession downloadFileURLFormTaskInfo:taskCopy];
  v5 = v4;
  if (v4 && [v4 checkResourceIsReachableAndReturnError:0])
  {
    v6 = qword_1000EB210;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      uuid = [(NDNWBackgroundSession *)selfCopy uuid];
      *buf = 138543874;
      v31 = uuid;
      v32 = 2048;
      identifier = [taskCopy identifier];
      v34 = 2112;
      v35 = v5;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "NDNWSession <%{public}@> <%zu> is being restored as completed with download file still at %@", buf, 0x20u);
    }

    v7 = [PendingCallback alloc];
    identifier2 = [taskCopy identifier];
    v29[0] = taskCopy;
    response = [taskCopy response];
    v10 = response;
    if (!response)
    {
      v10 = +[NSNull null];
    }

    v29[1] = v10;
    selfCopy = [NSArray arrayWithObjects:v29 count:2, selfCopy];
    v12 = [(PendingCallback *)v7 initWithCallbackType:1 taskIdentifier:identifier2 args:selfCopy];

    if (!response)
    {
    }

    [(NDCallbackQueue *)selfCopy->_callbackQueue addPendingCallback:v12 wakeRequirement:0];
  }

  v13 = objc_alloc_init(NSMutableDictionary);
  _backgroundTrailers = [taskCopy _backgroundTrailers];
  v15 = _backgroundTrailers == 0;

  if (!v15)
  {
    _backgroundTrailers2 = [taskCopy _backgroundTrailers];
    [v13 setObject:_backgroundTrailers2 forKeyedSubscript:@"trailers"];
  }

  v17 = [PendingCallback alloc];
  identifier3 = [taskCopy identifier];
  error = [taskCopy error];
  v20 = error;
  if (!error)
  {
    v20 = +[NSNull null];
  }

  taskMetrics = [taskCopy taskMetrics];
  v22 = taskMetrics;
  if (!taskMetrics)
  {
    v22 = +[NSNull null];
  }

  v28[1] = v22;
  v28[2] = v13;
  v23 = [NSArray arrayWithObjects:v28 count:3];
  v24 = [(PendingCallback *)v17 initWithCallbackType:0 taskIdentifier:identifier3 args:v23];

  if (!taskMetrics)
  {
  }

  if (!error)
  {
  }

  [*(v27 + 224) addPendingCallback:v24 wakeRequirement:0];
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
        uuid = [(NDNWBackgroundSession *)self uuid];
        clientBundleID = self->_clientBundleID;
        identifier = self->_identifier;
        path2 = [(NSURL *)self->_downloadDirectory path];
        v11 = 138544130;
        v12 = uuid;
        v13 = 2114;
        v14 = clientBundleID;
        v15 = 2112;
        v16 = identifier;
        v17 = 2112;
        v18 = path2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Session <%{public}@>.<%@> download path %@ did not exist, recreating.", &v11, 0x2Au);
      }

      [NDFileUtilities createDirectoryAtURL:self->_downloadDirectory];
    }
  }
}

- (void)_cancelTaskWithIdentifier:(unint64_t)identifier error:(id)error
{
  errorCopy = error;
  identifiersToTaskInfo = self->_identifiersToTaskInfo;
  v7 = [NSNumber numberWithUnsignedInteger:identifier];
  v8 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v7];

  if (v8)
  {
    [v8 setError:errorCopy];
    [v8 setState:2];
    identifiersToTasks = self->_identifiersToTasks;
    v10 = [NSNumber numberWithUnsignedInteger:identifier];
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

- (id)taskWithTaskInfo:(id)info
{
  infoCopy = info;
  taskKind = [infoCopy taskKind];
  v7 = 0;
  if (taskKind > 2)
  {
    if ((taskKind - 3) < 3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  switch(taskKind)
  {
    case 0:
      v8 = objc_alloc_init(NWURLSessionDownloadResumeInfo);
      [(NDNWBackgroundSession *)self configureResumeInfo:v8 withTaskInfo:infoCopy];
      v10 = [NDNWBackgroundSession downloadFileURLFormTaskInfo:infoCopy];
      [v8 setFileURL:v10];

      v9 = [(NSURLSession *)self->_session downloadTaskWithResumeInfo:v8];
      goto LABEL_15;
    case 1:
      v8 = objc_alloc_init(NWURLSessionUploadResumeInfo);
      [(NDNWBackgroundSession *)self configureResumeInfo:v8 withTaskInfo:infoCopy];
      resumableUploadData = [infoCopy resumableUploadData];
      if (resumableUploadData)
      {
        v12 = objc_opt_class();
        resumableUploadData2 = [infoCopy resumableUploadData];
        v13 = [NSKeyedUnarchiver unarchivedObjectOfClass:v12 fromData:resumableUploadData2 error:0];
      }

      else
      {
        v13 = 0;
      }

      [v8 setResumeURL:v13];
      if (resumableUploadData)
      {
      }

      fileURL = [infoCopy fileURL];
      [v8 setFileURL:fileURL];

      v9 = [(NSURLSession *)self->_session uploadTaskWithResumeInfo:v8];
      goto LABEL_15;
    case 2:
      v8 = objc_alloc_init(NWURLSessionResumeInfo);
      [(NDNWBackgroundSession *)self configureResumeInfo:v8 withTaskInfo:infoCopy];
      v9 = [(NSURLSession *)self->_session dataTaskWithResumeInfo:v8];
LABEL_15:
      v7 = v9;

      break;
  }

LABEL_16:
  [(NDNWBackgroundSession *)self configureTask:v7 withTaskInfo:infoCopy];
LABEL_17:

  return v7;
}

- (void)configureTaskInfo:(id)info withResumeInfo:(id)resumeInfo
{
  infoCopy = info;
  resumeInfoCopy = resumeInfo;
  originalRequest = [resumeInfoCopy originalRequest];
  [infoCopy setOriginalRequest:originalRequest];

  currentRequest = [resumeInfoCopy currentRequest];
  [infoCopy setCurrentRequest:currentRequest];

  response = [resumeInfoCopy response];
  [infoCopy setResponse:response];

  earliestBeginDate = [resumeInfoCopy earliestBeginDate];
  [infoCopy setEarliestBeginDate:earliestBeginDate];

  [infoCopy setCountOfBytesClientExpectsToSend:{objc_msgSend(resumeInfoCopy, "countOfBytesClientExpectsToSend")}];
  [infoCopy setCountOfBytesClientExpectsToReceive:{objc_msgSend(resumeInfoCopy, "countOfBytesClientExpectsToReceive")}];
  taskDescription = [resumeInfoCopy taskDescription];
  [infoCopy setTaskDescription:taskDescription];

  [infoCopy setIdentifier:{objc_msgSend(resumeInfoCopy, "taskIdentifier")}];
  [resumeInfoCopy startTime];
  [infoCopy setCreationTime:?];
}

- (void)configureTask:(id)task withTaskInfo:(id)info
{
  taskCopy = task;
  infoCopy = info;
  [taskCopy setAutomaticRetry:1];
  [taskCopy setBackgroundSchedulingPriority:{-[NDNWBackgroundSession backgroundSchedulingPriorityWithTaskInfo:](self, "backgroundSchedulingPriorityWithTaskInfo:", infoCopy)}];
  [(NDApplication *)self->_clientApplication currentRequestDelay];
  [taskCopy setBackgroundSchedulingDelay:?];
}

- (int64_t)backgroundSchedulingPriorityWithTaskInfo:(id)info
{
  if (![(NDNWBackgroundSession *)self currentDiscretionaryStatusWithOptionalTaskInfo:info])
  {
    return 1;
  }

  if (self->_discretionary)
  {
    return 3;
  }

  return 2;
}

- (void)configureResumeInfo:(id)info withTaskInfo:(id)taskInfo
{
  infoCopy = info;
  taskInfoCopy = taskInfo;
  originalRequest = [taskInfoCopy originalRequest];
  [infoCopy setOriginalRequest:originalRequest];

  currentRequest = [taskInfoCopy currentRequest];
  [infoCopy setCurrentRequest:currentRequest];

  response = [taskInfoCopy response];
  [infoCopy setResponse:response];

  earliestBeginDate = [taskInfoCopy earliestBeginDate];
  [infoCopy setEarliestBeginDate:earliestBeginDate];

  [infoCopy setCountOfBytesClientExpectsToSend:{objc_msgSend(taskInfoCopy, "countOfBytesClientExpectsToSend")}];
  [infoCopy setCountOfBytesClientExpectsToReceive:{objc_msgSend(taskInfoCopy, "countOfBytesClientExpectsToReceive")}];
  taskDescription = [taskInfoCopy taskDescription];
  [infoCopy setTaskDescription:taskDescription];

  [infoCopy setTaskIdentifier:{objc_msgSend(taskInfoCopy, "identifier")}];
  [taskInfoCopy creationTime];
  [infoCopy setStartTime:?];
  [taskInfoCopy setDiscretionary:{-[NDNWBackgroundSession currentDiscretionaryStatusWithOptionalTaskInfo:](self, "currentDiscretionaryStatusWithOptionalTaskInfo:", 0)}];
  additionalProperties = [taskInfoCopy additionalProperties];

  if (additionalProperties)
  {
    additionalProperties2 = [taskInfoCopy additionalProperties];
    v14 = [additionalProperties2 objectForKeyedSubscript:@"cookies"];

    if (v14)
    {
      currentRequest2 = [infoCopy currentRequest];
      v16 = [currentRequest2 mutableCopy];

      [v16 setValue:v14 forHTTPHeaderField:@"Cookie"];
      [infoCopy setCurrentRequest:v16];
    }
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
          uuid = [(NDNWBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543618;
          *(v60 + 4) = uuid;
          WORD6(v60[0]) = 2112;
          *(v60 + 14) = @"com.apple.private.nsurlsession.impersonate";
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _sourceApplicationBundleIdentifier but is missing the %@ entitlement", v60, 0x16u);
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
          uuid2 = [(NDNWBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543618;
          *(v60 + 4) = uuid2;
          WORD6(v60[0]) = 2112;
          *(v60 + 14) = @"com.apple.private.nsurlsession.impersonate";
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _sourceApplicationSecondaryIdentifier but is missing the %@ entitlement", v60, 0x16u);
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
          uuid3 = [(NDNWBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543618;
          *(v60 + 4) = uuid3;
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
        uuid4 = [(NDNWBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = uuid4;
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
        uuid5 = [(NDNWBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = uuid5;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = @"com.apple.private.dark-wake-network-reachability";
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _allowsPowerNapScheduling but is missing the %@ entitlement", v60, 0x16u);
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
          uuid6 = [(NDNWBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543618;
          *(v60 + 4) = uuid6;
          WORD6(v60[0]) = 2112;
          *(v60 + 14) = @"com.apple.private.nsurlsession-allow-override-connection-pool";
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _connectionPoolName but is missing the %@ entitlement", v60, 0x16u);
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
            uuid7 = [(NDNWBackgroundSession *)self uuid];
            LODWORD(v60[0]) = 138543362;
            *(v60 + 4) = uuid7;
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
        uuid8 = [(NDNWBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = uuid8;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = @"com.apple.private.nsurlsession.allow-duet-preauthorization";
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _duetPreauthorized but is missing the %@ entitlement", v60, 0x16u);
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
          uuid9 = [(NDNWBackgroundSession *)self uuid];
          LODWORD(v60[0]) = 138543362;
          *(v60 + 4) = uuid9;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _maximumWatchCellularTransferSize but is missing the necessary entitlement", v60, 0xCu);
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
        uuid10 = [(NDNWBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = uuid10;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = v36;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _pathToDownloadTaskFile but is not allowed to create %@", v60, 0x16u);
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
        uuid11 = [(NDNWBackgroundSession *)self uuid];
        LODWORD(v60[0]) = 138543618;
        *(v60 + 4) = uuid11;
        WORD6(v60[0]) = 2112;
        *(v60 + 14) = @"com.apple.private.nsurlsession.impersonate";
        _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Client tried to set _sourceApplicationBundleIdentifier but is missing the %@ entitlement", v60, 0x16u);
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

- (id)descriptionForRequest:(id)request
{
  requestCopy = request;
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ [allowsCellularAccess: %d, allowsExpensiveAccess: %d, allowsConstrainedAccess: %d]", requestCopy, [requestCopy allowsCellularAccess], objc_msgSend(requestCopy, "allowsExpensiveNetworkAccess"), objc_msgSend(requestCopy, "allowsConstrainedNetworkAccess"));

  return v4;
}

- (void)queueUpdatesForTask:(id)task updateType:(unint64_t)type highPriority:(BOOL)priority
{
  taskCopy = task;
  workQueue = self->_workQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100052A48;
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
  block[2] = sub_100052C3C;
  block[3] = &unk_1000D5640;
  updatesCopy = updates;
  *&block[5] = Current;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)obliterate
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    identifier = self->_identifier;
    *buf = 138543874;
    v19 = uuid;
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
  allValues = [(NSMutableDictionary *)self->_identifiersToTasks allValues];
  v9 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v13 + 1) + 8 * v11) cancel];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(NDNWBackgroundSession *)self cleanupSessionWithCompletionHandler:0];
  v12 = +[NDUserEventAgentConnection sharedUserEventAgentConnection];
  [v12 removePendingWakeForClient:self->_clientBundleID sessionIdentifier:self->_identifier];
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
      uuid = [(NDNWBackgroundSession *)self uuid];
      v12 = 138543362;
      v13 = uuid;
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
    [WeakRetained sessionCompleted:self withCompletionHandler:handlerCopy];

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

- (void)clientApplicationWasReinstalled
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    clientBundleID = self->_clientBundleID;
    *buf = 138543618;
    v32 = uuid;
    v33 = 2114;
    v34 = clientBundleID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Application %{public}@ was reinstalled, adjusting download paths", buf, 0x16u);
  }

  setupDownloadDirectory = [(NDNWBackgroundSession *)self setupDownloadDirectory];
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
              [(NDNWBackgroundSession *)self queueUpdatesForTask:v17 updateType:3 highPriority:0];

              v18 = [(NSMutableDictionary *)self->_identifiersToTasks objectForKeyedSubscript:v11];
              v19 = [NDNWBackgroundSession downloadFileURLFormTaskInfo:v12];
              path = [v19 path];
              [v18 set_pathToDownloadTaskFile:path];
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
      uuid2 = [(NDNWBackgroundSession *)self uuid];
      v23 = self->_clientBundleID;
      *buf = 138543618;
      v32 = uuid2;
      v33 = 2114;
      v34 = v23;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Couldn't find out download directory for re-installed application %{public}@. It must not have been re-installed properly. Obliterating session", buf, 0x16u);
    }

    v7 = 0;
    [(NDNWBackgroundSession *)self obliterate];
  }
}

- (void)backgroundUpdatesEnabledForApplication:(id)application
{
  applicationCopy = application;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000537A0;
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
  block[2] = sub_100053934;
  block[3] = &unk_1000D5618;
  block[4] = self;
  v10 = suspendedCopy;
  pidCopy = pid;
  v8 = suspendedCopy;
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
    uuid = [(NDNWBackgroundSession *)self uuid];
    v6 = uuid;
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
    v14 = uuid;
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

- (void)setXPCConnection:(id)connection
{
  connectionCopy = connection;
  [connectionCopy setUserInfo:self];
  objc_storeStrong(&self->_xpcConn, connection);
  self->_clientPID = [connectionCopy processIdentifier];
  v6 = qword_1000EB210;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [(NDNWBackgroundSession *)self uuid];
    xpcConn = self->_xpcConn;
    clientBundleID = self->_clientBundleID;
    identifier = self->_identifier;
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
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Using XPC connection %@ for client %{public}@ with identifier %@ and PID %d", buf, 0x30u);
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
      uuid2 = [(NDNWBackgroundSession *)self uuid];
      v17 = self->_clientBundleID;
      v18 = self->_identifier;
      *buf = 138544130;
      *&buf[4] = uuid2;
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

- (NDNWBackgroundSession)initWithConfiguration:(id)configuration bundleID:(id)d isSpringBoardApp:(BOOL)app downloadDirectory:(id)directory options:(id)options clientProxy:(id)proxy delegate:(id)delegate workQueue:(id)self0 db:(id)self1
{
  appCopy = app;
  configurationCopy = configuration;
  dCopy = d;
  optionsCopy = options;
  proxyCopy = proxy;
  obj = delegate;
  queueCopy = queue;
  dbCopy = db;
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

  v19 = [optionsCopy objectForKeyedSubscript:@"NDBackgroundSessionManagerKeySessionUUID"];
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
  objc_storeStrong(&v17->_clientBundleID, d);
  _sourceApplicationBundleIdentifier = [configurationCopy _sourceApplicationBundleIdentifier];
  if (_sourceApplicationBundleIdentifier)
  {
    _sourceApplicationBundleIdentifier2 = [configurationCopy _sourceApplicationBundleIdentifier];
  }

  else
  {
    _sourceApplicationBundleIdentifier2 = v17->_clientBundleID;
  }

  p_monitoredAppBundleID = &v17->_monitoredAppBundleID;
  monitoredAppBundleID = v17->_monitoredAppBundleID;
  v17->_monitoredAppBundleID = _sourceApplicationBundleIdentifier2;

  v27 = +[NSMutableDictionary dictionary];
  identifiersToUpdates = v17->_identifiersToUpdates;
  v17->_identifiersToUpdates = v27;

  v126 = [[LSApplicationExtensionRecord alloc] initWithBundleIdentifier:v17->_clientBundleID error:0];
  _sourceApplicationSecondaryIdentifier = [configurationCopy _sourceApplicationSecondaryIdentifier];
  secondaryID = v17->_secondaryID;
  v17->_secondaryID = _sourceApplicationSecondaryIdentifier;

  v125 = [NDCloudContainer containerIDForPrimaryIdentifier:v17->_monitoredAppBundleID secondaryIdentifier:v17->_secondaryID];
  if (v125)
  {
    v31 = [NDCloudContainer bundleIDForPrimaryIdentifier:v17->_monitoredAppBundleID secondaryIdentifier:v17->_secondaryID];
    v32 = qword_1000EB210;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [(NDNWBackgroundSession *)v17 uuid];
      clientBundleID = v17->_clientBundleID;
      *buf = 138544130;
      v134 = uuid;
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
    sharedContainerIdentifier = [configurationCopy sharedContainerIdentifier];
    v41 = [NDFPProvider providerIDForBundle:v39 sharedContainerIdentifier:sharedContainerIdentifier];

    if (v41)
    {
      v42 = [NDApplication fileProviderWithIdentifer:v41 applicationIdentifier:*p_monitoredAppBundleID];
      v43 = *p_monitoredApplication;
      *p_monitoredApplication = v42;

      v44 = qword_1000EB210;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        uuid2 = [(NDNWBackgroundSession *)v17 uuid];
        v46 = v17->_clientBundleID;
        v47 = *p_monitoredAppBundleID;
        *buf = 138544130;
        v134 = uuid2;
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
      uuid3 = [(NDNWBackgroundSession *)v17 uuid];
      v50 = v17->_clientBundleID;
      *buf = 138543618;
      v134 = uuid3;
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

  v56 = v17->_clientApplication;
  v17->_clientApplication = v54;

  if (!v17->_monitoredApplication)
  {
    if ([*p_monitoredAppBundleID isEqualToString:v17->_clientBundleID])
    {
      objc_storeStrong(&v17->_monitoredApplication, v17->_clientApplication);
      v57 = qword_1000EB210;
      v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
      if (appCopy)
      {
        if (v58)
        {
          uuid4 = [(NDNWBackgroundSession *)v17 uuid];
          v60 = *p_monitoredAppBundleID;
          *buf = 138543618;
          v134 = uuid4;
          v135 = 2114;
          v136 = v60;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Client %{public}@ is a SpringBoard application", buf, 0x16u);
        }
      }

      else if (v58)
      {
        uuid5 = [(NDNWBackgroundSession *)v17 uuid];
        v65 = *p_monitoredAppBundleID;
        *buf = 138543618;
        v134 = uuid5;
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
        uuid6 = [(NDNWBackgroundSession *)v17 uuid];
        v68 = v17->_clientBundleID;
        v69 = *p_monitoredAppBundleID;
        *buf = 138544130;
        v134 = uuid6;
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

  identifier = [configurationCopy identifier];
  identifier = v17->_identifier;
  v17->_identifier = identifier;

  sharedContainerIdentifier2 = [configurationCopy sharedContainerIdentifier];
  sharedContainerIdentifier = v17->_sharedContainerIdentifier;
  v17->_sharedContainerIdentifier = sharedContainerIdentifier2;

  v74 = [NDFileUtilities sessionPath:v17->_identifier forBundleID:v17->_clientBundleID];
  v75 = [NSURL fileURLWithPath:v74];
  sessionDirectory = v17->_sessionDirectory;
  v17->_sessionDirectory = v75;

  _directoryForDownloadedFiles = [configurationCopy _directoryForDownloadedFiles];
  v78 = _directoryForDownloadedFiles;
  if (_directoryForDownloadedFiles)
  {
    setupDownloadDirectory = _directoryForDownloadedFiles;
  }

  else
  {
    setupDownloadDirectory = [(NDNWBackgroundSession *)v17 setupDownloadDirectory];
  }

  downloadDirectory = v17->_downloadDirectory;
  v17->_downloadDirectory = setupDownloadDirectory;

  v81 = [(NSURL *)v17->_sessionDirectory URLByAppendingPathComponent:@"Uploads"];
  uploadsDirectory = v17->_uploadsDirectory;
  v17->_uploadsDirectory = v81;

  if (v17->_downloadDirectory)
  {
    objc_storeStrong(&v17->_workQueue, queue);
    objc_storeStrong(&v17->_clientProxy, proxy);
    v83 = [[NDCredentialStorage alloc] initWithDelegate:v17 forBundleID:v17->_clientBundleID];
    credentialStorage = v17->_credentialStorage;
    v17->_credentialStorage = v83;

    v85 = [(NDNWBackgroundSession *)v17 configurationWithClientConfiguration:configurationCopy];
    v17->_discretionary = [configurationCopy isDiscretionary];
    if ([configurationCopy sessionSendsLaunchEvents])
    {
      _sessionSendsLaunchOnDemandEvents = 1;
    }

    else
    {
      _sessionSendsLaunchOnDemandEvents = [configurationCopy _sessionSendsLaunchOnDemandEvents];
    }

    v17->_sendsLaunchEvents = _sessionSendsLaunchOnDemandEvents;
    v89 = +[Daemon sharedDaemon];
    isInSyncBubble = [v89 isInSyncBubble];

    if (isInSyncBubble)
    {
      v17->_sendsLaunchEvents = 0;
    }

    v17->_performsEVCertCheck = [configurationCopy _performsEVCertCheck];
    [(NDNWBackgroundSession *)v17 updateOptions:optionsCopy];
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

    v17->_shouldPullInitialCredentials = proxyCopy != 0;
    v17->_retryDataTasks = [configurationCopy _allowsRetryForBackgroundDataTasks];
    if (v17->_infersDiscretionary)
    {
      _infersDiscretionaryFromOriginatingClient = 1;
    }

    else
    {
      _infersDiscretionaryFromOriginatingClient = [configurationCopy _infersDiscretionaryFromOriginatingClient];
    }

    v17->_infersDiscretionary = _infersDiscretionaryFromOriginatingClient;
    *&v17->_obliterated = 0;
    v17->_clientPID = -1;
    [NDFileUtilities createDirectoryAtURL:v17->_sessionDirectory];
    [NDFileUtilities createDirectoryAtURL:v17->_uploadsDirectory];
    if (v17->_clientProxy)
    {
      v104 = [configurationCopy copy];
      v105 = [optionsCopy mutableCopy];
      [v105 setObject:v17->_uuid forKeyedSubscript:@"NDBackgroundSessionManagerKeySessionUUID"];
      [dbCopy _updateConfigurationForBundleID:dCopy sessionID:v17->_identifier with:v104];
      [dbCopy _updateOptionsForBundleID:dCopy sessionID:v17->_identifier with:v105];
    }

    if (*p_monitoredApplication)
    {
      [*p_monitoredApplication addObserver:v17];
    }

    objc_storeStrong(&v17->_tasksDB, db);
    v106 = qword_1000EB210;
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v122 = v85;
      uuid7 = [(NDNWBackgroundSession *)v17 uuid];
      v107 = v17->_uuid;
      v108 = v17->_clientBundleID;
      v121 = v17->_identifier;
      [configurationCopy timeoutIntervalForResource];
      v110 = v109;
      [configurationCopy timeoutIntervalForRequest];
      v112 = v111;
      allowsCellularAccess = [configurationCopy allowsCellularAccess];
      allowsExpensiveNetworkAccess = [configurationCopy allowsExpensiveNetworkAccess];
      allowsConstrainedNetworkAccess = [configurationCopy allowsConstrainedNetworkAccess];
      _sourceApplicationBundleIdentifier3 = [configurationCopy _sourceApplicationBundleIdentifier];
      _sourceApplicationSecondaryIdentifier2 = [configurationCopy _sourceApplicationSecondaryIdentifier];
      *buf = 138545922;
      v134 = uuid7;
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
      v146 = allowsCellularAccess;
      v147 = 1024;
      v148 = allowsExpensiveNetworkAccess;
      v149 = 1024;
      v150 = allowsConstrainedNetworkAccess;
      v151 = 2114;
      v152 = _sourceApplicationBundleIdentifier3;
      v153 = 2114;
      v154 = _sourceApplicationSecondaryIdentifier2;
      _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "NDNWSession <%{public}@> Session <%{public}@> is for <%{public}@>.<%@> using resource timeout: %f, request timeout: %f allowsCellularAccess: %d, allowsExpensiveAccess: %d, allowsConstrainedAccess: %d, _sourceApplicationBundleIdentifier: %{public}@, _sourceApplicationSecondaryIdentifier: %{public}@", buf, 0x64u);

      v85 = v122;
    }

    goto LABEL_67;
  }

  v87 = qword_1000EB210;
  if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
  {
    uuid8 = [(NDNWBackgroundSession *)v17 uuid];
    v120 = v17->_clientBundleID;
    *buf = 138543618;
    v134 = uuid8;
    v135 = 2114;
    v136 = v120;
    _os_log_error_impl(&_mh_execute_header, v87, OS_LOG_TYPE_ERROR, "NDNWSession <%{public}@> Couldn't find out download directory for %{public}@. Not creating session", buf, 0x16u);
  }

  v88 = 0;
LABEL_68:

  return v88;
}

- (id)configurationWithClientConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [v5 setUsesClassicLoadingMode:0];
  [configurationCopy timeoutIntervalForRequest];
  [v5 setTimeoutIntervalForRequest:?];
  [configurationCopy timeoutIntervalForResource];
  if (v6 == 0.0)
  {
    [v5 timeoutIntervalForResource];
  }

  [v5 setTimeoutIntervalForResource:?];
  connectionProxyDictionary = [configurationCopy connectionProxyDictionary];
  [v5 setConnectionProxyDictionary:connectionProxyDictionary];

  [v5 setTLSMinimumSupportedProtocol:{objc_msgSend(configurationCopy, "TLSMinimumSupportedProtocol")}];
  [v5 setTLSMaximumSupportedProtocol:{objc_msgSend(configurationCopy, "TLSMaximumSupportedProtocol")}];
  hTTPAdditionalHeaders = [configurationCopy HTTPAdditionalHeaders];
  [v5 setHTTPAdditionalHeaders:hTTPAdditionalHeaders];

  [v5 setHTTPMaximumConnectionsPerHost:{objc_msgSend(configurationCopy, "HTTPMaximumConnectionsPerHost")}];
  [v5 setNetworkServiceType:{objc_msgSend(configurationCopy, "networkServiceType")}];
  _atsContext = [configurationCopy _atsContext];
  [v5 set_atsContext:_atsContext];

  [v5 set_allowsTLSFalseStart:{objc_msgSend(configurationCopy, "_allowsTLSFalseStart")}];
  [v5 set_allowsTLSFallback:{objc_msgSend(configurationCopy, "_allowsTLSFallback")}];
  _tlsTrustPinningPolicyName = [configurationCopy _tlsTrustPinningPolicyName];
  [v5 set_tlsTrustPinningPolicyName:_tlsTrustPinningPolicyName];

  [v5 set_allowsTLSECH:{objc_msgSend(configurationCopy, "_allowsTLSECH")}];
  [v5 set_forceEnablePQTLS:{objc_msgSend(configurationCopy, "_forceEnablePQTLS")}];
  [v5 set_reportsDataStalls:{objc_msgSend(configurationCopy, "_reportsDataStalls")}];
  [v5 set_TCPAdaptiveReadTimeout:{objc_msgSend(configurationCopy, "_TCPAdaptiveReadTimeout")}];
  [v5 set_TCPAdaptiveWriteTimeout:{objc_msgSend(configurationCopy, "_TCPAdaptiveWriteTimeout")}];
  [v5 set_onBehalfOfPairedDevice:{objc_msgSend(configurationCopy, "_onBehalfOfPairedDevice")}];
  [v5 set_requiresSustainedDataDelivery:{objc_msgSend(configurationCopy, "_requiresSustainedDataDelivery")}];
  [v5 set_alwaysPerformDefaultTrustEvaluation:{objc_msgSend(configurationCopy, "_alwaysPerformDefaultTrustEvaluation")}];
  [v5 set_prefersInfraWiFi:{objc_msgSend(configurationCopy, "_prefersInfraWiFi")}];
  if ([(NDApplication *)self->_clientApplication canBeSuspended]&& (_os_feature_enabled_impl() & 1) == 0)
  {
    [v5 setNetworkServiceType:3];
  }

  _maximumWatchCellularTransferSize = [configurationCopy _maximumWatchCellularTransferSize];
  [v5 set_maximumWatchCellularTransferSize:_maximumWatchCellularTransferSize];

  [v5 setHTTPCookieStorage:0];
  [v5 setURLCache:0];
  [v5 setURLCredentialStorage:self->_credentialStorage];
  [v5 setAllowsCellularAccess:{objc_msgSend(configurationCopy, "allowsCellularAccess")}];
  [v5 setWaitsForConnectivity:0];
  [v5 setAllowsExpensiveNetworkAccess:{objc_msgSend(configurationCopy, "allowsExpensiveNetworkAccess")}];
  [v5 setAllowsConstrainedNetworkAccess:{objc_msgSend(configurationCopy, "allowsConstrainedNetworkAccess")}];
  if ([configurationCopy _explicitlySetAllowsUCA])
  {
    [v5 setAllowsUltraConstrainedNetworkAccess:{objc_msgSend(configurationCopy, "allowsUltraConstrainedNetworkAccess")}];
  }

  [v5 set_allowsVirtualInterfaces:{objc_msgSend(configurationCopy, "_allowsVirtualInterfaces")}];
  [v5 set_multipathAlternatePort:{objc_msgSend(configurationCopy, "_multipathAlternatePort")}];
  [v5 set_allowsPowerNapScheduling:{objc_msgSend(configurationCopy, "_allowsPowerNapScheduling")}];
  [v5 set_allowsHSTSWithUntrustedRootCertificate:{objc_msgSend(configurationCopy, "_allowsHSTSWithUntrustedRootCertificate")}];
  [v5 set_connectionCachePurgeTimeout:1.0];
  [v5 set_longLivedConnectionCachePurgeTimeout:1.0];
  [v5 set_preventsIdleSleepOnceConnected:1];
  [v5 set_timingDataOptions:{objc_msgSend(configurationCopy, "_timingDataOptions")}];
  [v5 set_shouldSkipPreferredClientCertificateLookup:{objc_msgSend(configurationCopy, "_shouldSkipPreferredClientCertificateLookup")}];
  [v5 set_requiresPowerPluggedIn:{objc_msgSend(configurationCopy, "_requiresPowerPluggedIn")}];
  [v5 set_sourceApplicationBundleIdentifier:self->_monitoredAppBundleID];
  [v5 set_sourceApplicationSecondaryIdentifier:self->_secondaryID];
  _sourceApplicationAuditTokenData = [configurationCopy _sourceApplicationAuditTokenData];
  [v5 set_sourceApplicationAuditTokenData:_sourceApplicationAuditTokenData];

  [v5 set_directoryForDownloadedFiles:self->_downloadDirectory];
  _downloadFileProtectionType = [configurationCopy _downloadFileProtectionType];
  [v5 set_downloadFileProtectionType:_downloadFileProtectionType];

  [v5 set_duetPreauthorized:{objc_msgSend(configurationCopy, "_duetPreauthorized")}];
  [v5 set_loggingPrivacyLevel:{objc_msgSend(configurationCopy, "_loggingPrivacyLevel")}];
  [v5 set_duetPreClearedMode:{objc_msgSend(configurationCopy, "_duetPreClearedMode")}];
  [v5 set_pidForHAR:{objc_msgSend(configurationCopy, "_pidForHAR")}];

  return v5;
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

+ (id)downloadFileURLFormTaskInfo:(id)info
{
  infoCopy = info;
  pathToDownloadTaskFile = [infoCopy pathToDownloadTaskFile];
  if (pathToDownloadTaskFile || ([infoCopy additionalProperties], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKeyedSubscript:", @"pathToDownloadTaskFile"), pathToDownloadTaskFile = objc_claimAutoreleasedReturnValue(), v5, pathToDownloadTaskFile))
  {
    downloadFileURL = [NSURL fileURLWithPath:pathToDownloadTaskFile isDirectory:0];
  }

  else
  {
    downloadFileURL = [infoCopy downloadFileURL];
  }

  return downloadFileURL;
}

@end