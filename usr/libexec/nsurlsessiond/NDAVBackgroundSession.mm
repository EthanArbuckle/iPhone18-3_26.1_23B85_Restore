@interface NDAVBackgroundSession
- (BOOL)ensureAVAssetDownloadSessionWrapperForTaskIdentifier:(unint64_t)a3;
- (BOOL)hasEntitlementToSpecifyDownloadDestinationURL;
- (BOOL)retryTask:(id)a3 originalError:(id)a4;
- (id)avAssetDownloadsDirectory;
- (id)avAssetForURL:(id)a3 downloadToken:(unint64_t)a4;
- (id)destinationURLToUseForTask:(id)a3;
- (id)downloadDirectoryToUse:(id)a3;
- (id)newAVAssetDownloadSessionWrapperForTaskInfo:(id)a3;
- (id)restoreTasksFromArchivedInfo:(id)a3;
- (id)restoreTasksFromSqliteDB:(id)a3;
- (int64_t)adjustedTCPConnectionPriorityForTaskPriority:(int64_t)a3;
- (void)NDAVAssetDownloadSessionWrapper:(id)a3 didCompleteWithError:(id)a4;
- (void)NDAVAssetDownloadSessionWrapper:(id)a3 didFinishDownloadForMediaSelectionPropertyList:(id)a4;
- (void)NDAVAssetDownloadSessionWrapper:(id)a3 didLoadTimeRange:(id)a4 totalTimeRangesLoaded:(id)a5 timeRangeExpectedToLoad:(id)a6 forMediaSelectionPropertyList:(id)a7;
- (void)NDAVAssetDownloadSessionWrapper:(id)a3 didReceiveMetricEvent:(id)a4;
- (void)NDAVAssetDownloadSessionWrapper:(id)a3 didResolveMediaSelectionPropertyList:(id)a4;
- (void)NDAVAssetDownloadSessionWrapper:(id)a3 didUpdateProgressWithLastBytesWritten:(unint64_t)a4 totalBytesWritten:(unint64_t)a5 totalBytesExpectedToWrite:(unint64_t)a6;
- (void)NDAVAssetDownloadSessionWrapper:(id)a3 willDownloadVariants:(id)a4;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)applicationEndedTransitionalDiscretionaryBackgroundPeriod:(id)a3;
- (void)applicationEnteredForeground:(id)a3;
- (void)applicationNoLongerInForeground:(id)a3;
- (void)applicationWasQuitFromAppSwitcher:(id)a3;
- (void)avAggregateAssetDownloadTaskWithDownloadToken:(unint64_t)a3 serializedMediaSelections:(id)a4 assetTitle:(id)a5 assetArtworkData:(id)a6 options:(id)a7 assetOptions:(id)a8 childDownloadSessionIdentifier:(id)a9 identifier:(unint64_t)a10 uniqueIdentifier:(id)a11 reply:(id)a12;
- (void)avAssetDownloadTaskWithDownloadToken:(unint64_t)a3 URL:(id)a4 destinationURL:(id)a5 temporaryDestinationURL:(id)a6 assetTitle:(id)a7 assetArtworkData:(id)a8 options:(id)a9 assetOptions:(id)a10 identifier:(unint64_t)a11 uniqueIdentifier:(id)a12 taskKind:(unint64_t)a13 enableSPIDelegateCallbacks:(BOOL)a14 reply:(id)a15;
- (void)cancelAVDownloadAndFailTaskWithIdentifier:(unint64_t)a3 withError:(id)a4;
- (void)cancelDelayedCompletionWakeTimer;
- (void)cancelTCPConnectionForTask:(unint64_t)a3 withError:(id)a4;
- (void)cancelTaskWithIdentifier:(unint64_t)a3;
- (void)cancelTaskWithIdentifier:(unint64_t)a3 byProducingResumeData:(id)a4;
- (void)cancelThroughputMonitorForWrapper:(unint64_t)a3;
- (void)clientAcknowledgedTerminalCallbackForTask:(unint64_t)a3;
- (void)fillInByteCountsForTaskInfo:(id)a3 withTaskID:(id)a4;
- (void)setPriority:(int64_t)a3 forTaskWithIdentifier:(unint64_t)a4;
- (void)setupDelayedCompletionWakeTimer;
- (void)setupThroughputMonitorForWrapper:(id)a3 taskInfo:(id)a4 identifier:(unint64_t)a5;
- (void)startAVAssetDownloadSessionWithTaskIdentifier:(unint64_t)a3;
- (void)statusMonitor:(id)a3 callbackForIdentifier:(unint64_t)a4 networkChanged:(BOOL)a5;
- (void)stopAVAssetDownloadSessionWithTaskIdentifier:(unint64_t)a3;
- (void)taskShouldResume:(unint64_t)a3;
- (void)taskShouldSuspend:(unint64_t)a3;
- (void)taskWithIdentifier:(unint64_t)a3 didCompleteWithError:(id)a4;
@end

@implementation NDAVBackgroundSession

- (void)NDAVAssetDownloadSessionWrapper:(id)a3 didCompleteWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 taskIdentifier];
  identifiersToTaskInfo = self->super._identifiersToTaskInfo;
  v10 = [NSNumber numberWithUnsignedInteger:v8];
  v11 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v10];

  [v11 setCountOfBytesReceived:{objc_msgSend(v6, "countOfBytesWritten")}];
  [v11 setCountOfBytesExpectedToReceive:{objc_msgSend(v6, "countOfBytesExpectedToWrite")}];
  v12 = qword_1000EB210;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v11 _loggableDescription];
    *buf = 138543874;
    v19 = v13;
    v20 = 2112;
    v21 = v7;
    v22 = 2048;
    v23 = [v7 code];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ AVAssetDownloadSession did complete with error %@ [%ld]", buf, 0x20u);
  }

  if (sub_1000049F0(v7))
  {
    v14 = [(NDBackgroundSession *)self clientBundleID];
    v15 = [(NDBackgroundSession *)self identifier];
    v16 = [(NDBackgroundSession *)self monitoredAppBundleID];
    v17 = [(NDBackgroundSession *)self secondaryID];
    sub_100002740(3, v14, v15, v16, v17, v11, 0, [v6 countOfBytesWritten], 0, objc_msgSend(v11, "isDiscretionary"), 0, 1, 1, v7);

    [(NDBackgroundSession *)self finalizeTaskCompletionWithSuppressedWake:1];
    [(NDAVBackgroundSession *)self cancelThroughputMonitorForWrapper:v8];
    [(NDAVBackgroundSession *)self cancelTCPConnectionForTask:v8 withError:v7];
    [(NDAVBackgroundSession *)self retryTask:v11 originalError:v7];
  }

  else
  {
    [(NDAVBackgroundSession *)self taskWithIdentifier:v8 didCompleteWithError:v7];
  }
}

- (void)NDAVAssetDownloadSessionWrapper:(id)a3 didResolveMediaSelectionPropertyList:(id)a4
{
  v6 = a4;
  v7 = [a3 taskIdentifier];
  identifiersToTaskInfo = self->super._identifiersToTaskInfo;
  v9 = [NSNumber numberWithUnsignedInteger:v7];
  v10 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v9];

  [v10 setResolvedMediaSelectionPlist:v6];
  v11 = [NSNumber numberWithUnsignedInteger:v7];
  [(NDBackgroundSession *)self queueUpdatesForTask:v11 updateType:14 highPriority:1];

  v12 = [PendingCallback alloc];
  if (v6)
  {
    v15 = v6;
    v13 = [NSArray arrayWithObjects:&v15 count:1];
  }

  else
  {
    v13 = &__NSArray0__struct;
  }

  v14 = [(PendingCallback *)v12 initWithCallbackType:8 taskIdentifier:v7 args:v13];
  if (v6)
  {
  }

  [(NDCallbackQueue *)self->super._callbackQueue addPendingCallback:v14 wakeRequirement:0];
}

- (void)NDAVAssetDownloadSessionWrapper:(id)a3 didFinishDownloadForMediaSelectionPropertyList:(id)a4
{
  v7 = a3;
  v6 = a4;
  -[NSXPCProxyCreating backgroundAVAssetDownloadTask:didFinishDownloadForMediaSelectionPropertyList:](self->super._clientProxy, "backgroundAVAssetDownloadTask:didFinishDownloadForMediaSelectionPropertyList:", [v7 taskIdentifier], v6);
}

- (void)NDAVAssetDownloadSessionWrapper:(id)a3 didLoadTimeRange:(id)a4 totalTimeRangesLoaded:(id)a5 timeRangeExpectedToLoad:(id)a6 forMediaSelectionPropertyList:(id)a7
{
  v16 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  -[NSXPCProxyCreating backgroundAVAssetDownloadTask:didLoadTimeRange:totalTimeRangesLoaded:timeRangeExpectedToLoad:forMediaSelectionPropertyList:](self->super._clientProxy, "backgroundAVAssetDownloadTask:didLoadTimeRange:totalTimeRangesLoaded:timeRangeExpectedToLoad:forMediaSelectionPropertyList:", [v16 taskIdentifier], v12, v13, v14, v15);
}

- (void)NDAVAssetDownloadSessionWrapper:(id)a3 didReceiveMetricEvent:(id)a4
{
  v6 = a4;
  v7 = [a3 taskIdentifier];
  v8 = [PendingCallback alloc];
  if (v6)
  {
    v14 = v6;
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
  v12 = [(PendingCallback *)v8 initWithCallbackType:12 taskIdentifier:v7 args:v9];
  if (!v6)
  {
  }

  [(NDCallbackQueue *)self->super._callbackQueue addPendingCallback:v12 wakeRequirement:0];
}

- (void)NDAVAssetDownloadSessionWrapper:(id)a3 willDownloadVariants:(id)a4
{
  v6 = a4;
  v7 = [a3 taskIdentifier];
  v8 = [PendingCallback alloc];
  if (v6)
  {
    v11 = v6;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  v10 = [(PendingCallback *)v8 initWithCallbackType:11 taskIdentifier:v7 args:v9];
  if (v6)
  {
  }

  [(NDCallbackQueue *)self->super._callbackQueue addPendingCallback:v10 wakeRequirement:0];
}

- (void)NDAVAssetDownloadSessionWrapper:(id)a3 didUpdateProgressWithLastBytesWritten:(unint64_t)a4 totalBytesWritten:(unint64_t)a5 totalBytesExpectedToWrite:(unint64_t)a6
{
  v14 = a3;
  v10 = [v14 taskIdentifier];
  if (a4)
  {
    identifiersToThroughputMonitors = self->_identifiersToThroughputMonitors;
    v12 = [NSNumber numberWithUnsignedInteger:v10];
    v13 = [(NSMutableDictionary *)identifiersToThroughputMonitors objectForKeyedSubscript:v12];

    [v13 wrapperTransferredData:a4];
  }

  [(NSXPCProxyCreating *)self->super._clientProxy backgroundAVAssetDownloadTaskDidUpdateProgress:v10 totalBytesWritten:a5 totalBytesExpectedToWrite:a6];
}

- (void)taskWithIdentifier:(unint64_t)a3 didCompleteWithError:(id)a4
{
  v41 = a4;
  v40 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [(NSMutableDictionary *)self->super._identifiersToTaskInfo objectForKeyedSubscript:?];
  if (v6)
  {
    v39 = [(NDBackgroundSession *)self clientErrorForError:v41];
    v7 = [(NSMutableDictionary *)self->_identifiersToAVWrappers objectForKeyedSubscript:v40];
    v38 = v7;
    if (v7)
    {
      v8 = [v7 countOfBytesWritten];
    }

    else
    {
      v8 = 0;
    }

    v9 = [(NDBackgroundSession *)self clientBundleID];
    v10 = [(NDBackgroundSession *)self identifier];
    v11 = [(NDBackgroundSession *)self monitoredAppBundleID];
    v12 = [(NDBackgroundSession *)self secondaryID];
    sub_100002740(3, v9, v10, v11, v12, v6, 0, v8, 0, [v6 isDiscretionary], 0, 1, 0, v41);

    [v6 setState:3];
    [v6 setError:v39];
    v13 = [NSNumber numberWithUnsignedInteger:a3];
    [(NDBackgroundSession *)self queueUpdatesForTask:v13 updateType:14 highPriority:1];

    [(NSMutableDictionary *)self->_identifiersToAVWrappers removeObjectForKey:v40];
    [v6 setAVURLAsset:0];
    if (sub_100004F90(v41))
    {
      v14 = [(NDApplication *)self->super._clientApplication canBeSuspended];
    }

    else
    {
      v14 = 0;
    }

    v15 = +[NSFileManager defaultManager];
    v16 = [v6 _destinationURLToUse];
    v17 = [v16 path];
    v18 = [v15 fileExistsAtPath:v17];

    if (v18)
    {
      v19 = [PendingCallback alloc];
      v20 = [v6 _destinationURLToUse];
      v49[0] = v20;
      v21 = +[NSNull null];
      v49[1] = v21;
      v22 = [NSArray arrayWithObjects:v49 count:2];
      v23 = [(PendingCallback *)v19 initWithCallbackType:1 taskIdentifier:a3 args:v22];

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
    v28 = [(PendingCallback *)v24 initWithCallbackType:0 taskIdentifier:a3 args:v27];

    if (!v39)
    {
    }

    [(NDCallbackQueue *)self->super._callbackQueue addPendingCallback:v28 wakeRequirement:0];
    v43.receiver = self;
    v43.super_class = NDAVBackgroundSession;
    [(NDBackgroundSession *)&v43 removeOutstandingTaskWithIdentifier:a3];
    [(NDAVBackgroundSession *)self cancelThroughputMonitorForWrapper:a3];
    v42.receiver = self;
    v42.super_class = NDAVBackgroundSession;
    v29 = [(NDBackgroundSession *)&v42 finalizeTaskCompletionWithSuppressedWake:v14];
    v30 = qword_1000EB210;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v6 _loggableDescription];
      v32 = v31;
      if (v29)
      {
        v33 = 89;
      }

      else
      {
        v33 = 78;
      }

      *buf = 138543618;
      v45 = v31;
      v46 = 1024;
      v47 = v33;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ completion woke client: %c", buf, 0x12u);
    }

    if ((v29 & 1) != 0 || [(NDBackgroundSession *)self clientIsActive])
    {
      v34 = qword_1000EB210;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v6 _loggableDescription];
        *buf = 138543362;
        v45 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ completion woke client or client is active - not requesting delayed wake", buf, 0xCu);
      }

      [(NDAVBackgroundSession *)self cancelDelayedCompletionWakeTimer];
    }

    else
    {
      v36 = qword_1000EB210;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v6 _loggableDescription];
        *buf = 138543362;
        v45 = v37;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ completion did not wake client and client is not active - requesting delayed wake", buf, 0xCu);
      }

      [(NDAVBackgroundSession *)self setupDelayedCompletionWakeTimer];
    }

    [(NDAVBackgroundSession *)self cancelTCPConnectionForTask:a3 withError:v41];
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->super._tasksToIdentifiers objectForKeyedSubscript:v7];
  v10 = [v9 unsignedIntegerValue];

  v11 = qword_1000EB210;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v7 _loggableDescription];
    *buf = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ finished downloading to %@", buf, 0x16u);
  }

  v13 = [PendingCallback alloc];
  v14 = +[NSNull null];
  v17[1] = v14;
  v15 = [NSArray arrayWithObjects:v17 count:2];
  v16 = [(PendingCallback *)v13 initWithCallbackType:1 taskIdentifier:v10 args:v15];

  [(NDCallbackQueue *)self->super._callbackQueue addPendingCallback:v16 wakeRequirement:0];
}

- (void)cancelTCPConnectionForTask:(unint64_t)a3 withError:(id)a4
{
  v5 = [NSNumber numberWithUnsignedInteger:a3, a4];
  v6 = [(NSMutableDictionary *)self->super._identifiersToTaskInfo objectForKeyedSubscript:v5];
  v7 = [(NSMutableDictionary *)self->_identifiersToTCPConnections objectForKeyedSubscript:v5];
  if (v7)
  {
    v8 = qword_1000EB210;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v6 _loggableDescription];
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ canceling tcp_connection", &v14, 0xCu);
    }

    tcp_connection_cancel();
    [(NSMutableDictionary *)self->_identifiersToTCPConnections removeObjectForKey:v5];
  }

  v10 = [(NSMutableDictionary *)self->_identifiersToDASActivities objectForKeyedSubscript:v5];
  if (v10)
  {
    v11 = qword_1000EB210;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 _loggableDescription];
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ completing _DASActivity %@", &v14, 0x16u);
    }

    v13 = +[_DASScheduler sharedScheduler];
    [v13 activityCompleted:v10];

    [(NSMutableDictionary *)self->_identifiersToDASActivities removeObjectForKey:v5];
  }
}

- (void)clientAcknowledgedTerminalCallbackForTask:(unint64_t)a3
{
  identifiersToAVWrappers = self->_identifiersToAVWrappers;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)identifiersToAVWrappers objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_identifiersToAVWrappers;
    v9 = [NSNumber numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v8 removeObjectForKey:v9];
  }

  v10.receiver = self;
  v10.super_class = NDAVBackgroundSession;
  [(NDBackgroundSession *)&v10 clientAcknowledgedTerminalCallbackForTask:a3];
}

- (void)stopAVAssetDownloadSessionWithTaskIdentifier:(unint64_t)a3
{
  v8 = [NSURLError errorWithDomain:@"_nsurlsessiondErrorDomain" code:5 userInfo:0];
  identifiersToAVWrappers = self->_identifiersToAVWrappers;
  v6 = [NSNumber numberWithUnsignedInteger:a3];
  v7 = [(NSMutableDictionary *)identifiersToAVWrappers objectForKeyedSubscript:v6];

  [v7 cancelAndDeliverError:v8];
}

- (void)startAVAssetDownloadSessionWithTaskIdentifier:(unint64_t)a3
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)self->super._identifiersToTaskInfo objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6 && [v6 state] != 3 && -[NDAVBackgroundSession ensureAVAssetDownloadSessionWrapperForTaskIdentifier:](self, "ensureAVAssetDownloadSessionWrapperForTaskIdentifier:", a3))
  {
    v8 = [(NSMutableDictionary *)self->_identifiersToAVWrappers objectForKeyedSubscript:v5];
    v9 = qword_1000EB210;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v7 _loggableDescription];
      *buf = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = v8;
      v19 = 2048;
      v20 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ startAVAssetDownloadSessionWithTaskIdentifier wrapper: %@ taskIdentifier: %lu", buf, 0x20u);
    }

    [v8 resume];
    v11 = [(NDBackgroundSession *)self clientBundleID];
    v12 = [(NDBackgroundSession *)self identifier];
    v13 = [(NDBackgroundSession *)self monitoredAppBundleID];
    v14 = [(NDBackgroundSession *)self secondaryID];
    sub_100002740(1, v11, v12, v13, v14, v7, 0, 0, 0, [v7 isDiscretionary], 0, 0, 0, 0);
  }
}

- (BOOL)ensureAVAssetDownloadSessionWrapperForTaskIdentifier:(unint64_t)a3
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
      v11 = [v9 downloadToken];
      [v6 setAVAssetDownloadToken:v11];
      v12 = qword_1000EB210;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v6 _loggableDescription];
        v18 = 138543618;
        v19 = v13;
        v20 = 2048;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ created AVAssetDownloadSession with token %llu", &v18, 0x16u);
      }

      [(NSXPCProxyCreating *)self->super._clientProxy backgroundAVAssetDownloadTask:a3 didReceiveDownloadToken:v11];
      [v10 setTaskIdentifier:a3];
      [(NSMutableDictionary *)self->_identifiersToAVWrappers setObject:v10 forKeyedSubscript:v5];
      v8 = 1;
      v14 = v10;
    }

    else
    {
      v15 = qword_1000EB210;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = [v6 _loggableDescription];
        v18 = 138543362;
        v19 = v17;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@ couldn't create AVAssetDownloadSession; returning an error", &v18, 0xCu);
      }

      v14 = [NSURLError errorWithDomain:NSURLErrorDomain code:-1 userInfo:0];
      [(NDAVBackgroundSession *)self taskWithIdentifier:a3 didCompleteWithError:v14];
      v8 = 0;
    }
  }

  return v8;
}

- (id)newAVAssetDownloadSessionWrapperForTaskInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 AVURLAsset];
  if (v5)
  {

LABEL_4:
    v7 = [NDAVAssetDownloadSessionWrapper alloc];
    v8 = [v4 AVURLAsset];
    v9 = [v4 _destinationURLToUse];
    v10 = [(NDBackgroundSession *)self monitoredAppBundleID];
    clientConfig = self->_clientConfig;
    v12 = [v4 AVURLAsset];
    v13 = [v4 _AVAssetDownloadSessionOptions:v10 config:clientConfig asset:v12];
    v14 = [(NDAVAssetDownloadSessionWrapper *)v7 initWithURLAsset:v8 destinationURL:v9 options:v13 delegate:self queue:self->super._workQueue];
    goto LABEL_5;
  }

  v6 = [v4 downloadConfig];

  if (v6)
  {
    goto LABEL_4;
  }

  v20 = [v4 _URLToUse];

  if (!v20)
  {
    v15 = 0;
    goto LABEL_9;
  }

  v21 = [NDAVAssetDownloadSessionWrapper alloc];
  v8 = [v4 _URLToUse];
  v9 = [v4 _destinationURLToUse];
  v10 = [(NDBackgroundSession *)self monitoredAppBundleID];
  v22 = self->_clientConfig;
  v12 = [v4 AVURLAsset];
  v13 = [v4 _AVAssetDownloadSessionOptions:v10 config:v22 asset:v12];
  v14 = [(NDAVAssetDownloadSessionWrapper *)v21 initWithURL:v8 destinationURL:v9 options:v13 delegate:self queue:self->super._workQueue];
LABEL_5:
  v15 = v14;

  if (v15)
  {
    v16 = [(NDAVAssetDownloadSessionWrapper *)v15 downloadToken];
    v17 = qword_1000EB210;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v4 _loggableDescription];
      v23 = 138543618;
      v24 = v18;
      v25 = 2048;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ created AVAssetDownloadSession with token %llu", &v23, 0x16u);
    }

    -[NSXPCProxyCreating backgroundAVAssetDownloadTask:didReceiveDownloadToken:](self->super._clientProxy, "backgroundAVAssetDownloadTask:didReceiveDownloadToken:", [v4 identifier], v16);
  }

LABEL_9:

  return v15;
}

- (int64_t)adjustedTCPConnectionPriorityForTaskPriority:(int64_t)a3
{
  monitoredApplication = self->super._monitoredApplication;
  if (!monitoredApplication || [(NDApplication *)monitoredApplication isForeground])
  {
    if (a3 > 399)
    {
      if (a3 > 499)
      {
        if (a3 != 500)
        {
          if (a3 == 600)
          {
            return a3;
          }

LABEL_12:
          if (a3 == 650)
          {
            return 650;
          }

          return 300;
        }

        return 500;
      }

      if (a3 == 400)
      {
        return a3;
      }

LABEL_28:
      if (a3 != 450)
      {
        return 300;
      }

      return 450;
    }

    if (a3 > 299)
    {
      if (a3 == 300)
      {
        return a3;
      }

LABEL_25:
      if (a3 != 350)
      {
        return 300;
      }

      return 350;
    }

    goto LABEL_20;
  }

  if (a3 <= 399)
  {
    if (a3 > 299)
    {
      if (a3 == 300)
      {
        return 350;
      }

      goto LABEL_25;
    }

LABEL_20:
    if (a3 == 100)
    {
      return a3;
    }

    if (a3 == 200)
    {
      return 200;
    }

    return 300;
  }

  if (a3 <= 499)
  {
    if (a3 == 400)
    {
      return 450;
    }

    goto LABEL_28;
  }

  if (a3 == 500)
  {
    return 500;
  }

  if (a3 != 600)
  {
    goto LABEL_12;
  }

  return 650;
}

- (void)taskShouldResume:(unint64_t)a3
{
  v5 = [NSNumber numberWithUnsignedInteger:?];
  v6 = [(NSMutableDictionary *)self->super._identifiersToTaskInfo objectForKeyedSubscript:v5];
  if ([v6 taskKind] == 3 || objc_msgSend(v6, "taskKind") == 5)
  {
    identifiersToAVWrappers = self->_identifiersToAVWrappers;
    v8 = [NSNumber numberWithUnsignedInteger:a3];
    v9 = [(NSMutableDictionary *)identifiersToAVWrappers objectForKeyedSubscript:v8];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007FAF0;
    v12[3] = &unk_1000D6538;
    v13 = v6;
    v14 = self;
    v17 = a3;
    v15 = v9;
    v16 = v5;
    v10 = v9;
    [(NDBackgroundSession *)self handleEarliestBeginDateForTaskWithIdentifier:a3 completionHandler:v12];
  }

  if (([v6 hasStarted] & 1) == 0 && (objc_msgSend(v6, "isDiscretionary") & 1) == 0)
  {
    [v6 setStartedUserInitiated:1];
  }

  [v6 setHasStarted:1];
  v11 = [NSNumber numberWithUnsignedInteger:a3];
  [(NDBackgroundSession *)self queueUpdatesForTask:v11 updateType:14 highPriority:1];
}

- (void)taskShouldSuspend:(unint64_t)a3
{
  identifiersToTaskInfo = self->super._identifiersToTaskInfo;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v24 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v6];

  if ([v24 taskKind] == 3 || objc_msgSend(v24, "taskKind") == 5)
  {
    identifiersToAVWrappers = self->_identifiersToAVWrappers;
    v8 = [NSNumber numberWithUnsignedInteger:a3];
    v9 = [(NSMutableDictionary *)identifiersToAVWrappers objectForKeyedSubscript:v8];

    identifiersToThroughputMonitors = self->_identifiersToThroughputMonitors;
    v11 = [NSNumber numberWithUnsignedInteger:a3];
    v12 = [(NSMutableDictionary *)identifiersToThroughputMonitors objectForKeyedSubscript:v11];

    [v9 suspend];
    [v12 wrapperWillSuspend];
    if (([v24 resumedAndWaitingForEarliestBeginDate] & 1) == 0)
    {
      v13 = [(NDBackgroundSession *)self clientBundleID];
      v14 = [(NDBackgroundSession *)self identifier];
      v15 = [(NDBackgroundSession *)self monitoredAppBundleID];
      v16 = [(NDBackgroundSession *)self secondaryID];
      sub_100002740(2, v13, v14, v15, v16, v24, 0, 0, 0, [v24 isDiscretionary], 0, 0, 0, 0);
    }

    [v24 setResumedAndWaitingForEarliestBeginDate:0];
    identifiersToDASActivities = self->_identifiersToDASActivities;
    v18 = [NSNumber numberWithUnsignedInteger:a3];
    v19 = [(NSMutableDictionary *)identifiersToDASActivities objectForKeyedSubscript:v18];

    if (v19)
    {
      v20 = self->_identifiersToDASActivities;
      v21 = [NSNumber numberWithUnsignedInteger:a3];
      [(NSMutableDictionary *)v20 setObject:0 forKeyedSubscript:v21];

      v22 = +[_DASScheduler sharedScheduler];
      [v22 activityCanceled:v19];
    }
  }

  v23 = [NSNumber numberWithUnsignedInteger:a3];
  [(NDBackgroundSession *)self queueUpdatesForTask:v23 updateType:11 highPriority:1];
}

- (BOOL)retryTask:(id)a3 originalError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 _loggableDescription];
    v47 = 138543362;
    v48 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ retrying AVAssetDownloadTask", &v47, 0xCu);
  }

  identifiersToAVWrappers = self->_identifiersToAVWrappers;
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 identifier]);
  v12 = [(NSMutableDictionary *)identifiersToAVWrappers objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = self->_identifiersToAVWrappers;
    v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 identifier]);
    [(NSMutableDictionary *)v13 removeObjectForKey:v14];
  }

  [(NDBackgroundSession *)self updateTaskInfoBasedOnCurrentDiscretionaryStatus:v6];
  [v6 setRetryError:v7];
  if (!v7)
  {
    goto LABEL_20;
  }

  v15 = [v7 domain];
  if ([v15 isEqualToString:AVFoundationErrorDomain])
  {
    v16 = [v7 code] == -11819;

    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = [v6 AVAssetURL];
    v18 = [v6 assetOptionsPlist];
    v19 = [AVURLAsset assetForNSURLSessionWithURL:v17 propertyList:v18];
    [v6 setAVURLAsset:v19];

    v20 = [v6 AVURLAsset];
    [v6 setAVAssetDownloadToken:{objc_msgSend(v20, "downloadToken")}];

    if ([v6 AVAssetDownloadToken])
    {
      assetDownloadTokensToAssets = self->_assetDownloadTokensToAssets;
      v22 = [v6 AVURLAsset];
      v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 AVAssetDownloadToken]);
      [(NSMapTable *)assetDownloadTokensToAssets setObject:v22 forKey:v23];
    }

    v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 identifier]);
    [(NDBackgroundSession *)self queueUpdatesForTask:v24 updateType:14 highPriority:1];

    v15 = qword_1000EB210;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v6 _loggableDescription];
      v26 = [v7 code];
      v27 = [v6 retryCount];
      v28 = [v6 options];
      v47 = 138544386;
      v48 = v25;
      v49 = 2112;
      v50 = *&v7;
      v51 = 2048;
      v52 = v26;
      v53 = 2048;
      v54 = v27;
      v55 = 2112;
      v56 = v28;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ recreated asset after error %@ [%ld] retry count %lu options = %@", &v47, 0x34u);
    }
  }

LABEL_13:
  v29 = [v7 domain];
  v30 = [v29 isEqualToString:AVFoundationErrorDomain];

  if (!v30)
  {
LABEL_20:
    v35 = 0;
    goto LABEL_21;
  }

  v31 = [v7 code];
  if (v31 == -11903 || v31 == -11900)
  {
    goto LABEL_16;
  }

  v45 = [v7 userInfo];
  v34 = [v45 objectForKey:NSUnderlyingErrorKey];

  if ([v34 code] != -12540)
  {
    v35 = 0;
LABEL_19:

    goto LABEL_21;
  }

  v46 = [v34 domain];
  v35 = [v46 isEqualToString:NSOSStatusErrorDomain];

  if (v35)
  {
LABEL_16:
    v32 = qword_1000EB210;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v6 _loggableDescription];
      v47 = 138543362;
      v48 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ removing destination file for AVAssetDownloadTask in order to retry", &v47, 0xCu);
    }

    v34 = [v6 _destinationURLToUse];
    [NDFileUtilities removeItemAtURL:v34];
    v35 = 1;
    goto LABEL_19;
  }

LABEL_21:
  v36 = [v7 domain];
  v37 = [v36 isEqualToString:@"_nsurlsessiondErrorDomain"];

  v38 = 1.0;
  if (((v37 | v35) & 1) == 0)
  {
    v39 = [v6 retryCount];
    [v6 setRetryCount:v39 + 1];
    v38 = exp2(v39);
  }

  v40 = fmin(v38, 1800.0);
  v41 = qword_1000EB210;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = [v6 _loggableDescription];
    v47 = 138543618;
    v48 = v42;
    v49 = 2048;
    v50 = v40;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ will retry after %f seconds", &v47, 0x16u);
  }

  v43 = +[NDStatusMonitor sharedMonitor];
  [v43 performCallbackAfterNetworkChangedEvent:self identifier:objc_msgSend(v6 delay:{"identifier"), v40}];

  return 1;
}

- (void)statusMonitor:(id)a3 callbackForIdentifier:(unint64_t)a4 networkChanged:(BOOL)a5
{
  workQueue = self->super._workQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000819CC;
  v6[3] = &unk_1000D6470;
  v6[4] = self;
  v6[5] = a4;
  dispatch_async(workQueue, v6);
}

- (void)cancelAVDownloadAndFailTaskWithIdentifier:(unint64_t)a3 withError:(id)a4
{
  v6 = a4;
  identifiersToTaskInfo = self->super._identifiersToTaskInfo;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v8];

  [v9 setResumedAndWaitingForEarliestBeginDate:0];
  identifiersToAVWrappers = self->_identifiersToAVWrappers;
  v11 = [NSNumber numberWithUnsignedInteger:a3];
  v12 = [(NSMutableDictionary *)identifiersToAVWrappers objectForKeyedSubscript:v11];

  [v12 cancel];
  [(NDAVBackgroundSession *)self cancelTCPConnectionForTask:a3 withError:v6];
  v13 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081BB0;
  block[3] = &unk_1000D6448;
  v16 = v6;
  v17 = a3;
  block[4] = self;
  v14 = v6;
  dispatch_async(v13, block);
}

- (void)setPriority:(int64_t)a3 forTaskWithIdentifier:(unint64_t)a4
{
  [NDAVBackgroundSession setPriority:"setPriority:forTCPConnectionWithTaskIdentifier:" forTCPConnectionWithTaskIdentifier:?];
  v10.receiver = self;
  v10.super_class = NDAVBackgroundSession;
  [(NDBackgroundSession *)&v10 setPriority:a3 forTaskWithIdentifier:a4];
  identifiersToThroughputMonitors = self->_identifiersToThroughputMonitors;
  v8 = [NSNumber numberWithUnsignedInteger:a4];
  v9 = [(NSMutableDictionary *)identifiersToThroughputMonitors objectForKeyedSubscript:v8];

  [v9 setBasePriority:a3];
}

- (void)cancelTaskWithIdentifier:(unint64_t)a3 byProducingResumeData:(id)a4
{
  v6 = a4;
  [(NDAVBackgroundSession *)self cancelTaskWithIdentifier:a3];
  v6[2](v6, 0);
}

- (void)cancelTaskWithIdentifier:(unint64_t)a3
{
  identifiersToTaskInfo = self->super._identifiersToTaskInfo;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)identifiersToTaskInfo objectForKeyedSubscript:v6];

  v8 = qword_1000EB210;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 _loggableDescription];
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelTaskWithIdentifier", &v12, 0xCu);
  }

  v10 = [v7 _URLToUse];
  v11 = [NSURLError _web_errorWithDomain:NSURLErrorDomain code:-999 URL:v10];

  [(NDAVBackgroundSession *)self cancelAVDownloadAndFailTaskWithIdentifier:a3 withError:v11];
}

- (void)avAggregateAssetDownloadTaskWithDownloadToken:(unint64_t)a3 serializedMediaSelections:(id)a4 assetTitle:(id)a5 assetArtworkData:(id)a6 options:(id)a7 assetOptions:(id)a8 childDownloadSessionIdentifier:(id)a9 identifier:(unint64_t)a10 uniqueIdentifier:(id)a11 reply:(id)a12
{
  v37 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v38 = a8;
  v39 = a9;
  v43 = a11;
  v18 = a12;
  v19 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544898;
    v50 = v43;
    v51 = 2048;
    v52 = a10;
    v53 = 2048;
    v54 = a3;
    v55 = 2112;
    v56 = v37;
    v57 = 2112;
    v58 = v40;
    v59 = 2112;
    v60 = v41;
    v61 = 2112;
    v62 = v42;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Task <%{public}@>.<%lu> avAggregateAssetDownloadTaskWithDownloadToken: %llu, serializedMediaSelections: %@, assetTitle: %@, assetArtworkData: %@, options: %@", buf, 0x48u);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v21 = v20;
  v22 = [__NSCFURLSessionTaskInfo alloc];
  v23 = [(NDBackgroundSession *)self clientBundleID];
  v24 = [(NDBackgroundSession *)self identifier];
  v25 = [v22 initWithAVAggregateAssetDownloadChildDownloadSessionIdentifier:v39 assetTitle:v40 assetArtworkData:v41 options:v42 taskIdentifier:a10 uniqueIdentifier:v43 bundleID:v23 sessionID:v24];

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
  [v25 setAVAssetDownloadToken:a3];
  v47 = AVURLAssetDownloadTokenKey;
  v27 = [NSNumber numberWithUnsignedLongLong:a3];
  v48 = v27;
  v28 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v29 = [AVURLAsset URLAssetWithURL:0 options:v28];

  [v25 setAVURLAsset:v29];
  v30 = [v29 URL];
  [v25 setAVAssetURL:v30];

  [v25 setAssetOptionsPlist:v38];
  v31 = qword_1000EB210;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [v25 _loggableDescription];
    *buf = 138543618;
    v50 = v32;
    v51 = 2112;
    v52 = v29;
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
      v36 = [v25 _loggableDescription];
      *buf = 138543618;
      v50 = v36;
      v51 = 2048;
      v52 = a3;
      _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@ failed to instantiate AVAsset, token %llu", buf, 0x16u);
    }
  }

  v18[2](v18, v29 != 0);
}

- (void)avAssetDownloadTaskWithDownloadToken:(unint64_t)a3 URL:(id)a4 destinationURL:(id)a5 temporaryDestinationURL:(id)a6 assetTitle:(id)a7 assetArtworkData:(id)a8 options:(id)a9 assetOptions:(id)a10 identifier:(unint64_t)a11 uniqueIdentifier:(id)a12 taskKind:(unint64_t)a13 enableSPIDelegateCallbacks:(BOOL)a14 reply:(id)a15
{
  v20 = a4;
  v21 = a5;
  v69 = a6;
  v71 = a7;
  v72 = a8;
  v22 = a3;
  v23 = a9;
  v64 = a10;
  v70 = a12;
  v67 = a15;
  v24 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138545410;
    *&buf[4] = v70;
    *&buf[12] = 2048;
    *&buf[14] = a11;
    *&buf[22] = 2048;
    *&buf[24] = a3;
    v77 = 2112;
    v78 = v20;
    v79 = 2112;
    v80 = v21;
    v81 = 2112;
    v82 = v69;
    v83 = 2112;
    v84 = v71;
    v85 = 2112;
    v86 = v72;
    v87 = 2112;
    v88 = v23;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Task <%{public}@>.<%lu> avAssetDownloadTaskWithDownloadToken: %llu, URL: %@, destinationURL: %@, temporaryDestinationURL: %@, assetTitle: %@, assetArtworkData: %@, options: %@", buf, 0x5Cu);
  }

  v65 = v21;
  v25 = [(NDAVBackgroundSession *)self downloadDirectoryToUse:v21];
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
    if (v23)
    {
      v29 = [v23 mutableCopy];
    }

    else
    {
      v29 = +[NSMutableDictionary dictionary];
    }

    v32 = v29;
    v66 = [v23 objectForKeyedSubscript:@"AVAssetDownloadTaskDownloadConfigurationKey"];
    [v32 setObject:0 forKeyedSubscript:@"AVAssetDownloadTaskDownloadConfigurationKey"];
    v31 = v32;

    v33 = ![(NDAVBackgroundSession *)self doesAVAssetDownloadSessionSupportMultipleDownloads];
    if (a13 != 5)
    {
      LOBYTE(v33) = 1;
    }

    if (v33)
    {
      v38 = [__NSCFURLSessionTaskInfo alloc];
      v35 = [(NDBackgroundSession *)self clientBundleID];
      v36 = [(NDBackgroundSession *)self identifier];
      v37 = [v38 initWithAVAssetDownloadURL:v20 destinationURL:v21 assetTitle:v71 assetArtworkData:v72 options:v31 taskIdentifier:a11 uniqueIdentifier:v70 bundleID:v35 sessionID:v36 downloadConfig:v66];
    }

    else
    {
      v34 = [__NSCFURLSessionTaskInfo alloc];
      v35 = [(NDBackgroundSession *)self clientBundleID];
      v36 = [(NDBackgroundSession *)self identifier];
      LOBYTE(v62) = a14;
      v37 = [v34 initWithAVAggregateDownloadTaskNoChildTaskKindWithURL:v20 destinationURL:v21 assetTitle:v71 assetArtworkData:v72 options:v31 taskIdentifier:a11 uniqueIdentifier:v70 bundleID:v35 sessionID:v36 enableSPIDelegateCallbacks:v62];
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
    [v39 setAVAssetDownloadToken:a3];
    [v39 setInitializedWithAVAsset:a3 != 0];
    if ([v39 initializedWithAVAsset])
    {
      v41 = [(NDAVBackgroundSession *)self avAssetForURL:v20 downloadToken:a3];
      [v39 setAVURLAsset:v41];
    }

    else
    {
      v41 = 0;
    }

    [v39 setTemporaryDestinationURL:v69];
    [v39 setAssetTitle:v71];
    [v39 setAssetArtworkData:v72];
    [v39 setAssetOptionsPlist:v64];
    if (v41 | v66)
    {
      v42 = [(NDAVBackgroundSession *)self destinationURLToUseForTask:v39];
      [v39 setDestinationURL:v42];

      if (v41)
      {
        v43 = [v41 URL];
        [v39 setAVAssetURL:v43];

LABEL_31:
        v46 = [v39 destinationURL];
        v47 = v46 == 0;

        if (!v47)
        {
          v48 = [(NDAVBackgroundSession *)self newAVAssetDownloadSessionWrapperForTaskInfo:v39];
          v49 = v48 != 0;
          v50 = qword_1000EB210;
          v51 = v50;
          if (v48)
          {
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v52 = [v39 _loggableDescription];
              *buf = 138543874;
              *&buf[4] = v52;
              *&buf[12] = 2112;
              *&buf[14] = v48;
              *&buf[22] = 2048;
              *&buf[24] = a3;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ new AVAssetDownloadSession %@ with token %llu", buf, 0x20u);
            }

            identifiersToTaskInfo = self->super._identifiersToTaskInfo;
            v54 = [NSNumber numberWithUnsignedInteger:a11];
            [(NSMutableDictionary *)identifiersToTaskInfo setObject:v39 forKeyedSubscript:v54];

            identifiersToAVWrappers = self->_identifiersToAVWrappers;
            v56 = [NSNumber numberWithUnsignedInteger:a11];
            [(NSMutableDictionary *)identifiersToAVWrappers setObject:v48 forKeyedSubscript:v56];

            [v48 setTaskIdentifier:a11];
            [(NDAVBackgroundSession *)self setupThroughputMonitorForWrapper:v48 taskInfo:v39 identifier:a11];
            v73.receiver = self;
            v73.super_class = NDAVBackgroundSession;
            [(NDBackgroundSession *)&v73 addOutstandingTaskWithIdentifier:a11];
            v57 = [NSNumber numberWithUnsignedInteger:a11];
            [(NDBackgroundSession *)self queueUpdatesForTask:v57 updateType:14 highPriority:1];

            clientProxy = self->super._clientProxy;
            v51 = [v39 destinationURL];
            [(NSXPCProxyCreating *)clientProxy backgroundAVAssetDownloadTask:a11 willDownloadToURL:v51];
          }

          else if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v61 = [v39 _loggableDescription];
            *buf = 138543362;
            *&buf[4] = v61;
            _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "%{public}@ failed to instantiate AVAssetDownloadSession", buf, 0xCu);
          }

LABEL_42:
          v67[2](v67, v49);

          goto LABEL_43;
        }

LABEL_36:
        v48 = qword_1000EB210;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v60 = [v39 _loggableDescription];
          *buf = 138543618;
          *&buf[4] = v60;
          *&buf[12] = 2048;
          *&buf[14] = v22;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "%{public}@ failed to instantiate AVAsset, token %llu", buf, 0x16u);
        }

        v49 = 0;
        goto LABEL_42;
      }

      if (v66)
      {
        v44 = [v66 _asset];
        v45 = [v44 URL];
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
    v59 = [(NDBackgroundSession *)self clientBundleID];
    *buf = 138544130;
    *&buf[4] = v70;
    *&buf[12] = 2048;
    *&buf[14] = a11;
    *&buf[22] = 2112;
    *&buf[24] = v59;
    v77 = 2112;
    v78 = 0;
    _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Task <%{public}@>.<%lu> for client %@ does not have write access to destination directory %@", buf, 0x2Au);
  }

  v67[2](v67, 0);
  v31 = v23;
LABEL_43:
}

- (id)avAssetForURL:(id)a3 downloadToken:(unint64_t)a4
{
  v6 = a3;
  if (a4)
  {
    assetDownloadTokensToAssets = self->_assetDownloadTokensToAssets;
    v8 = [NSNumber numberWithUnsignedLongLong:a4];
    v9 = [(NSMapTable *)assetDownloadTokensToAssets objectForKey:v8];

    if (!v9)
    {
      if (v6)
      {
        v9 = [AVURLAsset URLAssetWithURL:v6 options:0];
      }

      else
      {
        v15 = AVURLAssetDownloadTokenKey;
        v10 = [NSNumber numberWithUnsignedLongLong:a4];
        v16 = v10;
        v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        v9 = [AVURLAsset URLAssetWithURL:0 options:v11];
      }

      v12 = self->_assetDownloadTokensToAssets;
      v13 = [NSNumber numberWithUnsignedLongLong:a4];
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

- (void)applicationEndedTransitionalDiscretionaryBackgroundPeriod:(id)a3
{
  v4 = a3;
  workQueue = self->super._workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100083348;
  v7[3] = &unk_1000D6420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (void)applicationWasQuitFromAppSwitcher:(id)a3
{
  v4 = a3;
  workQueue = self->super._workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000836E0;
  v7[3] = &unk_1000D6420;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (void)applicationEnteredForeground:(id)a3
{
  v4 = a3;
  workQueue = self->super._workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100083A6C;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (void)applicationNoLongerInForeground:(id)a3
{
  v4 = a3;
  workQueue = self->super._workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100083DAC;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (id)destinationURLToUseForTask:(id)a3
{
  v4 = a3;
  v5 = [v4 destinationURL];
  if (!v5)
  {
    v6 = [v4 AVURLAsset];
    if (v6)
    {

      goto LABEL_5;
    }

    v7 = [v4 downloadConfig];

    if (v7)
    {
LABEL_5:
      v8 = [v4 AVURLAsset];
      v9 = [v8 URL];
      v10 = [v9 isFileURL];

      if (v10)
      {
        v11 = [v4 AVURLAsset];
        v5 = [v11 URL];
LABEL_21:

        goto LABEL_22;
      }

      if ([v4 AVAssetDownloadToken])
      {
        v12 = [v4 AVAssetDownloadToken];
        if (!v12)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = [v4 AVURLAsset];
        v12 = [v13 downloadToken];

        if (!v12)
        {
LABEL_11:
          v12 = arc4random();
        }
      }

      v14 = +[NSMutableCharacterSet URLPathAllowedCharacterSet];
      v15 = [v14 mutableCopy];

      v30 = v15;
      [v15 removeCharactersInString:@"/"];
      v16 = [v4 assetTitle];
      v17 = [v16 stringByAddingPercentEncodingWithAllowedCharacters:v15];

      if ([v17 length] >= 0xE8)
      {
        v18 = [v17 substringWithRange:{0, 231}];

        v17 = v18;
      }

      v19 = [v4 AVURLAsset];
      v20 = [NSString stringWithFormat:@"%llu", v12];
      v31 = destinationURLFragment();

      if (v17)
      {
        v21 = @"_";
      }

      else
      {
        v21 = &stru_1000D7618;
      }

      v22 = [v4 AVURLAsset];
      v23 = [v22 URL];
      v24 = [v23 pathExtension];
      v25 = [objc_opt_class() performSelector:"_figFilePathExtensions"];
      if ([v25 containsObject:v24])
      {
        v26 = v24;
      }

      else
      {
        v26 = @"movpkg";
      }

      v27 = [NSString stringWithFormat:@"%@%@%@.%@", v17, v21, v31, v26];

      v28 = [(NDAVBackgroundSession *)self avAssetDownloadsDirectory];
      v5 = [v28 URLByAppendingPathComponent:v27 isDirectory:0];

      v11 = v30;
      goto LABEL_21;
    }

    v5 = 0;
  }

LABEL_22:

  return v5;
}

- (id)downloadDirectoryToUse:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 URLByDeletingLastPathComponent];
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
    v11 = [(NDBackgroundSession *)self setupDownloadDirectory];
    goto LABEL_21;
  }

  v30 = 1;
  v3 = [(NDBackgroundSession *)self clientBundleID];
  [v3 UTF8String];
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

  v6 = [(NDBackgroundSession *)self clientBundleID];
  v7 = v6;
  [v6 UTF8String];
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
    v11 = 0;
    goto LABEL_21;
  }

  v9 = [NSURL fileURLWithFileSystemRepresentation:v4 isDirectory:1 relativeToURL:0];
  v10 = [NDFileUtilities noFollowRealURL:v9];

  v11 = [NSURL fileURLWithFileSystemRepresentation:v8 isDirectory:1 relativeToURL:v10];
  free(v4);
  free(v8);

  if (!v11)
  {
    goto LABEL_21;
  }

  v29 = 0;
  v12 = +[NSFileManager defaultManager];
  v13 = [v11 path];
  v14 = [v12 fileExistsAtPath:v13 isDirectory:&v29];

  if (!v14)
  {
    v17 = 0;
LABEL_16:
    v18 = +[NSFileManager defaultManager];
    v27 = v17;
    v19 = [v18 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v27];
    v15 = v27;

    if ((v19 & 1) == 0)
    {
      v20 = qword_1000EB210;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v25 = [v15 code];
        *buf = 138412546;
        v32 = v15;
        v33 = 2048;
        v34 = v25;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error creating asset downloads directory: %@ [%ld]", buf, 0x16u);
      }
    }

    goto LABEL_20;
  }

  if ((v29 & 1) == 0)
  {
    v22 = +[NSFileManager defaultManager];
    v28 = 0;
    v23 = [v22 removeItemAtURL:v11 error:&v28];
    v17 = v28;

    if ((v23 & 1) == 0)
    {
      v24 = qword_1000EB210;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v26 = [v17 code];
        *buf = 138412546;
        v32 = v17;
        v33 = 2048;
        v34 = v26;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error removing file at location of asset downloads directory: %@ [%ld]", buf, 0x16u);
      }
    }

    goto LABEL_16;
  }

  v15 = 0;
LABEL_20:

LABEL_21:

  return v11;
}

- (void)fillInByteCountsForTaskInfo:(id)a3 withTaskID:(id)a4
{
  v7 = a3;
  v6 = [(NSMutableDictionary *)self->_identifiersToAVWrappers objectForKeyedSubscript:a4];
  [v7 setCountOfBytesSent:0];
  [v7 setCountOfBytesReceived:{objc_msgSend(v6, "countOfBytesWritten")}];
  [v7 setCountOfBytesExpectedToSend:0];
  [v7 setCountOfBytesExpectedToReceive:{objc_msgSend(v6, "countOfBytesExpectedToWrite")}];
}

- (id)restoreTasksFromArchivedInfo:(id)a3
{
  v4 = a3;
  +[NSMutableArray array];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100084B00;
  v9[3] = &unk_1000D63F8;
  v5 = v9[4] = self;
  v10 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

- (id)restoreTasksFromSqliteDB:(id)a3
{
  v48 = a3;
  tasksDB = self->super.tasksDB;
  if (tasksDB)
  {
    v5 = [(NDBackgroundSession *)self identifier];
    v6 = [(NDBackgroundSession *)self uuid];
    tasksDB = [tasksDB _getAllTasksFromDBForSession:v5 sessionUUID:v6];
  }

  v49 = +[NSMutableArray array];
  v53 = self;
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
        v12 = [v10 _destinationURLToUse];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 URLByDeletingLastPathComponent];
          v54 = 0;
          v15 = [v14 checkResourceIsReachableAndReturnError:&v54];
          v16 = v54;

          if ((v15 & 1) == 0)
          {
            v17 = qword_1000EB210;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = [v10 _loggableDescription];
              *buf = 138543874;
              v62 = v18;
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
            v21 = [v10 identifier];
            v22 = [v10 error];
            v60[0] = v22;
            v23 = +[NSNull null];
            v60[1] = v23;
            v60[2] = &__NSDictionary0__struct;
            v24 = [NSArray arrayWithObjects:v60 count:3];
            v25 = [(PendingCallback *)v20 initWithCallbackType:0 taskIdentifier:v21 args:v24];

            [(NDCallbackQueue *)v53->super._callbackQueue addPendingCallback:v25 wakeRequirement:0];
          }
        }

        if ([v10 initializedWithAVAsset] && objc_msgSend(v10, "state") <= 2)
        {
          v26 = [v10 AVAssetURL];
          v27 = [v10 assetOptionsPlist];
          v28 = [AVURLAsset assetForNSURLSessionWithURL:v26 propertyList:v27];

          [v10 setAVURLAsset:v28];
          [v10 setAVAssetDownloadToken:{objc_msgSend(v28, "downloadToken")}];
          if (!v28 || ([v28 URL], v29 = objc_claimAutoreleasedReturnValue(), v30 = v29 == 0, v29, v30))
          {
            v34 = qword_1000EB210;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v44 = [v10 _loggableDescription];
              v45 = [v10 AVAssetDownloadToken];
              *buf = v47;
              v62 = v44;
              v63 = 2048;
              v64 = v45;
              _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%{public}@ failed to re-instantiate AVURLAsset with token %llu", buf, 0x16u);
            }

            [v10 setState:3];
            v35 = [NSURLError _web_errorWithDomain:NSURLErrorDomain code:-1 failingURL:0];
            [v10 setError:v35];

            v36 = [PendingCallback alloc];
            v37 = [v10 identifier];
            v38 = [v10 error];
            v59[0] = v38;
            v39 = +[NSNull null];
            v59[1] = v39;
            v59[2] = &__NSDictionary0__struct;
            v40 = [NSArray arrayWithObjects:v59 count:3];
            v31 = [(PendingCallback *)v36 initWithCallbackType:0 taskIdentifier:v37 args:v40];

            [(NDCallbackQueue *)v53->super._callbackQueue addPendingCallback:v31 wakeRequirement:0];
          }

          else
          {
            v31 = qword_1000EB210;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = [v10 _loggableDescription];
              v33 = [v10 AVAssetDownloadToken];
              *buf = v47;
              v62 = v32;
              v63 = 2048;
              v64 = v33;
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
              v42 = [v10 _loggableDescription];
              *buf = 138543362;
              v62 = v42;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ adding to outstanding tasks list", buf, 0xCu);
            }

            -[NDBackgroundSession addOutstandingTaskWithIdentifier:](v53, "addOutstandingTaskWithIdentifier:", [v11 unsignedIntegerValue]);
            [v49 addObject:v10];
          }

          else
          {
            v43 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 identifier]);
            [v48 addObject:v43];
          }
        }

        [(NSMutableDictionary *)v53->super._identifiersToTaskInfo setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v7);
  }

  return v49;
}

- (void)cancelThroughputMonitorForWrapper:(unint64_t)a3
{
  identifiersToThroughputMonitors = self->_identifiersToThroughputMonitors;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v9 = [(NSMutableDictionary *)identifiersToThroughputMonitors objectForKeyedSubscript:v6];

  [v9 cancel];
  v7 = self->_identifiersToThroughputMonitors;
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)v7 removeObjectForKey:v8];
}

- (void)setupThroughputMonitorForWrapper:(id)a3 taskInfo:(id)a4 identifier:(unint64_t)a5
{
  v14 = a3;
  v8 = a4;
  v9 = [v8 isDiscretionary];
  if (self->super._discretionary)
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  if (self->super._infersDiscretionary || [(NDApplication *)self->super._clientApplication canBeSuspended])
  {
    v10 |= 4uLL;
  }

  v11 = -[NDAVThroughputMonitor initWithWrapper:monitoredApplication:priority:options:queue:]([NDAVThroughputMonitor alloc], "initWithWrapper:monitoredApplication:priority:options:queue:", v14, self->super._monitoredApplication, [v8 basePriority], v10, self->super._workQueue);
  identifiersToThroughputMonitors = self->_identifiersToThroughputMonitors;
  v13 = [NSNumber numberWithUnsignedInteger:a5];
  [(NSMutableDictionary *)identifiersToThroughputMonitors setObject:v11 forKeyedSubscript:v13];
}

- (void)cancelDelayedCompletionWakeTimer
{
  if (self->_delayedWakeTimer)
  {
    v3 = qword_1000EB210;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(NDBackgroundSession *)self clientBundleID];
      v5 = [(NDBackgroundSession *)self identifier];
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
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
        v9 = [(NDBackgroundSession *)self clientBundleID];
        v10 = [(NDBackgroundSession *)self identifier];
        *buf = 138412546;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Scheduled delayed wake for session <%@>.<%@>", buf, 0x16u);
      }
    }
  }
}

@end