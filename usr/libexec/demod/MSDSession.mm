@interface MSDSession
- (id)getServerErrorMessage:(id)message withDefault:(id)default;
- (id)parseResponseHeader:(id)header statusCode:(int64_t)code;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)dispatchSessionTask:(id)task;
- (void)dispatchSessionTask:(id)task withError:(id *)error;
- (void)handleDownloadAborted:(id)aborted;
- (void)handleDownloadPaused:(id)paused;
- (void)invalidate;
- (void)launchTaskWithInfo:(id)info;
- (void)logDownloadTaskLaunch:(id)launch;
- (void)retrySessionTask:(id)task;
@end

@implementation MSDSession

- (void)invalidate
{
  session = [(MSDSession *)self session];
  [session invalidateAndCancel];
}

- (void)launchTaskWithInfo:(id)info
{
  infoCopy = info;
  v5 = [[MSDSessionTask alloc] initFromTaskInfo:infoCopy];

  demuxQueue = [(MSDSession *)self demuxQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006FFE4;
  v8[3] = &unk_10016A258;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(demuxQueue, v8);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  taskManager = [(MSDSession *)self taskManager];
  v13 = [taskManager getSessionTask:taskCopy];

  if (!v13)
  {
    v32 = sub_100063A54();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1000D9694();
    }

    v14 = 0;
    v18 = 0;
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1000D9628();
    v25 = 0;
    v18 = 0;
    v14 = 0;
LABEL_20:
    if ([v13 state] != 3)
    {
      [v13 setState:2];
    }

    if (v25)
    {
      v29 = +[NSFileManager defaultManager];
      info = [v13 info];
      savePath = [info savePath];
      [v29 removeItemAtPath:savePath error:0];

      [v13 resetFileHandle];
    }

    v32 = sub_100063A54();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      statusCode = [v14 statusCode];
      state = [v13 state];
      v35 = 134218240;
      v36 = statusCode;
      v37 = 1024;
      LODWORD(v38) = state == 2;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Cancelling download task on status code: %ld; should retry=%d", &v35, 0x12u);
    }

LABEL_26:

    handlerCopy[2](handlerCopy, 0);
    goto LABEL_27;
  }

  v14 = responseCopy;
  info2 = [v13 info];
  savePath2 = [info2 savePath];

  if (savePath2)
  {
    if ([v14 statusCode] != 200 && objc_msgSend(v14, "statusCode") != 206)
    {
      v25 = [v14 statusCode] == 416;
      if ([v14 statusCode] == 403 || objc_msgSend(v14, "statusCode") == 404)
      {
        [v13 setState:3];
      }

      v18 = 0;
      goto LABEL_20;
    }

    allHeaderFields = [v14 allHeaderFields];
    v18 = [allHeaderFields objectForKey:@"Content-Range"];

    if (!v18)
    {
      v26 = sub_100063A54();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        info3 = [v13 info];
        savePath3 = [info3 savePath];
        v35 = 138543618;
        v36 = savePath3;
        v37 = 2114;
        v38 = @"Content-Range";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "HTTP response header for %{public}@ does not contain key %{public}@; cannot proceed with download", &v35, 0x16u);
      }

      v18 = 0;
      v25 = 1;
      goto LABEL_20;
    }

    contentRange = [v13 contentRange];
    [contentRange processServerRangeResponse:v18];

    contentRange2 = [v13 contentRange];
    isDownloadComplete = [contentRange2 isDownloadComplete];

    if (isDownloadComplete)
    {
      v22 = sub_100063A54();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        info4 = [v13 info];
        savePath4 = [info4 savePath];
        v35 = 138543362;
        v36 = savePath4;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Download for %{public}@ is already complete, no need to continue with download task", &v35, 0xCu);
      }

      v25 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v18 = 0;
  }

  handlerCopy[2](handlerCopy, 1);
LABEL_27:
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  sessionCopy = session;
  taskCopy = task;
  dataCopy = data;
  v11 = objc_autoreleasePoolPush();
  response = [taskCopy response];
  statusCode = [response statusCode];
  taskManager = [(MSDSession *)self taskManager];
  v15 = [taskManager getSessionTask:taskCopy];

  if (!v15)
  {
    v20 = sub_100063A54();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000D9694();
    }

    outData = 0;
    goto LABEL_15;
  }

  info = [v15 info];
  savePath = [info savePath];
  if (!savePath)
  {

LABEL_8:
    outData = [v15 outData];
    [outData appendData:dataCopy];
    goto LABEL_9;
  }

  if (statusCode != 206 && statusCode != 200)
  {
    goto LABEL_8;
  }

  fileHandle = [v15 fileHandle];
  v21 = 0;
  [fileHandle writeData:dataCopy error:&v21];
  outData = v21;

  if (outData)
  {
    [v15 setError:outData];
    v20 = sub_100063A54();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000D96FC(v15, outData, v20);
    }

LABEL_15:

    [taskCopy cancel];
    goto LABEL_9;
  }

  outData = [v15 contentRange];
  [outData appendDownloadedFileSize:{objc_msgSend(dataCopy, "length")}];
LABEL_9:

  objc_autoreleasePoolPop(v11);
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  taskManager = [(MSDSession *)self taskManager];
  v13 = [taskManager getSessionTask:taskCopy];

  if (v13)
  {
    protectionSpace = [challengeCopy protectionSpace];
    authenticationMethod = [protectionSpace authenticationMethod];

    v16 = sub_100063A54();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D97B8(v13);
    }

    if ([authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust])
    {
      [(MSDSession *)self authenticate:challengeCopy forTask:v13 completion:handlerCopy];
    }

    else
    {
      v18 = sub_100063A54();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000D985C();
      }

      handlerCopy[2](handlerCopy, 2, 0);
    }
  }

  else
  {
    v17 = sub_100063A54();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = taskCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Untracked task: %{public}@; canceling...", &v19, 0xCu);
    }

    handlerCopy[2](handlerCopy, 2, 0);
  }
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  taskCopy = task;
  requestCopy = request;
  handlerCopy = handler;
  taskManager = [(MSDSession *)self taskManager];
  v14 = [taskManager getSessionTask:taskCopy];

  if (v14)
  {
    [v14 setRedirected:1];
    v15 = [requestCopy URL];
    v16 = [NSMutableURLRequest requestWithURL:v15 cachePolicy:1 timeoutInterval:30.0];

    info = [v14 info];
    savePath = [info savePath];

    if (savePath)
    {
      contentRange = [v14 contentRange];
      getRangeHeaderForDownload = [contentRange getRangeHeaderForDownload];

      if (getRangeHeaderForDownload)
      {
        [v16 setValue:getRangeHeaderForDownload forHTTPHeaderField:@"Range"];
      }
    }

    handlerCopy[2](handlerCopy, v16);
  }

  else
  {
    v21 = sub_100063A54();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543362;
      v23 = taskCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Untracked task: %{public}@; canceling...", &v22, 0xCu);
    }

    [taskCopy cancel];
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  taskManager = [(MSDSession *)self taskManager];
  v9 = [taskManager getSessionTask:taskCopy];

  response = [taskCopy response];
  statusCode = [response statusCode];
  v12 = objc_alloc_init(NSMutableDictionary);
  if (!v9)
  {
    v30 = sub_100063A54();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v116 = taskCopy;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Untracked task: %{public}@ done.", buf, 0xCu);
    }

    v27 = 0;
    goto LABEL_77;
  }

  if (!-[MSDSession getIsFileDownload](self, "getIsFileDownload") || [v9 state] != 1)
  {
    if ([errorCopy code] == -999 && objc_msgSend(v9, "state") != 3)
    {
      v103 = response;
      v106 = v12;
      info = [v9 info];
      savePath = [info savePath];
      if (savePath)
      {
        v34 = savePath;
        [v9 contentRange];
        v36 = v35 = statusCode;
        isDownloadComplete = [v36 isDownloadComplete];

        statusCode = v35;
        if (isDownloadComplete)
        {
          v38 = sub_100063A54();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            info2 = [v9 info];
            v40 = [info2 description];
            info3 = [v9 info];
            savePath2 = [info3 savePath];
            *buf = 138543618;
            v116 = v40;
            v117 = 2114;
            v118 = savePath2;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "SessionTask %{public}@ for file %{public}@ is cancelled but it is already complete, ignoring cancellation", buf, 0x16u);

            statusCode = v35;
          }

          v27 = 0;
          v28 = 0;
          v29 = 0;
          response = v103;
          v12 = v106;
          goto LABEL_61;
        }
      }

      else
      {
      }

      error = [v9 error];
      if (error)
      {
        error2 = [v9 error];
      }

      else
      {
        error2 = errorCopy;
      }

      v27 = error2;
      response = v103;

      v28 = 0;
      v29 = [v9 state] == 2;
      goto LABEL_46;
    }

    if (!response)
    {
      if (errorCopy)
      {
        v107 = taskCopy;
        v31 = v12;
        v27 = errorCopy;
        v29 = 1;
LABEL_58:
        v61 = sub_100063A54();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          [v9 info];
          v62 = v104 = response;
          [v62 description];
          v64 = v63 = statusCode;
          localizedDescription = [v27 localizedDescription];
          code = [v27 code];
          *buf = 138543874;
          v116 = v64;
          v117 = 2114;
          v118 = localizedDescription;
          v119 = 2048;
          v120 = code;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Session task %{public}@ did fail with error: %{public}@(0x%tx)", buf, 0x20u);

          response = v104;
          statusCode = v63;
        }

        v28 = 0;
        v12 = v31;
        taskCopy = v107;
        goto LABEL_61;
      }

      v43 = 0;
      v53 = sub_100063A54();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        sub_1000D98C4(v53);
      }

      v51 = [(MSDSession *)self getServerErrorMessage:v9 withDefault:@"Unexpected server response."];
      v110 = 0;
      sub_1000C1390(&v110, 3727744512, v51);
      v52 = v110;
LABEL_56:
      v27 = v52;

      v29 = 1;
      if (v27)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    }

    if (statusCode <= 205)
    {
      v29 = 0;
      v27 = 0;
      v28 = 1;
      if ((statusCode - 200) < 3 || statusCode == 204)
      {
        goto LABEL_61;
      }

      goto LABEL_53;
    }

    if (statusCode > 403)
    {
      if (statusCode != 404)
      {
        if (statusCode == 408)
        {
          v43 = response;
          v51 = [(MSDSession *)self getServerErrorMessage:v9 withDefault:@"Connection with server is broken."];
          v112 = 0;
          sub_1000C1390(&v112, 3727740931, v51);
          v52 = v112;
          goto LABEL_56;
        }

        goto LABEL_53;
      }

      v43 = response;
      v44 = [(MSDSession *)self getServerErrorMessage:v9 withDefault:@"Requested asset not found"];
      v113 = 0;
      sub_1000C1390(&v113, 3727740934, v44);
      v45 = v113;
      goto LABEL_51;
    }

    if (statusCode != 206)
    {
      if (statusCode != 403)
      {
LABEL_53:
        v43 = response;
        v60 = sub_100063A54();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v116 = statusCode;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Unrecognized status code %ld; will attempt to retry task", buf, 0xCu);
        }

        v51 = [(MSDSession *)self getServerErrorMessage:v9 withDefault:@"Unexpected server response."];
        v111 = 0;
        sub_1000C1390(&v111, 3727744512, v51);
        v52 = v111;
        goto LABEL_56;
      }

      v43 = response;
      v44 = [(MSDSession *)self getServerErrorMessage:v9 withDefault:@"Cannot authenticate with server."];
      v114 = 0;
      sub_1000C1390(&v114, 3727740933, v44);
      v45 = v114;
LABEL_51:
      v27 = v45;

      v29 = 0;
      if (v27)
      {
LABEL_57:
        v107 = taskCopy;
        v31 = v12;
        response = v43;
        goto LABEL_58;
      }

LABEL_52:
      v28 = 0;
      response = v43;
      goto LABEL_61;
    }

    v43 = response;
    info4 = [v9 info];
    savePath3 = [info4 savePath];

    if (savePath3)
    {
      contentRange = [v9 contentRange];
      isDownloadComplete2 = [contentRange isDownloadComplete];

      if (isDownloadComplete2)
      {
        v29 = 0;
        goto LABEL_83;
      }

      contentRange2 = [v9 contentRange];
      didProgress = [contentRange2 didProgress];

      if (didProgress)
      {
        v96 = sub_100063A54();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          info5 = [v9 info];
          [info5 savePath];
          v98 = taskCopy;
          v100 = v99 = v12;
          *buf = 138543362;
          v116 = v100;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Allowing partial download of %{public}@ to progress without retry penalty", buf, 0xCu);

          v12 = v99;
          taskCopy = v98;
        }

        [v9 setCurrentRetry:{objc_msgSend(v9, "currentRetry") - 1}];
        contentRange3 = [v9 contentRange];
        [contentRange3 recordDownloadedBytes];
      }
    }

    v29 = 1;
LABEL_83:
    v27 = errorCopy;
    if (v27)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  v106 = v12;
  contentRange4 = [v9 contentRange];
  isDownloadComplete3 = [contentRange4 isDownloadComplete];

  v15 = sub_100063A54();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if ((isDownloadComplete3 & 1) == 0)
  {
    if (v16)
    {
      info6 = [v9 info];
      [info6 description];
      v48 = v47 = response;
      info7 = [v9 info];
      savePath4 = [info7 savePath];
      *buf = 138543618;
      v116 = v48;
      v117 = 2114;
      v118 = savePath4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SessionTask %{public}@ with savePath: %{public}@ paused, waiting to be resumed", buf, 0x16u);

      response = v47;
    }

    v27 = 0;
    v12 = v106;
    goto LABEL_77;
  }

  if (v16)
  {
    info8 = [v9 info];
    [info8 savePath];
    v19 = v18 = statusCode;
    *buf = 138543362;
    v116 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not pausing task for %{public}@ because download is already complete", buf, 0xCu);

    statusCode = v18;
  }

  v20 = sub_100063BEC();
  signpostId = [(MSDSession *)self signpostId];
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = signpostId;
    if (os_signpost_enabled(v20))
    {
      info9 = [v9 info];
      v24 = [info9 description];
      [v9 info];
      v25 = v102 = statusCode;
      savePath5 = [v25 savePath];
      *buf = 138412546;
      v116 = v24;
      v117 = 2112;
      v118 = savePath5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_EVENT, v22, "Resume Session Task", "Not Pausing Completed Session Task: %{xcode:string}@ with save path: %{xcode:string}@", buf, 0x16u);

      statusCode = v102;
    }
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
LABEL_46:
  v12 = v106;
LABEL_61:
  taskManager2 = [(MSDSession *)self taskManager];
  [taskManager2 removeSessionTask:v9];

  [(MSDSession *)self collectTimingDataForTask:v9 withNetworkError:errorCopy];
  if (v29)
  {
    v105 = statusCode;
    v68 = taskCopy;
    v69 = v12;
    v70 = response;
    currentRetry = [v9 currentRetry];
    info10 = [v9 info];
    maxRetry = [info10 maxRetry];

    if (currentRetry <= maxRetry)
    {
      [(MSDSession *)self retrySessionTask:v9];
      response = v70;
      v12 = v69;
      taskCopy = v68;
      goto LABEL_77;
    }

    v74 = sub_100063A54();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      info11 = [v9 info];
      v75 = [info11 description];
      info12 = [v9 info];
      maxRetry2 = [info12 maxRetry];
      *buf = 138543618;
      v116 = v75;
      v117 = 2048;
      v118 = maxRetry2;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%{public}@ exceeded maximum retry %ld", buf, 0x16u);
    }

    response = v70;
    v12 = v69;
    taskCopy = v68;
    statusCode = v105;
  }

  v78 = [NSNumber numberWithInteger:statusCode];
  [v12 setObject:v78 forKey:@"statusCode"];

  if (v28)
  {
    allHeaderFields = [response allHeaderFields];
    v80 = [(MSDSession *)self parseResponseHeader:allHeaderFields statusCode:statusCode];
    [v12 addEntriesFromDictionary:v80];
  }

  outData = [v9 outData];

  if (outData)
  {
    outData2 = [v9 outData];
    [v12 setObject:outData2 forKey:@"data"];
  }

  info13 = [v9 info];
  savePath6 = [info13 savePath];

  if (savePath6)
  {
    contentRange5 = [v9 contentRange];
    downloadedBytes = [contentRange5 downloadedBytes];

    v87 = [NSNumber numberWithInteger:downloadedBytes];
    [v12 setObject:v87 forKey:@"fileSize"];
  }

  fileHandle = [v9 fileHandle];

  if (fileHandle)
  {
    fileHandle2 = [v9 fileHandle];
    [fileHandle2 closeFile];
  }

  info14 = [v9 info];
  handler = [info14 handler];

  if (handler)
  {
    info15 = [v9 info];
    handler2 = [info15 handler];
    (handler2)[2](handler2, v27, v12);
  }

LABEL_77:
}

- (void)handleDownloadPaused:(id)paused
{
  userInfo = [paused userInfo];
  v5 = [userInfo objectForKey:@"kMSDDownloadPausedKey"];
  bOOLValue = [v5 BOOLValue];

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy4 = self;
    v67 = 1024;
    LODWORD(v68) = bOOLValue;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Session received background download paused notification; pause=%d", buf, 0x12u);
  }

  if (bOOLValue == [(MSDSession *)self isDownloadPaused])
  {
    v30 = sub_100063A54();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy4 = self;
      v67 = 1024;
      LODWORD(v68) = bOOLValue;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: downloadPaused = %d, ignoring notification...", buf, 0x12u);
    }

    v12 = v30;
  }

  else
  {
    [(MSDSession *)self setIsDownloadPaused:bOOLValue];
    taskManager = [(MSDSession *)self taskManager];
    v9 = taskManager;
    if (bOOLValue)
    {
      v10 = [taskManager getTaskInState:0];

      v11 = sub_100063A54();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_1000D9990(self, v10);
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v12 = v10;
      obj = [v12 countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (obj)
      {
        v53 = *v61;
        do
        {
          for (i = 0; i != obj; i = i + 1)
          {
            if (*v61 != v53)
            {
              objc_enumerationMutation(v12);
            }

            v14 = *(*(&v60 + 1) + 8 * i);
            v15 = sub_100063A54();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              info = [v14 info];
              v17 = [info description];
              *buf = 138543618;
              selfCopy4 = self;
              v67 = 2114;
              v68 = v17;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Canceling task %{public}@", buf, 0x16u);
            }

            v18 = sub_100063BEC();
            signpostId = [(MSDSession *)self signpostId];
            if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v20 = signpostId;
              if (os_signpost_enabled(v18))
              {
                info2 = [v14 info];
                v22 = [info2 description];
                info3 = [v14 info];
                savePath = [info3 savePath];
                *buf = 138412546;
                selfCopy4 = v22;
                v67 = 2112;
                v68 = savePath;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_EVENT, v20, "Pause Session Task", "Pause Session Task: %{xcode:string}@ with save path: %{xcode:string}@", buf, 0x16u);
              }
            }

            [v14 setState:1];
            task = [v14 task];
            [task cancel];

            if (os_variant_has_internal_content())
            {
              info4 = [v14 info];
              savePath2 = [info4 savePath];
              contentRange = [v14 contentRange];
              [contentRange setFileDownloading:savePath2];

              contentRange2 = [v14 contentRange];
              [contentRange2 pushToTestLog:0];
            }
          }

          obj = [v12 countByEnumeratingWithState:&v60 objects:v69 count:16];
        }

        while (obj);
      }
    }

    else
    {
      v31 = [taskManager getTaskInState:1];

      v32 = sub_100063A54();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        sub_1000D9908(self, v31);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      obja = v31;
      v33 = [obja countByEnumeratingWithState:&v56 objects:v64 count:16];
      if (v33)
      {
        v35 = v33;
        v36 = *v57;
        *&v34 = 138412546;
        v51 = v34;
        do
        {
          v37 = 0;
          v52 = v35;
          do
          {
            if (*v57 != v36)
            {
              objc_enumerationMutation(obja);
            }

            v38 = *(*(&v56 + 1) + 8 * v37);
            taskManager2 = [(MSDSession *)self taskManager];
            [taskManager2 removeSessionTask:v38];

            [v38 setState:0];
            [v38 setCurrentRetry:0];
            v40 = sub_100063A54();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              info5 = [v38 info];
              v42 = [info5 description];
              *buf = 138543618;
              selfCopy4 = self;
              v67 = 2114;
              v68 = v42;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: Relaunching task %{public}@ to resume", buf, 0x16u);
            }

            v43 = sub_100063BEC();
            signpostId2 = [(MSDSession *)self signpostId];
            if (signpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v45 = signpostId2;
              if (os_signpost_enabled(v43))
              {
                info6 = [v38 info];
                [info6 description];
                v48 = v47 = v36;
                info7 = [v38 info];
                savePath3 = [info7 savePath];
                *buf = v51;
                selfCopy4 = v48;
                v67 = 2112;
                v68 = savePath3;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v43, OS_SIGNPOST_EVENT, v45, "Resume Session Task", "Resuming Session Task: %{xcode:string}@ with save path: %{xcode:string}@", buf, 0x16u);

                v36 = v47;
                v35 = v52;
              }
            }

            [(MSDSession *)self dispatchSessionTask:v38];
            v37 = v37 + 1;
          }

          while (v35 != v37);
          v35 = [obja countByEnumeratingWithState:&v56 objects:v64 count:16];
        }

        while (v35);
      }

      v12 = obja;
    }
  }
}

- (void)handleDownloadAborted:(id)aborted
{
  userInfo = [aborted userInfo];
  v5 = [userInfo objectForKey:@"kMSDDownloadAbortedKey"];
  bOOLValue = [v5 BOOLValue];

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 1024;
    v12 = bOOLValue;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Session received timer expired notification; timerExpired=%d", &v9, 0x12u);
  }

  if (bOOLValue)
  {
    taskManager = [(MSDSession *)self taskManager];
    [taskManager cancelAndRemoveAllSessionTask];
  }
}

- (void)dispatchSessionTask:(id)task withError:(id *)error
{
  taskCopy = task;
  info = [taskCopy info];
  postData = [info postData];

  info2 = [taskCopy info];
  postFile = [info2 postFile];

  info3 = [taskCopy info];
  v12 = [info3 getRequestForTimeout:30.0];
  v13 = [v12 mutableCopy];

  info4 = [taskCopy info];
  LOBYTE(v12) = [info4 isValid];

  if ((v12 & 1) == 0)
  {
    sub_1000D9A18(error);
    goto LABEL_25;
  }

  if (!v13)
  {
    sub_1000D9C44(error);
    goto LABEL_25;
  }

  [taskCopy resetData];
  info5 = [taskCopy info];
  savePath = [info5 savePath];

  if (savePath)
  {
    fileHandle = [taskCopy fileHandle];

    if (!fileHandle)
    {
      sub_1000D9A90(error);
      goto LABEL_25;
    }

    contentRange = [taskCopy contentRange];
    getRangeHeaderForDownload = [contentRange getRangeHeaderForDownload];

    if (getRangeHeaderForDownload)
    {
      [v13 setValue:getRangeHeaderForDownload forHTTPHeaderField:@"Range"];
    }

    [(MSDSession *)self logDownloadTaskLaunch:taskCopy];
  }

  else
  {
    getRangeHeaderForDownload = 0;
  }

  [taskCopy setCurrentRetry:{objc_msgSend(taskCopy, "currentRetry") + 1}];
  if (postData)
  {
    session = [(MSDSession *)self session];
    v21 = [session uploadTaskWithRequest:v13 fromData:postData];
LABEL_11:
    v22 = v21;
    [taskCopy setTask:v21];
    goto LABEL_14;
  }

  session2 = [(MSDSession *)self session];
  session = session2;
  if (!postFile)
  {
    v21 = [session2 dataTaskWithRequest:v13];
    goto LABEL_11;
  }

  v22 = [NSURL URLWithString:postFile];
  v24 = [session uploadTaskWithRequest:v13 fromFile:v22];
  [taskCopy setTask:v24];

LABEL_14:
  task = [taskCopy task];

  if (task)
  {
    if ([(MSDSession *)self isDownloadPaused]&& [(MSDSession *)self getIsFileDownload])
    {
      v26 = sub_100063A54();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_1000D9B08(taskCopy);
      }

      v27 = sub_100063BEC();
      signpostId = [(MSDSession *)self signpostId];
      if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v29 = signpostId;
        if (os_signpost_enabled(v27))
        {
          info6 = [taskCopy info];
          v34 = [info6 description];
          info7 = [taskCopy info];
          [info7 savePath];
          *buf = 138412546;
          v37 = v34;
          v39 = v38 = 2112;
          v31 = v39;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_EVENT, v29, "Pause Session Task", "Launching Session Task: %{xcode:string}@ with save path: %{xcode:string}@ as paused", buf, 0x16u);
        }
      }

      [taskCopy setState:1];
    }

    else
    {
      [taskCopy setState:0];
      task2 = [taskCopy task];
      [task2 resume];
    }

    taskManager = [(MSDSession *)self taskManager];
    [taskManager addSessionTask:taskCopy];
  }

  else
  {
    sub_1000D9BAC(error, getRangeHeaderForDownload);
  }

LABEL_25:
}

- (void)dispatchSessionTask:(id)task
{
  taskCopy = task;
  v10 = 0;
  [(MSDSession *)self dispatchSessionTask:taskCopy withError:&v10];
  v5 = v10;
  if (v5)
  {
    info = [taskCopy info];
    handler = [info handler];

    if (handler)
    {
      info2 = [taskCopy info];
      handler2 = [info2 handler];
      (handler2)[2](handler2, v5, 0);
    }
  }
}

- (void)retrySessionTask:(id)task
{
  taskCopy = task;
  v5 = exp2([taskCopy currentRetry]);
  v6 = arc4random_uniform(0x1F4u) + v5 * 1000.0;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    info = [taskCopy info];
    v9 = [info description];
    info2 = [taskCopy info];
    savePath = [info2 savePath];
    currentRetry = [taskCopy currentRetry];
    info3 = [taskCopy info];
    *buf = 138544386;
    v20 = v9;
    v21 = 2114;
    v22 = savePath;
    v23 = 2048;
    v24 = v6;
    v25 = 2048;
    v26 = currentRetry;
    v27 = 2048;
    maxRetry = [info3 maxRetry];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retrying task %{public}@ with savePath: %{public}@ after %f ms; attempt %ld/%ld...", buf, 0x34u);
  }

  v14 = dispatch_time(0, (v6 * 1000000.0));
  demuxQueue = [(MSDSession *)self demuxQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000725C0;
  v17[3] = &unk_10016A258;
  v17[4] = self;
  v18 = taskCopy;
  v16 = taskCopy;
  dispatch_after(v14, demuxQueue, v17);
}

- (id)parseResponseHeader:(id)header statusCode:(int64_t)code
{
  headerCopy = header;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [headerCopy objectForKey:@"X-Protocol-Version"];
  if (v7)
  {
    [v6 setObject:v7 forKey:@"protocolVersion"];
  }

  if (code == 202)
  {
    v8 = [headerCopy objectForKey:@"Retry-After"];
    if (v8)
    {
      v9 = v8;
      v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 intValue]);
      [v6 setObject:v10 forKey:@"retryAfter"];
    }
  }

  return v6;
}

- (void)logDownloadTaskLaunch:(id)launch
{
  launchCopy = launch;
  contentRange = [launchCopy contentRange];
  getRangeHeaderForDownload = [contentRange getRangeHeaderForDownload];

  contentRange2 = [launchCopy contentRange];
  downloadedBytes = [contentRange2 downloadedBytes];

  contentRange3 = [launchCopy contentRange];
  existingFileSize = [contentRange3 existingFileSize];

  if (downloadedBytes + existingFileSize >= 1)
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      info = [launchCopy info];
      savePath = [info savePath];
      v19 = 138544130;
      v20 = savePath;
      v21 = 2048;
      v22 = existingFileSize;
      v23 = 2048;
      v24 = downloadedBytes;
      v25 = 2114;
      v26 = getRangeHeaderForDownload;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "File %{public}@ is partially downloaded with existing size = %ld, downloaded bytes = %ld; using range header %{public}@", &v19, 0x2Au);
    }

    v14 = sub_100063BEC();
    signpostId = [(MSDSession *)self signpostId];
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = signpostId;
      if (os_signpost_enabled(v14))
      {
        info2 = [launchCopy info];
        savePath2 = [info2 savePath];
        v19 = 138413058;
        v20 = savePath2;
        v21 = 2048;
        v22 = existingFileSize;
        v23 = 2048;
        v24 = downloadedBytes;
        v25 = 2112;
        v26 = getRangeHeaderForDownload;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, v16, "Resume Partial Download", "Resuming partial download for: %{xcode:string}@, existing size = %{xcode:size-in-bytes}lu; downloaded bytes = %{xcode:size-in-bytes}lu; range header = %{xcode:string}@", &v19, 0x2Au);
      }
    }
  }
}

- (id)getServerErrorMessage:(id)message withDefault:(id)default
{
  defaultCopy = default;
  outData = [message outData];
  if (!outData)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  v7 = [NSJSONSerialization JSONObjectWithData:outData options:0 error:0];
  v8 = v7;
  if (!v7)
  {
    v10 = [[NSString alloc] initWithData:outData encoding:4];
LABEL_6:
    v9 = v10;
    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = [v7 objectForKey:@"error_message"];
  if (!v9)
  {
    v10 = [NSString stringWithFormat:@"%@", v8];
    goto LABEL_6;
  }

LABEL_7:
  if ([v9 length])
  {
    v11 = [defaultCopy stringByAppendingFormat:@": %@", v9];

    goto LABEL_11;
  }

LABEL_10:
  v11 = defaultCopy;
LABEL_11:

  return v11;
}

@end