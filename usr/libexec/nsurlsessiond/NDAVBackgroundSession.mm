@interface NDAVBackgroundSession
- (BOOL)ensureAVAssetDownloadSessionWrapperForTaskIdentifier:(unint64_t)identifier;
- (BOOL)hasEntitlementToSpecifyDownloadDestinationURL;
- (BOOL)retryTask:(id)task originalError:(id)error;
- (id)avAssetDownloadsDirectory;
- (id)avAssetForURL:(id)l downloadToken:(unint64_t)token;
- (id)destinationURLToUseForTask:(id)task;
- (id)downloadDirectoryToUse:(id)use;
- (id)newAVAssetDownloadSessionWrapperForTaskInfo:(id)info;
- (id)restoreTasksFromArchivedInfo:(id)info;
- (id)restoreTasksFromSqliteDB:(id)b;
- (int64_t)adjustedTCPConnectionPriorityForTaskPriority:(int64_t)priority;
- (void)NDAVAssetDownloadSessionWrapper:(id)wrapper didCompleteWithError:(id)error;
- (void)NDAVAssetDownloadSessionWrapper:(id)wrapper didFinishDownloadForMediaSelectionPropertyList:(id)list;
- (void)NDAVAssetDownloadSessionWrapper:(id)wrapper didLoadTimeRange:(id)range totalTimeRangesLoaded:(id)loaded timeRangeExpectedToLoad:(id)load forMediaSelectionPropertyList:(id)list;
- (void)NDAVAssetDownloadSessionWrapper:(id)wrapper didReceiveMetricEvent:(id)event;
- (void)NDAVAssetDownloadSessionWrapper:(id)wrapper didResolveMediaSelectionPropertyList:(id)list;
- (void)NDAVAssetDownloadSessionWrapper:(id)wrapper didUpdateProgressWithLastBytesWritten:(unint64_t)written totalBytesWritten:(unint64_t)bytesWritten totalBytesExpectedToWrite:(unint64_t)write;
- (void)NDAVAssetDownloadSessionWrapper:(id)wrapper willDownloadVariants:(id)variants;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)applicationEndedTransitionalDiscretionaryBackgroundPeriod:(id)period;
- (void)applicationEnteredForeground:(id)foreground;
- (void)applicationNoLongerInForeground:(id)foreground;
- (void)applicationWasQuitFromAppSwitcher:(id)switcher;
- (void)avAggregateAssetDownloadTaskWithDownloadToken:(unint64_t)token serializedMediaSelections:(id)selections assetTitle:(id)title assetArtworkData:(id)data options:(id)options assetOptions:(id)assetOptions childDownloadSessionIdentifier:(id)identifier identifier:(unint64_t)self0 uniqueIdentifier:(id)self1 reply:(id)self2;
- (void)avAssetDownloadTaskWithDownloadToken:(unint64_t)token URL:(id)l destinationURL:(id)rL temporaryDestinationURL:(id)uRL assetTitle:(id)title assetArtworkData:(id)data options:(id)options assetOptions:(id)self0 identifier:(unint64_t)self1 uniqueIdentifier:(id)self2 taskKind:(unint64_t)self3 enableSPIDelegateCallbacks:(BOOL)self4 reply:(id)self5;
- (void)cancelAVDownloadAndFailTaskWithIdentifier:(unint64_t)identifier withError:(id)error;
- (void)cancelDelayedCompletionWakeTimer;
- (void)cancelTCPConnectionForTask:(unint64_t)task withError:(id)error;
- (void)cancelTaskWithIdentifier:(unint64_t)identifier;
- (void)cancelTaskWithIdentifier:(unint64_t)identifier byProducingResumeData:(id)data;
- (void)cancelThroughputMonitorForWrapper:(unint64_t)wrapper;
- (void)clientAcknowledgedTerminalCallbackForTask:(unint64_t)task;
- (void)fillInByteCountsForTaskInfo:(id)info withTaskID:(id)d;
- (void)setPriority:(int64_t)priority forTaskWithIdentifier:(unint64_t)identifier;
- (void)setupDelayedCompletionWakeTimer;
- (void)setupThroughputMonitorForWrapper:(id)wrapper taskInfo:(id)info identifier:(unint64_t)identifier;
- (void)startAVAssetDownloadSessionWithTaskIdentifier:(unint64_t)identifier;
- (void)statusMonitor:(id)monitor callbackForIdentifier:(unint64_t)identifier networkChanged:(BOOL)changed;
- (void)stopAVAssetDownloadSessionWithTaskIdentifier:(unint64_t)identifier;
- (void)taskShouldResume:(unint64_t)resume;
- (void)taskShouldSuspend:(unint64_t)suspend;
- (void)taskWithIdentifier:(unint64_t)identifier didCompleteWithError:(id)error;
@end

@implementation NDAVBackgroundSession

- (void)NDAVAssetDownloadSessionWrapper:(id)wrapper didCompleteWithError:(id)error
{
  wrapperCopy = wrapper;
  errorCopy = error;
  taskIdentifier = [wrapperCopy taskIdentifier];
  identifiersToTaskInfo = self->super._identifiersToTaskInfo;
  v10 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  v11 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v10];

  [v11 setCountOfBytesReceived:{objc_msgSend(wrapperCopy, "countOfBytesWritten")}];
  [v11 setCountOfBytesExpectedToReceive:{objc_msgSend(wrapperCopy, "countOfBytesExpectedToWrite")}];
  v12 = qword_1000EB210;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    _loggableDescription = [v11 _loggableDescription];
    *buf = 138543874;
    v19 = _loggableDescription;
    v20 = 2112;
    v21 = errorCopy;
    v22 = 2048;
    code = [errorCopy code];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ AVAssetDownloadSession did complete with error %@ [%ld]", buf, 0x20u);
  }

  if (sub_1000049F0(errorCopy))
  {
    clientBundleID = [(NDBackgroundSession *)self clientBundleID];
    identifier = [(NDBackgroundSession *)self identifier];
    monitoredAppBundleID = [(NDBackgroundSession *)self monitoredAppBundleID];
    secondaryID = [(NDBackgroundSession *)self secondaryID];
    sub_100002740(3, clientBundleID, identifier, monitoredAppBundleID, secondaryID, v11, 0, [wrapperCopy countOfBytesWritten], 0, objc_msgSend(v11, "isDiscretionary"), 0, 1, 1, errorCopy);

    [(NDBackgroundSession *)self finalizeTaskCompletionWithSuppressedWake:1];
    [(NDAVBackgroundSession *)self cancelThroughputMonitorForWrapper:taskIdentifier];
    [(NDAVBackgroundSession *)self cancelTCPConnectionForTask:taskIdentifier withError:errorCopy];
    [(NDAVBackgroundSession *)self retryTask:v11 originalError:errorCopy];
  }

  else
  {
    [(NDAVBackgroundSession *)self taskWithIdentifier:taskIdentifier didCompleteWithError:errorCopy];
  }
}

- (void)NDAVAssetDownloadSessionWrapper:(id)wrapper didResolveMediaSelectionPropertyList:(id)list
{
  listCopy = list;
  taskIdentifier = [wrapper taskIdentifier];
  identifiersToTaskInfo = self->super._identifiersToTaskInfo;
  v9 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  v10 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v9];

  [v10 setResolvedMediaSelectionPlist:listCopy];
  v11 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
  [(NDBackgroundSession *)self queueUpdatesForTask:v11 updateType:14 highPriority:1];

  v12 = [PendingCallback alloc];
  if (listCopy)
  {
    v15 = listCopy;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  v14 = [(PendingCallback *)v12 initWithCallbackType:8 taskIdentifier:taskIdentifier args:v13];
  if (listCopy)
  {
  }

  [(NDCallbackQueue *)self->super._callbackQueue addPendingCallback:v14 wakeRequirement:0];
}

- (void)NDAVAssetDownloadSessionWrapper:(id)wrapper didFinishDownloadForMediaSelectionPropertyList:(id)list
{
  wrapperCopy = wrapper;
  listCopy = list;
  -[NSXPCProxyCreating backgroundAVAssetDownloadTask:didFinishDownloadForMediaSelectionPropertyList:](self->super._clientProxy, "backgroundAVAssetDownloadTask:didFinishDownloadForMediaSelectionPropertyList:", [wrapperCopy taskIdentifier], listCopy);
}

- (void)NDAVAssetDownloadSessionWrapper:(id)wrapper didLoadTimeRange:(id)range totalTimeRangesLoaded:(id)loaded timeRangeExpectedToLoad:(id)load forMediaSelectionPropertyList:(id)list
{
  wrapperCopy = wrapper;
  rangeCopy = range;
  loadedCopy = loaded;
  loadCopy = load;
  listCopy = list;
  -[NSXPCProxyCreating backgroundAVAssetDownloadTask:didLoadTimeRange:totalTimeRangesLoaded:timeRangeExpectedToLoad:forMediaSelectionPropertyList:](self->super._clientProxy, "backgroundAVAssetDownloadTask:didLoadTimeRange:totalTimeRangesLoaded:timeRangeExpectedToLoad:forMediaSelectionPropertyList:", [wrapperCopy taskIdentifier], rangeCopy, loadedCopy, loadCopy, listCopy);
}

- (void)NDAVAssetDownloadSessionWrapper:(id)wrapper didReceiveMetricEvent:(id)event
{
  eventCopy = event;
  taskIdentifier = [wrapper taskIdentifier];
  v8 = [PendingCallback alloc];
  if (eventCopy)
  {
    v14 = eventCopy;
    v9 = [NSArray arrayWithObjects:&v14 count:1];
    v10 = v9;
  }

  else
  {
    v10 = +[NSNull null];
    v13 = v10;
    v9 = [NSArray arrayWithObjects:&v13 count:1];
  }

  v11 = v9;
  v12 = [(PendingCallback *)v8 initWithCallbackType:12 taskIdentifier:taskIdentifier args:v9];
  if (!eventCopy)
  {
  }

  [(NDCallbackQueue *)self->super._callbackQueue addPendingCallback:v12 wakeRequirement:0];
}

- (void)NDAVAssetDownloadSessionWrapper:(id)wrapper willDownloadVariants:(id)variants
{
  variantsCopy = variants;
  taskIdentifier = [wrapper taskIdentifier];
  v8 = [PendingCallback alloc];
  if (variantsCopy)
  {
    v11 = variantsCopy;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  v10 = [(PendingCallback *)v8 initWithCallbackType:11 taskIdentifier:taskIdentifier args:v9];
  if (variantsCopy)
  {
  }

  [(NDCallbackQueue *)self->super._callbackQueue addPendingCallback:v10 wakeRequirement:0];
}

- (void)NDAVAssetDownloadSessionWrapper:(id)wrapper didUpdateProgressWithLastBytesWritten:(unint64_t)written totalBytesWritten:(unint64_t)bytesWritten totalBytesExpectedToWrite:(unint64_t)write
{
  wrapperCopy = wrapper;
  taskIdentifier = [wrapperCopy taskIdentifier];
  if (written)
  {
    identifiersToThroughputMonitors = self->_identifiersToThroughputMonitors;
    v12 = [NSNumber numberWithUnsignedInteger:taskIdentifier];
    v13 = [(NSMutableDictionary *)identifiersToThroughputMonitors objectForKeyedSubscript:v12];

    [v13 wrapperTransferredData:written];
  }

  [(NSXPCProxyCreating *)self->super._clientProxy backgroundAVAssetDownloadTaskDidUpdateProgress:taskIdentifier totalBytesWritten:bytesWritten totalBytesExpectedToWrite:write];
}

- (void)taskWithIdentifier:(unint64_t)identifier didCompleteWithError:(id)error
{
  errorCopy = error;
  v40 = [NSNumber numberWithUnsignedInteger:identifier];
  v6 = [(NSMutableDictionary *)self->super._identifiersToTaskInfo objectForKeyedSubscript:?];
  if (v6)
  {
    v39 = [(NDBackgroundSession *)self clientErrorForError:errorCopy];
    v7 = [(NSMutableDictionary *)self->_identifiersToAVWrappers objectForKeyedSubscript:v40];
    v38 = v7;
    if (v7)
    {
      countOfBytesWritten = [v7 countOfBytesWritten];
    }

    else
    {
      countOfBytesWritten = 0;
    }

    clientBundleID = [(NDBackgroundSession *)self clientBundleID];
    identifier = [(NDBackgroundSession *)self identifier];
    monitoredAppBundleID = [(NDBackgroundSession *)self monitoredAppBundleID];
    secondaryID = [(NDBackgroundSession *)self secondaryID];
    sub_100002740(3, clientBundleID, identifier, monitoredAppBundleID, secondaryID, v6, 0, countOfBytesWritten, 0, [v6 isDiscretionary], 0, 1, 0, errorCopy);

    [v6 setState:3];
    [v6 setError:v39];
    v13 = [NSNumber numberWithUnsignedInteger:identifier];
    [(NDBackgroundSession *)self queueUpdatesForTask:v13 updateType:14 highPriority:1];

    [(NSMutableDictionary *)self->_identifiersToAVWrappers removeObjectForKey:v40];
    [v6 setAVURLAsset:0];
    if (sub_100004F90(errorCopy))
    {
      canBeSuspended = [(NDApplication *)self->super._clientApplication canBeSuspended];
    }

    else
    {
      canBeSuspended = 0;
    }

    v15 = +[NSFileManager defaultManager];
    _destinationURLToUse = [v6 _destinationURLToUse];
    path = [_destinationURLToUse path];
    v18 = [v15 fileExistsAtPath:path];

    if (v18)
    {
      v19 = [PendingCallback alloc];
      _destinationURLToUse2 = [v6 _destinationURLToUse];
      v49[0] = _destinationURLToUse2;
      v21 = +[NSNull null];
      v49[1] = v21;
      v22 = [NSArray arrayWithObjects:v49 count:2];
      v23 = [(PendingCallback *)v19 initWithCallbackType:1 taskIdentifier:identifier args:v22];

      [(NDCallbackQueue *)self->super._callbackQueue addPendingCallback:v23 wakeRequirement:0];
    }

    v24 = [PendingCallback alloc];
    v25 = v39;
    if (!v39)
    {
      v25 = +[NSNull null];
    }

    v48[0] = v25;
    v26 = +[NSNull null];
    v48[1] = v26;
    v48[2] = &__NSDictionary0__struct;
    v27 = [NSArray arrayWithObjects:v48 count:3];
    v28 = [(PendingCallback *)v24 initWithCallbackType:0 taskIdentifier:identifier args:v27];

    if (!v39)
    {
    }

    [(NDCallbackQueue *)self->super._callbackQueue addPendingCallback:v28 wakeRequirement:0];
    v43.receiver = self;
    v43.super_class = NDAVBackgroundSession;
    [(NDBackgroundSession *)&v43 removeOutstandingTaskWithIdentifier:identifier];
    [(NDAVBackgroundSession *)self cancelThroughputMonitorForWrapper:identifier];
    v42.receiver = self;
    v42.super_class = NDAVBackgroundSession;
    v29 = [(NDBackgroundSession *)&v42 finalizeTaskCompletionWithSuppressedWake:canBeSuspended];
    v30 = qword_1000EB210;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      _loggableDescription = [v6 _loggableDescription];
      v32 = _loggableDescription;
      if (v29)
      {
        v33 = 89;
      }

      else
      {
        v33 = 78;
      }

      *buf = 138543618;
      v45 = _loggableDescription;
      v46 = 1024;
      v47 = v33;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ completion woke client: %c", buf, 0x12u);
    }

    if ((v29 & 1) != 0 || [(NDBackgroundSession *)self clientIsActive])
    {
      v34 = qword_1000EB210;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        _loggableDescription2 = [v6 _loggableDescription];
        *buf = 138543362;
        v45 = _loggableDescription2;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ completion woke client or client is active - not requesting delayed wake", buf, 0xCu);
      }

      [(NDAVBackgroundSession *)self cancelDelayedCompletionWakeTimer];
    }

    else
    {
      v36 = qword_1000EB210;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        _loggableDescription3 = [v6 _loggableDescription];
        *buf = 138543362;
        v45 = _loggableDescription3;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ completion did not wake client and client is not active - requesting delayed wake", buf, 0xCu);
      }

      [(NDAVBackgroundSession *)self setupDelayedCompletionWakeTimer];
    }

    [(NDAVBackgroundSession *)self cancelTCPConnectionForTask:identifier withError:errorCopy];
  }
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  taskCopy = task;
  lCopy = l;
  v9 = [(NSMutableDictionary *)self->super._tasksToIdentifiers objectForKeyedSubscript:taskCopy];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    _loggableDescription = [taskCopy _loggableDescription];
    *buf = 138543618;
    v19 = _loggableDescription;
    v20 = 2112;
    v21 = lCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ finished downloading to %@", buf, 0x16u);
  }

  v13 = [PendingCallback alloc];
  v14 = +[NSNull null];
  v17[1] = v14;
  v15 = [NSArray arrayWithObjects:v17 count:2];
  v16 = [(PendingCallback *)v13 initWithCallbackType:1 taskIdentifier:unsignedIntegerValue args:v15];

  [(NDCallbackQueue *)self->super._callbackQueue addPendingCallback:v16 wakeRequirement:0];
}

- (void)cancelTCPConnectionForTask:(unint64_t)task withError:(id)error
{
  error = [NSNumber numberWithUnsignedInteger:task, error];
  v6 = [(NSMutableDictionary *)self->super._identifiersToTaskInfo objectForKeyedSubscript:error];
  v7 = [(NSMutableDictionary *)self->_identifiersToTCPConnections objectForKeyedSubscript:error];
  if (v7)
  {
    v8 = qword_1000EB210;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      _loggableDescription = [v6 _loggableDescription];
      v14 = 138543362;
      v15 = _loggableDescription;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ canceling tcp_connection", &v14, 0xCu);
    }

    tcp_connection_cancel();
    [(NSMutableDictionary *)self->_identifiersToTCPConnections removeObjectForKey:error];
  }

  v10 = [(NSMutableDictionary *)self->_identifiersToDASActivities objectForKeyedSubscript:error];
  if (v10)
  {
    v11 = qword_1000EB210;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      _loggableDescription2 = [v6 _loggableDescription];
      v14 = 138543618;
      v15 = _loggableDescription2;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ completing _DASActivity %@", &v14, 0x16u);
    }

    v13 = +[_DASScheduler sharedScheduler];
    [v13 activityCompleted:v10];

    [(NSMutableDictionary *)self->_identifiersToDASActivities removeObjectForKey:error];
  }
}

- (void)clientAcknowledgedTerminalCallbackForTask:(unint64_t)task
{
  identifiersToAVWrappers = self->_identifiersToAVWrappers;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)identifiersToAVWrappers objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_identifiersToAVWrappers;
    v9 = [NSNumber numberWithUnsignedInteger:task];
    [(NSMutableDictionary *)v8 removeObjectForKey:v9];
  }

  v10.receiver = self;
  v10.super_class = NDAVBackgroundSession;
  [(NDBackgroundSession *)&v10 clientAcknowledgedTerminalCallbackForTask:task];
}

- (void)stopAVAssetDownloadSessionWithTaskIdentifier:(unint64_t)identifier
{
  v8 = [NSURLError errorWithDomain:@"_nsurlsessiondErrorDomain" code:5 userInfo:0];
  identifiersToAVWrappers = self->_identifiersToAVWrappers;
  v6 = [NSNumber numberWithUnsignedInteger:identifier];
  v7 = [(NSMutableDictionary *)identifiersToAVWrappers objectForKeyedSubscript:v6];

  [v7 cancelAndDeliverError:v8];
}

- (void)startAVAssetDownloadSessionWithTaskIdentifier:(unint64_t)identifier
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)self->super._identifiersToTaskInfo objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6 && [v6 state] != 3 && -[NDAVBackgroundSession ensureAVAssetDownloadSessionWrapperForTaskIdentifier:](self, "ensureAVAssetDownloadSessionWrapperForTaskIdentifier:", identifier))
  {
    v8 = [(NSMutableDictionary *)self->_identifiersToAVWrappers objectForKeyedSubscript:v5];
    v9 = qword_1000EB210;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      _loggableDescription = [v7 _loggableDescription];
      *buf = 138543874;
      v16 = _loggableDescription;
      v17 = 2112;
      v18 = v8;
      v19 = 2048;
      identifierCopy = identifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ startAVAssetDownloadSessionWithTaskIdentifier wrapper: %@ taskIdentifier: %lu", buf, 0x20u);
    }

    [v8 resume];
    clientBundleID = [(NDBackgroundSession *)self clientBundleID];
    identifier = [(NDBackgroundSession *)self identifier];
    monitoredAppBundleID = [(NDBackgroundSession *)self monitoredAppBundleID];
    secondaryID = [(NDBackgroundSession *)self secondaryID];
    sub_100002740(1, clientBundleID, identifier, monitoredAppBundleID, secondaryID, v7, 0, 0, 0, [v7 isDiscretionary], 0, 0, 0, 0);
  }
}

- (BOOL)ensureAVAssetDownloadSessionWrapperForTaskIdentifier:(unint64_t)identifier
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)self->super._identifiersToTaskInfo objectForKeyedSubscript:v5];
  v7 = [(NSMutableDictionary *)self->_identifiersToAVWrappers objectForKey:v5];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [(NDAVBackgroundSession *)self newAVAssetDownloadSessionWrapperForTaskInfo:v6];
    v10 = v9;
    if (v9)
    {
      downloadToken = [v9 downloadToken];
      [v6 setAVAssetDownloadToken:downloadToken];
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        _loggableDescription = [v6 _loggableDescription];
        v18 = 138543618;
        v19 = _loggableDescription;
        v20 = 2048;
        v21 = downloadToken;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ created AVAssetDownloadSession with token %llu", &v18, 0x16u);
      }

      [(NSXPCProxyCreating *)self->super._clientProxy backgroundAVAssetDownloadTask:identifier didReceiveDownloadToken:downloadToken];
      [v10 setTaskIdentifier:identifier];
      [(NSMutableDictionary *)self->_identifiersToAVWrappers setObject:v10 forKeyedSubscript:v5];
      v8 = 1;
      v14 = v10;
    }

    else
    {
      v15 = qword_1000EB210;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        _loggableDescription2 = [v6 _loggableDescription];
        v18 = 138543362;
        v19 = _loggableDescription2;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@ couldn't create AVAssetDownloadSession; returning an error", &v18, 0xCu);
      }

      v14 = [NSURLError errorWithDomain:NSURLErrorDomain code:-1 userInfo:0];
      [(NDAVBackgroundSession *)self taskWithIdentifier:identifier didCompleteWithError:v14];
      v8 = 0;
    }
  }

  return v8;
}

- (id)newAVAssetDownloadSessionWrapperForTaskInfo:(id)info
{
  infoCopy = info;
  aVURLAsset = [infoCopy AVURLAsset];
  if (aVURLAsset)
  {

LABEL_4:
    v7 = [NDAVAssetDownloadSessionWrapper alloc];
    aVURLAsset2 = [infoCopy AVURLAsset];
    _destinationURLToUse = [infoCopy _destinationURLToUse];
    monitoredAppBundleID = [(NDBackgroundSession *)self monitoredAppBundleID];
    clientConfig = self->_clientConfig;
    aVURLAsset3 = [infoCopy AVURLAsset];
    v13 = [infoCopy _AVAssetDownloadSessionOptions:monitoredAppBundleID config:clientConfig asset:aVURLAsset3];
    v14 = [(NDAVAssetDownloadSessionWrapper *)v7 initWithURLAsset:aVURLAsset2 destinationURL:_destinationURLToUse options:v13 delegate:self queue:self->super._workQueue];
    goto LABEL_5;
  }

  downloadConfig = [infoCopy downloadConfig];

  if (downloadConfig)
  {
    goto LABEL_4;
  }

  _URLToUse = [infoCopy _URLToUse];

  if (!_URLToUse)
  {
    v15 = 0;
    goto LABEL_9;
  }

  v21 = [NDAVAssetDownloadSessionWrapper alloc];
  aVURLAsset2 = [infoCopy _URLToUse];
  _destinationURLToUse = [infoCopy _destinationURLToUse];
  monitoredAppBundleID = [(NDBackgroundSession *)self monitoredAppBundleID];
  v22 = self->_clientConfig;
  aVURLAsset3 = [infoCopy AVURLAsset];
  v13 = [infoCopy _AVAssetDownloadSessionOptions:monitoredAppBundleID config:v22 asset:aVURLAsset3];
  v14 = [(NDAVAssetDownloadSessionWrapper *)v21 initWithURL:aVURLAsset2 destinationURL:_destinationURLToUse options:v13 delegate:self queue:self->super._workQueue];
LABEL_5:
  v15 = v14;

  if (v15)
  {
    downloadToken = [(NDAVAssetDownloadSessionWrapper *)v15 downloadToken];
    v17 = qword_1000EB210;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      _loggableDescription = [infoCopy _loggableDescription];
      v23 = 138543618;
      v24 = _loggableDescription;
      v25 = 2048;
      v26 = downloadToken;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ created AVAssetDownloadSession with token %llu", &v23, 0x16u);
    }

    -[NSXPCProxyCreating backgroundAVAssetDownloadTask:didReceiveDownloadToken:](self->super._clientProxy, "backgroundAVAssetDownloadTask:didReceiveDownloadToken:", [infoCopy identifier], downloadToken);
  }

LABEL_9:

  return v15;
}

- (int64_t)adjustedTCPConnectionPriorityForTaskPriority:(int64_t)priority
{
  monitoredApplication = self->super._monitoredApplication;
  if (!monitoredApplication || [(NDApplication *)monitoredApplication isForeground])
  {
    if (priority > 399)
    {
      if (priority > 499)
      {
        if (priority != 500)
        {
          if (priority == 600)
          {
            return priority;
          }

LABEL_12:
          if (priority == 650)
          {
            return 650;
          }

          return 300;
        }

        return 500;
      }

      if (priority == 400)
      {
        return priority;
      }

LABEL_28:
      if (priority != 450)
      {
        return 300;
      }

      return 450;
    }

    if (priority > 299)
    {
      if (priority == 300)
      {
        return priority;
      }

LABEL_25:
      if (priority != 350)
      {
        return 300;
      }

      return 350;
    }

    goto LABEL_20;
  }

  if (priority <= 399)
  {
    if (priority > 299)
    {
      if (priority == 300)
      {
        return 350;
      }

      goto LABEL_25;
    }

LABEL_20:
    if (priority == 100)
    {
      return priority;
    }

    if (priority == 200)
    {
      return 200;
    }

    return 300;
  }

  if (priority <= 499)
  {
    if (priority == 400)
    {
      return 450;
    }

    goto LABEL_28;
  }

  if (priority == 500)
  {
    return 500;
  }

  if (priority != 600)
  {
    goto LABEL_12;
  }

  return 650;
}

- (void)taskShouldResume:(unint64_t)resume
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)self->super._identifiersToTaskInfo objectForKeyedSubscript:v5];
  if ([v6 taskKind] == 3 || objc_msgSend(v6, "taskKind") == 5)
  {
    identifiersToAVWrappers = self->_identifiersToAVWrappers;
    v8 = [NSNumber numberWithUnsignedInteger:resume];
    v9 = [(NSMutableDictionary *)identifiersToAVWrappers objectForKeyedSubscript:v8];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007FAF0;
    v12[3] = &unk_1000D6538;
    v13 = v6;
    selfCopy = self;
    resumeCopy = resume;
    v15 = v9;
    v16 = v5;
    v10 = v9;
    [(NDBackgroundSession *)self handleEarliestBeginDateForTaskWithIdentifier:resume completionHandler:v12];
  }

  if (([v6 hasStarted] & 1) == 0 && (objc_msgSend(v6, "isDiscretionary") & 1) == 0)
  {
    [v6 setStartedUserInitiated:1];
  }

  [v6 setHasStarted:1];
  v11 = [NSNumber numberWithUnsignedInteger:resume];
  [(NDBackgroundSession *)self queueUpdatesForTask:v11 updateType:14 highPriority:1];
}

- (void)taskShouldSuspend:(unint64_t)suspend
{
  identifiersToTaskInfo = self->super._identifiersToTaskInfo;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v24 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v6];

  if ([v24 taskKind] == 3 || objc_msgSend(v24, "taskKind") == 5)
  {
    identifiersToAVWrappers = self->_identifiersToAVWrappers;
    v8 = [NSNumber numberWithUnsignedInteger:suspend];
    v9 = [(NSMutableDictionary *)identifiersToAVWrappers objectForKeyedSubscript:v8];

    identifiersToThroughputMonitors = self->_identifiersToThroughputMonitors;
    v11 = [NSNumber numberWithUnsignedInteger:suspend];
    v12 = [(NSMutableDictionary *)identifiersToThroughputMonitors objectForKeyedSubscript:v11];

    [v9 suspend];
    [v12 wrapperWillSuspend];
    if (([v24 resumedAndWaitingForEarliestBeginDate] & 1) == 0)
    {
      clientBundleID = [(NDBackgroundSession *)self clientBundleID];
      identifier = [(NDBackgroundSession *)self identifier];
      monitoredAppBundleID = [(NDBackgroundSession *)self monitoredAppBundleID];
      secondaryID = [(NDBackgroundSession *)self secondaryID];
      sub_100002740(2, clientBundleID, identifier, monitoredAppBundleID, secondaryID, v24, 0, 0, 0, [v24 isDiscretionary], 0, 0, 0, 0);
    }

    [v24 setResumedAndWaitingForEarliestBeginDate:0];
    identifiersToDASActivities = self->_identifiersToDASActivities;
    v18 = [NSNumber numberWithUnsignedInteger:suspend];
    v19 = [(NSMutableDictionary *)identifiersToDASActivities objectForKeyedSubscript:v18];

    if (v19)
    {
      v20 = self->_identifiersToDASActivities;
      v21 = [NSNumber numberWithUnsignedInteger:suspend];
      [(NSMutableDictionary *)v20 setObject:0 forKeyedSubscript:v21];

      v22 = +[_DASScheduler sharedScheduler];
      [v22 activityCanceled:v19];
    }
  }

  v23 = [NSNumber numberWithUnsignedInteger:suspend];
  [(NDBackgroundSession *)self queueUpdatesForTask:v23 updateType:11 highPriority:1];
}

- (BOOL)retryTask:(id)task originalError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    _loggableDescription = [taskCopy _loggableDescription];
    v47 = 138543362;
    v48 = _loggableDescription;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ retrying AVAssetDownloadTask", &v47, 0xCu);
  }

  identifiersToAVWrappers = self->_identifiersToAVWrappers;
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy identifier]);
  v12 = [(NSMutableDictionary *)identifiersToAVWrappers objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = self->_identifiersToAVWrappers;
    v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy identifier]);
    [(NSMutableDictionary *)v13 removeObjectForKey:v14];
  }

  [(NDBackgroundSession *)self updateTaskInfoBasedOnCurrentDiscretionaryStatus:taskCopy];
  [taskCopy setRetryError:errorCopy];
  if (!errorCopy)
  {
    goto LABEL_20;
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:AVFoundationErrorDomain])
  {
    v16 = [errorCopy code] == -11819;

    if (!v16)
    {
      goto LABEL_13;
    }

    aVAssetURL = [taskCopy AVAssetURL];
    assetOptionsPlist = [taskCopy assetOptionsPlist];
    v19 = [AVURLAsset assetForNSURLSessionWithURL:aVAssetURL propertyList:assetOptionsPlist];
    [taskCopy setAVURLAsset:v19];

    aVURLAsset = [taskCopy AVURLAsset];
    [taskCopy setAVAssetDownloadToken:{objc_msgSend(aVURLAsset, "downloadToken")}];

    if ([taskCopy AVAssetDownloadToken])
    {
      assetDownloadTokensToAssets = self->_assetDownloadTokensToAssets;
      aVURLAsset2 = [taskCopy AVURLAsset];
      v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [taskCopy AVAssetDownloadToken]);
      [(NSMapTable *)assetDownloadTokensToAssets setObject:aVURLAsset2 forKey:v23];
    }

    v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy identifier]);
    [(NDBackgroundSession *)self queueUpdatesForTask:v24 updateType:14 highPriority:1];

    domain = qword_1000EB210;
    if (os_log_type_enabled(domain, OS_LOG_TYPE_DEFAULT))
    {
      _loggableDescription2 = [taskCopy _loggableDescription];
      code = [errorCopy code];
      retryCount = [taskCopy retryCount];
      options = [taskCopy options];
      v47 = 138544386;
      v48 = _loggableDescription2;
      v49 = 2112;
      v50 = *&errorCopy;
      v51 = 2048;
      v52 = code;
      v53 = 2048;
      v54 = retryCount;
      v55 = 2112;
      v56 = options;
      _os_log_impl(&_mh_execute_header, domain, OS_LOG_TYPE_DEFAULT, "%{public}@ recreated asset after error %@ [%ld] retry count %lu options = %@", &v47, 0x34u);
    }
  }

LABEL_13:
  domain2 = [errorCopy domain];
  v30 = [domain2 isEqualToString:AVFoundationErrorDomain];

  if (!v30)
  {
LABEL_20:
    v35 = 0;
    goto LABEL_21;
  }

  code2 = [errorCopy code];
  if (code2 == -11903 || code2 == -11900)
  {
    goto LABEL_16;
  }

  userInfo = [errorCopy userInfo];
  _destinationURLToUse = [userInfo objectForKey:NSUnderlyingErrorKey];

  if ([_destinationURLToUse code] != -12540)
  {
    v35 = 0;
LABEL_19:

    goto LABEL_21;
  }

  domain3 = [_destinationURLToUse domain];
  v35 = [domain3 isEqualToString:NSOSStatusErrorDomain];

  if (v35)
  {
LABEL_16:
    v32 = qword_1000EB210;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      _loggableDescription3 = [taskCopy _loggableDescription];
      v47 = 138543362;
      v48 = _loggableDescription3;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ removing destination file for AVAssetDownloadTask in order to retry", &v47, 0xCu);
    }

    _destinationURLToUse = [taskCopy _destinationURLToUse];
    [NDFileUtilities removeItemAtURL:_destinationURLToUse];
    v35 = 1;
    goto LABEL_19;
  }

LABEL_21:
  domain4 = [errorCopy domain];
  v37 = [domain4 isEqualToString:@"_nsurlsessiondErrorDomain"];

  v38 = 1.0;
  if (((v37 | v35) & 1) == 0)
  {
    retryCount2 = [taskCopy retryCount];
    [taskCopy setRetryCount:retryCount2 + 1];
    v38 = exp2(retryCount2);
  }

  v40 = fmin(v38, 1800.0);
  v41 = qword_1000EB210;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    _loggableDescription4 = [taskCopy _loggableDescription];
    v47 = 138543618;
    v48 = _loggableDescription4;
    v49 = 2048;
    v50 = v40;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ will retry after %f seconds", &v47, 0x16u);
  }

  v43 = +[NDStatusMonitor sharedMonitor];
  [v43 performCallbackAfterNetworkChangedEvent:self identifier:objc_msgSend(taskCopy delay:{"identifier"), v40}];

  return 1;
}

- (void)statusMonitor:(id)monitor callbackForIdentifier:(unint64_t)identifier networkChanged:(BOOL)changed
{
  workQueue = self->super._workQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000819CC;
  v6[3] = &unk_1000D6470;
  v6[4] = self;
  v6[5] = identifier;
  dispatch_async(workQueue, v6);
}

- (void)cancelAVDownloadAndFailTaskWithIdentifier:(unint64_t)identifier withError:(id)error
{
  errorCopy = error;
  identifiersToTaskInfo = self->super._identifiersToTaskInfo;
  v8 = [NSNumber numberWithUnsignedInteger:identifier];
  v9 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v8];

  [v9 setResumedAndWaitingForEarliestBeginDate:0];
  identifiersToAVWrappers = self->_identifiersToAVWrappers;
  v11 = [NSNumber numberWithUnsignedInteger:identifier];
  v12 = [(NSMutableDictionary *)identifiersToAVWrappers objectForKeyedSubscript:v11];

  [v12 cancel];
  [(NDAVBackgroundSession *)self cancelTCPConnectionForTask:identifier withError:errorCopy];
  v13 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081BB0;
  block[3] = &unk_1000D6448;
  v16 = errorCopy;
  identifierCopy = identifier;
  block[4] = self;
  v14 = errorCopy;
  dispatch_async(v13, block);
}

- (void)setPriority:(int64_t)priority forTaskWithIdentifier:(unint64_t)identifier
{
  [NDAVBackgroundSession setPriority:"setPriority:forTCPConnectionWithTaskIdentifier:" forTCPConnectionWithTaskIdentifier:?];
  v10.receiver = self;
  v10.super_class = NDAVBackgroundSession;
  [(NDBackgroundSession *)&v10 setPriority:priority forTaskWithIdentifier:identifier];
  identifiersToThroughputMonitors = self->_identifiersToThroughputMonitors;
  v8 = [NSNumber numberWithUnsignedInteger:identifier];
  v9 = [(NSMutableDictionary *)identifiersToThroughputMonitors objectForKeyedSubscript:v8];

  [v9 setBasePriority:priority];
}

- (void)cancelTaskWithIdentifier:(unint64_t)identifier byProducingResumeData:(id)data
{
  dataCopy = data;
  [(NDAVBackgroundSession *)self cancelTaskWithIdentifier:identifier];
  dataCopy[2](dataCopy, 0);
}

- (void)cancelTaskWithIdentifier:(unint64_t)identifier
{
  identifiersToTaskInfo = self->super._identifiersToTaskInfo;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v6];

  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    _loggableDescription = [v7 _loggableDescription];
    v12 = 138543362;
    v13 = _loggableDescription;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelTaskWithIdentifier", &v12, 0xCu);
  }

  _URLToUse = [v7 _URLToUse];
  v11 = [NSURLError _web_errorWithDomain:NSURLErrorDomain code:-999 URL:_URLToUse];

  [(NDAVBackgroundSession *)self cancelAVDownloadAndFailTaskWithIdentifier:identifier withError:v11];
}

- (void)avAggregateAssetDownloadTaskWithDownloadToken:(unint64_t)token serializedMediaSelections:(id)selections assetTitle:(id)title assetArtworkData:(id)data options:(id)options assetOptions:(id)assetOptions childDownloadSessionIdentifier:(id)identifier identifier:(unint64_t)self0 uniqueIdentifier:(id)self1 reply:(id)self2
{
  selectionsCopy = selections;
  titleCopy = title;
  dataCopy = data;
  optionsCopy = options;
  assetOptionsCopy = assetOptions;
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  replyCopy = reply;
  v19 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544898;
    v50 = uniqueIdentifierCopy;
    v51 = 2048;
    tokenCopy2 = a10;
    v53 = 2048;
    tokenCopy = token;
    v55 = 2112;
    v56 = selectionsCopy;
    v57 = 2112;
    v58 = titleCopy;
    v59 = 2112;
    v60 = dataCopy;
    v61 = 2112;
    v62 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Task <%{public}@>.<%lu> avAggregateAssetDownloadTaskWithDownloadToken: %llu, serializedMediaSelections: %@, assetTitle: %@, assetArtworkData: %@, options: %@", buf, 0x48u);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v21 = v20;
  v22 = [__NSCFURLSessionTaskInfo alloc];
  clientBundleID = [(NDBackgroundSession *)self clientBundleID];
  identifier = [(NDBackgroundSession *)self identifier];
  v25 = [v22 initWithAVAggregateAssetDownloadChildDownloadSessionIdentifier:identifierCopy assetTitle:titleCopy assetArtworkData:dataCopy options:optionsCopy taskIdentifier:a10 uniqueIdentifier:uniqueIdentifierCopy bundleID:clientBundleID sessionID:identifier];

  if ([(NDApplication *)self->super._monitoredApplication hasForegroundBackgroundStates])
  {
    v26 = !self->super._discretionary;
  }

  else
  {
    v26 = 0;
  }

  [v25 setMayBeDemotedToDiscretionary:v26];
  v46.receiver = self;
  v46.super_class = NDAVBackgroundSession;
  [v25 setDiscretionary:{-[NDBackgroundSession currentDiscretionaryStatus:withOptionalTaskInfo:](&v46, "currentDiscretionaryStatus:withOptionalTaskInfo:", 0, v25)}];
  v45.receiver = self;
  v45.super_class = NDAVBackgroundSession;
  [v25 setBasePriority:{-[NDBackgroundSession priorityForDiscretionaryStatus:](&v45, "priorityForDiscretionaryStatus:", objc_msgSend(v25, "isDiscretionary"))}];
  [v25 setState:1];
  [v25 setSuspendCount:1];
  [v25 setCreationTime:v21];
  [v25 setInitializedWithAVAsset:1];
  [v25 setAVAssetDownloadToken:token];
  v47 = AVURLAssetDownloadTokenKey;
  v27 = [NSNumber numberWithUnsignedLongLong:token];
  v48 = v27;
  v28 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v29 = [AVURLAsset URLAssetWithURL:0 options:v28];

  [v25 setAVURLAsset:v29];
  v30 = [v29 URL];
  [v25 setAVAssetURL:v30];

  [v25 setAssetOptionsPlist:assetOptionsCopy];
  v31 = qword_1000EB210;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    _loggableDescription = [v25 _loggableDescription];
    *buf = 138543618;
    v50 = _loggableDescription;
    v51 = 2112;
    tokenCopy2 = v29;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ new AVAggregateAssetDownloadTask asset: %@", buf, 0x16u);
  }

  if (v29)
  {
    identifiersToTaskInfo = self->super._identifiersToTaskInfo;
    v34 = [NSNumber numberWithUnsignedInteger:a10];
    [(NSMutableDictionary *)identifiersToTaskInfo setObject:v25 forKeyedSubscript:v34];

    v44.receiver = self;
    v44.super_class = NDAVBackgroundSession;
    [(NDBackgroundSession *)&v44 addOutstandingTaskWithIdentifier:a10];
    v35 = [NSNumber numberWithUnsignedInteger:a10];
    [(NDBackgroundSession *)self queueUpdatesForTask:v35 updateType:14 highPriority:1];
  }

  else
  {
    v35 = qword_1000EB210;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      _loggableDescription2 = [v25 _loggableDescription];
      *buf = 138543618;
      v50 = _loggableDescription2;
      v51 = 2048;
      tokenCopy2 = token;
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@ failed to instantiate AVAsset, token %llu", buf, 0x16u);
    }
  }

  replyCopy[2](replyCopy, v29 != 0);
}

- (void)avAssetDownloadTaskWithDownloadToken:(unint64_t)token URL:(id)l destinationURL:(id)rL temporaryDestinationURL:(id)uRL assetTitle:(id)title assetArtworkData:(id)data options:(id)options assetOptions:(id)self0 identifier:(unint64_t)self1 uniqueIdentifier:(id)self2 taskKind:(unint64_t)self3 enableSPIDelegateCallbacks:(BOOL)self4 reply:(id)self5
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  titleCopy = title;
  dataCopy = data;
  tokenCopy = token;
  optionsCopy = options;
  assetOptionsCopy = assetOptions;
  uniqueIdentifierCopy = uniqueIdentifier;
  replyCopy = reply;
  v24 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138545410;
    *&buf[4] = uniqueIdentifierCopy;
    *&buf[12] = 2048;
    *&buf[14] = identifier;
    *&buf[22] = 2048;
    *&buf[24] = token;
    v77 = 2112;
    v78 = lCopy;
    v79 = 2112;
    v80 = rLCopy;
    v81 = 2112;
    v82 = uRLCopy;
    v83 = 2112;
    v84 = titleCopy;
    v85 = 2112;
    v86 = dataCopy;
    v87 = 2112;
    v88 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Task <%{public}@>.<%lu> avAssetDownloadTaskWithDownloadToken: %llu, URL: %@, destinationURL: %@, temporaryDestinationURL: %@, assetTitle: %@, assetArtworkData: %@, options: %@", buf, 0x5Cu);
  }

  v65 = rLCopy;
  v25 = [(NDAVBackgroundSession *)self downloadDirectoryToUse:rLCopy];
  xpcConn = self->super._xpcConn;
  if (xpcConn)
  {
    [(NSXPCConnection *)xpcConn auditToken];
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v68 = [NDFileUtilities safeDirectoryForDownloads:v25 auditToken:buf];

  if (v68)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v28 = v27;
    if (optionsCopy)
    {
      v29 = [optionsCopy mutableCopy];
    }

    else
    {
      v29 = +[NSMutableDictionary dictionary];
    }

    v32 = v29;
    v66 = [optionsCopy objectForKeyedSubscript:@"AVAssetDownloadTaskDownloadConfigurationKey"];
    [v32 setObject:0 forKeyedSubscript:@"AVAssetDownloadTaskDownloadConfigurationKey"];
    v31 = v32;

    v33 = ![(NDAVBackgroundSession *)self doesAVAssetDownloadSessionSupportMultipleDownloads];
    if (kind != 5)
    {
      LOBYTE(v33) = 1;
    }

    if (v33)
    {
      v38 = [__NSCFURLSessionTaskInfo alloc];
      clientBundleID = [(NDBackgroundSession *)self clientBundleID];
      identifier = [(NDBackgroundSession *)self identifier];
      v37 = [v38 initWithAVAssetDownloadURL:lCopy destinationURL:rLCopy assetTitle:titleCopy assetArtworkData:dataCopy options:v31 taskIdentifier:identifier uniqueIdentifier:uniqueIdentifierCopy bundleID:clientBundleID sessionID:identifier downloadConfig:v66];
    }

    else
    {
      v34 = [__NSCFURLSessionTaskInfo alloc];
      clientBundleID = [(NDBackgroundSession *)self clientBundleID];
      identifier = [(NDBackgroundSession *)self identifier];
      LOBYTE(v62) = callbacks;
      v37 = [v34 initWithAVAggregateDownloadTaskNoChildTaskKindWithURL:lCopy destinationURL:rLCopy assetTitle:titleCopy assetArtworkData:dataCopy options:v31 taskIdentifier:identifier uniqueIdentifier:uniqueIdentifierCopy bundleID:clientBundleID sessionID:identifier enableSPIDelegateCallbacks:v62];
    }

    v39 = v37;

    if ([(NDApplication *)self->super._monitoredApplication hasForegroundBackgroundStates])
    {
      v40 = !self->super._discretionary;
    }

    else
    {
      v40 = 0;
    }

    [v39 setMayBeDemotedToDiscretionary:v40];
    v75.receiver = self;
    v75.super_class = NDAVBackgroundSession;
    [v39 setDiscretionary:{-[NDBackgroundSession currentDiscretionaryStatus:withOptionalTaskInfo:](&v75, "currentDiscretionaryStatus:withOptionalTaskInfo:", 0, v39)}];
    v74.receiver = self;
    v74.super_class = NDAVBackgroundSession;
    [v39 setBasePriority:{-[NDBackgroundSession priorityForDiscretionaryStatus:](&v74, "priorityForDiscretionaryStatus:", objc_msgSend(v39, "isDiscretionary"))}];
    [v39 setState:1];
    [v39 setSuspendCount:1];
    [v39 setCreationTime:v28];
    [v39 setAVAssetDownloadToken:token];
    [v39 setInitializedWithAVAsset:token != 0];
    if ([v39 initializedWithAVAsset])
    {
      v41 = [(NDAVBackgroundSession *)self avAssetForURL:lCopy downloadToken:token];
      [v39 setAVURLAsset:v41];
    }

    else
    {
      v41 = 0;
    }

    [v39 setTemporaryDestinationURL:uRLCopy];
    [v39 setAssetTitle:titleCopy];
    [v39 setAssetArtworkData:dataCopy];
    [v39 setAssetOptionsPlist:assetOptionsCopy];
    if (v41 | v66)
    {
      v42 = [(NDAVBackgroundSession *)self destinationURLToUseForTask:v39];
      [v39 setDestinationURL:v42];

      if (v41)
      {
        v43 = [v41 URL];
        [v39 setAVAssetURL:v43];

LABEL_31:
        destinationURL = [v39 destinationURL];
        v47 = destinationURL == 0;

        if (!v47)
        {
          v48 = [(NDAVBackgroundSession *)self newAVAssetDownloadSessionWrapperForTaskInfo:v39];
          v49 = v48 != 0;
          v50 = qword_1000EB210;
          destinationURL2 = v50;
          if (v48)
          {
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              _loggableDescription = [v39 _loggableDescription];
              *buf = 138543874;
              *&buf[4] = _loggableDescription;
              *&buf[12] = 2112;
              *&buf[14] = v48;
              *&buf[22] = 2048;
              *&buf[24] = token;
              _os_log_impl(&_mh_execute_header, destinationURL2, OS_LOG_TYPE_DEFAULT, "%{public}@ new AVAssetDownloadSession %@ with token %llu", buf, 0x20u);
            }

            identifiersToTaskInfo = self->super._identifiersToTaskInfo;
            v54 = [NSNumber numberWithUnsignedInteger:identifier];
            [(NSMutableDictionary *)identifiersToTaskInfo setObject:v39 forKeyedSubscript:v54];

            identifiersToAVWrappers = self->_identifiersToAVWrappers;
            v56 = [NSNumber numberWithUnsignedInteger:identifier];
            [(NSMutableDictionary *)identifiersToAVWrappers setObject:v48 forKeyedSubscript:v56];

            [v48 setTaskIdentifier:identifier];
            [(NDAVBackgroundSession *)self setupThroughputMonitorForWrapper:v48 taskInfo:v39 identifier:identifier];
            v73.receiver = self;
            v73.super_class = NDAVBackgroundSession;
            [(NDBackgroundSession *)&v73 addOutstandingTaskWithIdentifier:identifier];
            v57 = [NSNumber numberWithUnsignedInteger:identifier];
            [(NDBackgroundSession *)self queueUpdatesForTask:v57 updateType:14 highPriority:1];

            clientProxy = self->super._clientProxy;
            destinationURL2 = [v39 destinationURL];
            [(NSXPCProxyCreating *)clientProxy backgroundAVAssetDownloadTask:identifier willDownloadToURL:destinationURL2];
          }

          else if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            _loggableDescription2 = [v39 _loggableDescription];
            *buf = 138543362;
            *&buf[4] = _loggableDescription2;
            _os_log_error_impl(&_mh_execute_header, destinationURL2, OS_LOG_TYPE_ERROR, "%{public}@ failed to instantiate AVAssetDownloadSession", buf, 0xCu);
          }

LABEL_42:
          replyCopy[2](replyCopy, v49);

          goto LABEL_43;
        }

LABEL_36:
        v48 = qword_1000EB210;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          _loggableDescription3 = [v39 _loggableDescription];
          *buf = 138543618;
          *&buf[4] = _loggableDescription3;
          *&buf[12] = 2048;
          *&buf[14] = tokenCopy;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%{public}@ failed to instantiate AVAsset, token %llu", buf, 0x16u);
        }

        v49 = 0;
        goto LABEL_42;
      }

      if (v66)
      {
        _asset = [v66 _asset];
        v45 = [_asset URL];
        [v39 setAVAssetURL:v45];
      }
    }

    if ([v39 initializedWithAVAsset] && !v66)
    {
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  v30 = qword_1000EB210;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    clientBundleID2 = [(NDBackgroundSession *)self clientBundleID];
    *buf = 138544130;
    *&buf[4] = uniqueIdentifierCopy;
    *&buf[12] = 2048;
    *&buf[14] = identifier;
    *&buf[22] = 2112;
    *&buf[24] = clientBundleID2;
    v77 = 2112;
    v78 = 0;
    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Task <%{public}@>.<%lu> for client %@ does not have write access to destination directory %@", buf, 0x2Au);
  }

  replyCopy[2](replyCopy, 0);
  v31 = optionsCopy;
LABEL_43:
}

- (id)avAssetForURL:(id)l downloadToken:(unint64_t)token
{
  lCopy = l;
  if (token)
  {
    assetDownloadTokensToAssets = self->_assetDownloadTokensToAssets;
    v8 = [NSNumber numberWithUnsignedLongLong:token];
    v9 = [(NSMapTable *)assetDownloadTokensToAssets objectForKey:v8];

    if (!v9)
    {
      if (lCopy)
      {
        v9 = [AVURLAsset URLAssetWithURL:lCopy options:0];
      }

      else
      {
        v15 = AVURLAssetDownloadTokenKey;
        v10 = [NSNumber numberWithUnsignedLongLong:token];
        v16 = v10;
        v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v9 = [AVURLAsset URLAssetWithURL:0 options:v11];
      }

      v12 = self->_assetDownloadTokensToAssets;
      v13 = [NSNumber numberWithUnsignedLongLong:token];
      [(NSMapTable *)v12 setObject:v9 forKey:v13];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasEntitlementToSpecifyDownloadDestinationURL
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = sub_100008D00(v2, @"com.apple.private.nsurlsession.media-asset-download.can-specify-destination-url");

  return v3;
}

- (void)applicationEndedTransitionalDiscretionaryBackgroundPeriod:(id)period
{
  periodCopy = period;
  workQueue = self->super._workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100083348;
  v7[3] = &unk_1000D6420;
  v8 = periodCopy;
  selfCopy = self;
  v6 = periodCopy;
  dispatch_async(workQueue, v7);
}

- (void)applicationWasQuitFromAppSwitcher:(id)switcher
{
  switcherCopy = switcher;
  workQueue = self->super._workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000836E0;
  v7[3] = &unk_1000D6420;
  v8 = switcherCopy;
  selfCopy = self;
  v6 = switcherCopy;
  dispatch_async(workQueue, v7);
}

- (void)applicationEnteredForeground:(id)foreground
{
  foregroundCopy = foreground;
  workQueue = self->super._workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100083A6C;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = foregroundCopy;
  v6 = foregroundCopy;
  dispatch_async(workQueue, v7);
}

- (void)applicationNoLongerInForeground:(id)foreground
{
  foregroundCopy = foreground;
  workQueue = self->super._workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100083DAC;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = foregroundCopy;
  v6 = foregroundCopy;
  dispatch_async(workQueue, v7);
}

- (id)destinationURLToUseForTask:(id)task
{
  taskCopy = task;
  destinationURL = [taskCopy destinationURL];
  if (!destinationURL)
  {
    aVURLAsset = [taskCopy AVURLAsset];
    if (aVURLAsset)
    {

      goto LABEL_5;
    }

    downloadConfig = [taskCopy downloadConfig];

    if (downloadConfig)
    {
LABEL_5:
      aVURLAsset2 = [taskCopy AVURLAsset];
      v9 = [aVURLAsset2 URL];
      isFileURL = [v9 isFileURL];

      if (isFileURL)
      {
        aVURLAsset3 = [taskCopy AVURLAsset];
        destinationURL = [aVURLAsset3 URL];
LABEL_21:

        goto LABEL_22;
      }

      if ([taskCopy AVAssetDownloadToken])
      {
        aVAssetDownloadToken = [taskCopy AVAssetDownloadToken];
        if (!aVAssetDownloadToken)
        {
          goto LABEL_11;
        }
      }

      else
      {
        aVURLAsset4 = [taskCopy AVURLAsset];
        aVAssetDownloadToken = [aVURLAsset4 downloadToken];

        if (!aVAssetDownloadToken)
        {
LABEL_11:
          aVAssetDownloadToken = arc4random();
        }
      }

      v14 = +[NSMutableCharacterSet URLPathAllowedCharacterSet];
      v15 = [v14 mutableCopy];

      v30 = v15;
      [v15 removeCharactersInString:@"/"];
      assetTitle = [taskCopy assetTitle];
      v17 = [assetTitle stringByAddingPercentEncodingWithAllowedCharacters:v15];

      if ([v17 length] >= 0xE8)
      {
        v18 = [v17 substringWithRange:{0, 231}];

        v17 = v18;
      }

      aVURLAsset5 = [taskCopy AVURLAsset];
      v20 = [NSString stringWithFormat:@"%llu", aVAssetDownloadToken];
      v31 = destinationURLFragment();

      if (v17)
      {
        v21 = @"_";
      }

      else
      {
        v21 = &stru_1000D7618;
      }

      aVURLAsset6 = [taskCopy AVURLAsset];
      v23 = [aVURLAsset6 URL];
      pathExtension = [v23 pathExtension];
      v25 = [objc_opt_class() performSelector:"_figFilePathExtensions"];
      if ([v25 containsObject:pathExtension])
      {
        v26 = pathExtension;
      }

      else
      {
        v26 = @"movpkg";
      }

      v27 = [NSString stringWithFormat:@"%@%@%@.%@", v17, v21, v31, v26];

      avAssetDownloadsDirectory = [(NDAVBackgroundSession *)self avAssetDownloadsDirectory];
      destinationURL = [avAssetDownloadsDirectory URLByAppendingPathComponent:v27 isDirectory:0];

      aVURLAsset3 = v30;
      goto LABEL_21;
    }

    destinationURL = 0;
  }

LABEL_22:

  return destinationURL;
}

- (id)downloadDirectoryToUse:(id)use
{
  useCopy = use;
  v5 = useCopy;
  if (useCopy)
  {
    [useCopy URLByDeletingLastPathComponent];
  }

  else
  {
    [(NDAVBackgroundSession *)self avAssetDownloadsDirectory];
  }
  v6 = ;

  return v6;
}

- (id)avAssetDownloadsDirectory
{
  if (![(NDApplication *)self->super._clientApplication usesContainerManagerForAVAsset])
  {
    setupDownloadDirectory = [(NDBackgroundSession *)self setupDownloadDirectory];
    goto LABEL_21;
  }

  v30 = 1;
  clientBundleID = [(NDBackgroundSession *)self clientBundleID];
  [clientBundleID UTF8String];
  v4 = container_create_or_lookup_path_for_current_user();

  if (!v4)
  {
    v5 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v32 = v30;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error getting container path: %llu", buf, 0xCu);
    }
  }

  clientBundleID2 = [(NDBackgroundSession *)self clientBundleID];
  v7 = clientBundleID2;
  [clientBundleID2 UTF8String];
  v8 = container_user_managed_assets_relative_path();

  if (!v8)
  {
    v16 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v32 = v30;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error getting User managed assets path: %llu", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (!v4)
  {
LABEL_14:
    setupDownloadDirectory = 0;
    goto LABEL_21;
  }

  v9 = [NSURL fileURLWithFileSystemRepresentation:v4 isDirectory:1 relativeToURL:0];
  v10 = [NDFileUtilities noFollowRealURL:v9];

  setupDownloadDirectory = [NSURL fileURLWithFileSystemRepresentation:v8 isDirectory:1 relativeToURL:v10];
  free(v4);
  free(v8);

  if (!setupDownloadDirectory)
  {
    goto LABEL_21;
  }

  v29 = 0;
  v12 = +[NSFileManager defaultManager];
  path = [setupDownloadDirectory path];
  v14 = [v12 fileExistsAtPath:path isDirectory:&v29];

  if (!v14)
  {
    v17 = 0;
LABEL_16:
    v18 = +[NSFileManager defaultManager];
    v27 = v17;
    v19 = [v18 createDirectoryAtURL:setupDownloadDirectory withIntermediateDirectories:1 attributes:0 error:&v27];
    v15 = v27;

    if ((v19 & 1) == 0)
    {
      v20 = qword_1000EB210;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        code = [v15 code];
        *buf = 138412546;
        v32 = v15;
        v33 = 2048;
        v34 = code;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error creating asset downloads directory: %@ [%ld]", buf, 0x16u);
      }
    }

    goto LABEL_20;
  }

  if ((v29 & 1) == 0)
  {
    v22 = +[NSFileManager defaultManager];
    v28 = 0;
    v23 = [v22 removeItemAtURL:setupDownloadDirectory error:&v28];
    v17 = v28;

    if ((v23 & 1) == 0)
    {
      v24 = qword_1000EB210;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        code2 = [v17 code];
        *buf = 138412546;
        v32 = v17;
        v33 = 2048;
        v34 = code2;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error removing file at location of asset downloads directory: %@ [%ld]", buf, 0x16u);
      }
    }

    goto LABEL_16;
  }

  v15 = 0;
LABEL_20:

LABEL_21:

  return setupDownloadDirectory;
}

- (void)fillInByteCountsForTaskInfo:(id)info withTaskID:(id)d
{
  infoCopy = info;
  v6 = [(NSMutableDictionary *)self->_identifiersToAVWrappers objectForKeyedSubscript:d];
  [infoCopy setCountOfBytesSent:0];
  [infoCopy setCountOfBytesReceived:{objc_msgSend(v6, "countOfBytesWritten")}];
  [infoCopy setCountOfBytesExpectedToSend:0];
  [infoCopy setCountOfBytesExpectedToReceive:{objc_msgSend(v6, "countOfBytesExpectedToWrite")}];
}

- (id)restoreTasksFromArchivedInfo:(id)info
{
  infoCopy = info;
  +[NSMutableArray array];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100084B00;
  v9[3] = &unk_1000D63F8;
  v5 = v9[4] = self;
  v10 = v5;
  [infoCopy enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

- (id)restoreTasksFromSqliteDB:(id)b
{
  bCopy = b;
  tasksDB = self->super.tasksDB;
  if (tasksDB)
  {
    identifier = [(NDBackgroundSession *)self identifier];
    uuid = [(NDBackgroundSession *)self uuid];
    tasksDB = [tasksDB _getAllTasksFromDBForSession:identifier sessionUUID:uuid];
  }

  v49 = +[NSMutableArray array];
  selfCopy = self;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = tasksDB;
  v7 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v7)
  {
    v51 = *v56;
    *&v8 = 138543618;
    v47 = v8;
    do
    {
      v52 = v7;
      for (i = 0; i != v52; i = i + 1)
      {
        if (*v56 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v55 + 1) + 8 * i);
        v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 identifier]);
        _destinationURLToUse = [v10 _destinationURLToUse];
        v13 = _destinationURLToUse;
        if (_destinationURLToUse)
        {
          uRLByDeletingLastPathComponent = [_destinationURLToUse URLByDeletingLastPathComponent];
          v54 = 0;
          v15 = [uRLByDeletingLastPathComponent checkResourceIsReachableAndReturnError:&v54];
          v16 = v54;

          if ((v15 & 1) == 0)
          {
            v17 = qword_1000EB210;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              _loggableDescription = [v10 _loggableDescription];
              *buf = 138543874;
              v62 = _loggableDescription;
              v63 = 2112;
              v64 = v13;
              v65 = 2112;
              v66 = v16;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ not restoring task due to unreachable destination folder %@ (%@)", buf, 0x20u);
            }

            [v10 setState:3];
            v19 = [NSURLError _web_errorWithDomain:NSURLErrorDomain code:-3000 failingURL:0];
            [v10 setError:v19];

            v20 = [PendingCallback alloc];
            identifier2 = [v10 identifier];
            error = [v10 error];
            v60[0] = error;
            v23 = +[NSNull null];
            v60[1] = v23;
            v60[2] = &__NSDictionary0__struct;
            v24 = [NSArray arrayWithObjects:v60 count:3];
            v25 = [(PendingCallback *)v20 initWithCallbackType:0 taskIdentifier:identifier2 args:v24];

            [(NDCallbackQueue *)selfCopy->super._callbackQueue addPendingCallback:v25 wakeRequirement:0];
          }
        }

        if ([v10 initializedWithAVAsset] && objc_msgSend(v10, "state") <= 2)
        {
          aVAssetURL = [v10 AVAssetURL];
          assetOptionsPlist = [v10 assetOptionsPlist];
          v28 = [AVURLAsset assetForNSURLSessionWithURL:aVAssetURL propertyList:assetOptionsPlist];

          [v10 setAVURLAsset:v28];
          [v10 setAVAssetDownloadToken:{objc_msgSend(v28, "downloadToken")}];
          if (!v28 || ([v28 URL], v29 = objc_claimAutoreleasedReturnValue(), v30 = v29 == 0, v29, v30))
          {
            v34 = qword_1000EB210;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              _loggableDescription2 = [v10 _loggableDescription];
              aVAssetDownloadToken = [v10 AVAssetDownloadToken];
              *buf = v47;
              v62 = _loggableDescription2;
              v63 = 2048;
              v64 = aVAssetDownloadToken;
              _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}@ failed to re-instantiate AVURLAsset with token %llu", buf, 0x16u);
            }

            [v10 setState:3];
            v35 = [NSURLError _web_errorWithDomain:NSURLErrorDomain code:-1 failingURL:0];
            [v10 setError:v35];

            v36 = [PendingCallback alloc];
            identifier3 = [v10 identifier];
            error2 = [v10 error];
            v59[0] = error2;
            v39 = +[NSNull null];
            v59[1] = v39;
            v59[2] = &__NSDictionary0__struct;
            v40 = [NSArray arrayWithObjects:v59 count:3];
            v31 = [(PendingCallback *)v36 initWithCallbackType:0 taskIdentifier:identifier3 args:v40];

            [(NDCallbackQueue *)selfCopy->super._callbackQueue addPendingCallback:v31 wakeRequirement:0];
          }

          else
          {
            v31 = qword_1000EB210;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              _loggableDescription3 = [v10 _loggableDescription];
              aVAssetDownloadToken2 = [v10 AVAssetDownloadToken];
              *buf = v47;
              v62 = _loggableDescription3;
              v63 = 2048;
              v64 = aVAssetDownloadToken2;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ restored asset with token %llu from sqlite", buf, 0x16u);
            }
          }
        }

        if ([v10 state] <= 2)
        {
          if ([v10 hasStarted])
          {
            v41 = qword_1000EB210;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              _loggableDescription4 = [v10 _loggableDescription];
              *buf = 138543362;
              v62 = _loggableDescription4;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ adding to outstanding tasks list", buf, 0xCu);
            }

            -[NDBackgroundSession addOutstandingTaskWithIdentifier:](selfCopy, "addOutstandingTaskWithIdentifier:", [v11 unsignedIntegerValue]);
            [v49 addObject:v10];
          }

          else
          {
            v43 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 identifier]);
            [bCopy addObject:v43];
          }
        }

        [(NSMutableDictionary *)selfCopy->super._identifiersToTaskInfo setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v7);
  }

  return v49;
}

- (void)cancelThroughputMonitorForWrapper:(unint64_t)wrapper
{
  identifiersToThroughputMonitors = self->_identifiersToThroughputMonitors;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v9 = [(NSMutableDictionary *)identifiersToThroughputMonitors objectForKeyedSubscript:v6];

  [v9 cancel];
  v7 = self->_identifiersToThroughputMonitors;
  v8 = [NSNumber numberWithUnsignedInteger:wrapper];
  [(NSMutableDictionary *)v7 removeObjectForKey:v8];
}

- (void)setupThroughputMonitorForWrapper:(id)wrapper taskInfo:(id)info identifier:(unint64_t)identifier
{
  wrapperCopy = wrapper;
  infoCopy = info;
  isDiscretionary = [infoCopy isDiscretionary];
  if (self->super._discretionary)
  {
    v10 = isDiscretionary | 2;
  }

  else
  {
    v10 = isDiscretionary;
  }

  if (self->super._infersDiscretionary || [(NDApplication *)self->super._clientApplication canBeSuspended])
  {
    v10 |= 4uLL;
  }

  v11 = -[NDAVThroughputMonitor initWithWrapper:monitoredApplication:priority:options:queue:]([NDAVThroughputMonitor alloc], "initWithWrapper:monitoredApplication:priority:options:queue:", wrapperCopy, self->super._monitoredApplication, [infoCopy basePriority], v10, self->super._workQueue);
  identifiersToThroughputMonitors = self->_identifiersToThroughputMonitors;
  v13 = [NSNumber numberWithUnsignedInteger:identifier];
  [(NSMutableDictionary *)identifiersToThroughputMonitors setObject:v11 forKeyedSubscript:v13];
}

- (void)cancelDelayedCompletionWakeTimer
{
  if (self->_delayedWakeTimer)
  {
    v3 = qword_1000EB210;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      clientBundleID = [(NDBackgroundSession *)self clientBundleID];
      identifier = [(NDBackgroundSession *)self identifier];
      v7 = 138412546;
      v8 = clientBundleID;
      v9 = 2112;
      v10 = identifier;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Canceling delayed wake for session <%@>.<%@>", &v7, 0x16u);
    }

    dispatch_source_cancel(self->_delayedWakeTimer);
    delayedWakeTimer = self->_delayedWakeTimer;
    self->_delayedWakeTimer = 0;
  }
}

- (void)setupDelayedCompletionWakeTimer
{
  if (!self->_delayedWakeTimer)
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->super._workQueue);
    delayedWakeTimer = self->_delayedWakeTimer;
    self->_delayedWakeTimer = v3;

    v5 = self->_delayedWakeTimer;
    if (v5)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100085F3C;
      handler[3] = &unk_1000D63D0;
      handler[4] = self;
      dispatch_source_set_event_handler(v5, handler);
      v6 = self->_delayedWakeTimer;
      v7 = dispatch_time(0, 120000000000);
      dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      dispatch_resume(self->_delayedWakeTimer);
      v8 = qword_1000EB210;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        clientBundleID = [(NDBackgroundSession *)self clientBundleID];
        identifier = [(NDBackgroundSession *)self identifier];
        *buf = 138412546;
        v13 = clientBundleID;
        v14 = 2112;
        v15 = identifier;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Scheduled delayed wake for session <%@>.<%@>", buf, 0x16u);
      }
    }
  }
}

@end