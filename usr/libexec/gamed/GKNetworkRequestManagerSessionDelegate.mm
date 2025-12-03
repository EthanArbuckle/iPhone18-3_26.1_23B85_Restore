@interface GKNetworkRequestManagerSessionDelegate
- (GKNetworkRequestManager)networkManager;
- (GKNetworkRequestManagerSessionDelegate)initWithNetworkManager:(id)manager;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes;
- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
@end

@implementation GKNetworkRequestManagerSessionDelegate

- (GKNetworkRequestManagerSessionDelegate)initWithNetworkManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = GKNetworkRequestManagerSessionDelegate;
  v5 = [(GKNetworkRequestManagerSessionDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_networkManager, managerCopy);
  }

  return v6;
}

- (void)URLSession:(id)session downloadTask:(id)task didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes
{
  sessionCopy = session;
  taskCopy = task;
  v11 = objc_autoreleasePoolPush();
  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 134218754;
    offsetCopy = offset;
    v16 = 2048;
    bytesCopy = bytes;
    v18 = 2112;
    v19 = sessionCopy;
    v20 = 2112;
    v21 = taskCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "GKNetworkRequestManager Download resumed at offset %lld bytes out of an expected %lld bytes. Session %@ task %@\n", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
}

- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler
{
  connectionCopy = connection;
  handlerCopy = handler;
  v10 = connectionCopy;
  [GKStoreBag addAuthHeadersToRequest:v10];
  v11 = [v10 valueForHTTPHeaderField:@"x-gk-sap-signature"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100109E64;
  v22[3] = &unk_100360FC8;
  v23 = v10;
  v12 = v23;
  v24 = v12;
  v13 = handlerCopy;
  v25 = v13;
  v14 = objc_retainBlock(v22);
  v15 = v14;
  if (v11)
  {
    networkManager = [(GKNetworkRequestManagerSessionDelegate *)self networkManager];
    if (networkManager)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100109F70;
      v19[3] = &unk_100366D80;
      v20 = v12;
      v21 = v15;
      [networkManager getFairPlaySession:v19];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v17 = GKOSLoggers();
      }

      v18 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        sub_10028DE04(v18);
      }

      v15[2](v15);
    }
  }

  else
  {
    (v14[2])(v14);
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  v11 = objc_autoreleasePoolPush();
  response = [taskCopy response];
  WeakRetained = objc_loadWeakRetained(&self->_networkManager);

  if (!taskCopy || !WeakRetained)
  {
    if (!os_log_GKGeneral)
    {
      v18 = GKOSLoggers();
    }

    v19 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v79 = sessionCopy;
      v80 = 2112;
      v81 = taskCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "GKNetworkRequestManager Download manager or task is nil. Session %@ task %@", buf, 0x16u);
    }

    goto LABEL_82;
  }

  if (!errorCopy || [errorCopy code] != -999)
  {
    if (!response)
    {
      if (!os_log_GKGeneral)
      {
        v34 = GKOSLoggers();
      }

      v35 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v79 = sessionCopy;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "GKNetworkRequestManager Session %@ Task completed but repsonse was nil, going to retry", buf, 0xCu);
      }

      v16 = [GKNetworkRequestManager dictionaryFromTaskDescription:taskCopy];
      originalRequest = [taskCopy originalRequest];
      v17 = [GKNetworkRequestManager taskWithRequest:originalRequest description:v16 session:sessionCopy];

      [v17 resume];
      goto LABEL_29;
    }

    v20 = [GKNetworkRequestManager uuidFromTask:taskCopy];
    if (v20)
    {
      v21 = objc_loadWeakRetained(&self->_networkManager);
      resultsLocation = [v21 resultsLocation];
      v23 = [v21 pathToTempFile:resultsLocation fileName:v20];

      v24 = objc_loadWeakRetained(&self->_networkManager);
      resultsLocation2 = [v24 resultsLocation];
      v77 = [v24 filePathToTempFile:resultsLocation2 fileName:v20];

      v26 = v23;
      if (v23)
      {
        absoluteString = [v23 absoluteString];
        v28 = [NSDictionary dictionaryWithContentsOfFile:absoluteString];

        if (v28)
        {
          v29 = v28;
          v72 = v20;
          v30 = [v28 objectForKey:@"status"];
          longValue = [v30 longValue];

          v75 = v29;
          v76 = [v29 objectForKey:@"message"];
          v26 = v23;
          v74 = longValue;
          if (longValue)
          {
            if (!os_log_GKGeneral)
            {
              v32 = GKOSLoggers();
            }

            v33 = os_log_GKDaemon;
            if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v79 = longValue;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "GKNetworkRequestManager serverError %ld", buf, 0xCu);
            }
          }

          v20 = v72;
          if (v76)
          {
LABEL_34:
            v37 = +[NSFileManager defaultManager];
            path = [v77 path];
            [v37 removeItemAtPath:path error:0];

            statusCode = [response statusCode];
            if (statusCode == 520)
            {
              v40 = objc_loadWeakRetained(&self->_networkManager);
              [v40 handleRetryAfter:taskCopy];
LABEL_81:

              goto LABEL_82;
            }

            v43 = statusCode != 401 && statusCode != 200 && statusCode != 413 && (statusCode - 433) > 1;
            v71 = v26;
            if (v43 || v74 != 5000)
            {
              v56 = statusCode != 200 && statusCode != 304 && statusCode != 206;
              if (!errorCopy && !v56 && v74 < 1)
              {
                goto LABEL_76;
              }

              v92[0] = @"statusCode";
              v57 = [NSNumber numberWithInteger:statusCode];
              v93[0] = v57;
              v92[1] = @"serverResult";
              v58 = [NSNumber numberWithLong:v74];
              v92[2] = @"serverMessage";
              v93[1] = v58;
              v93[2] = v76;
              v40 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:3];

              if (!os_log_GKGeneral)
              {
                v59 = GKOSLoggers();
              }

              v60 = os_log_GKDaemon;
              if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v79 = v40;
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "GKNetworkRequestManager sending event %@", buf, 0xCu);
              }

              v61 = +[GKReporter reporter];
              [v61 reportEvent:GKReporterDomainNetworkRequests type:GKNetworkRequestFailure payload:v40];

              v26 = v71;
            }

            else
            {
              v40 = [GKNetworkRequestManager dictionaryFromTaskDescription:taskCopy];
              v44 = [v40 objectForKeyedSubscript:@"_gkAuthRetries"];
              longValue2 = [v44 longValue];

              if (longValue2 <= 9)
              {
                if (!os_log_GKGeneral)
                {
                  v46 = GKOSLoggers();
                }

                v47 = os_log_GKDaemon;
                if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
                {
                  v48 = v47;
                  v49 = [NSNumber numberWithInteger:longValue2 + 1];
                  *buf = 138412546;
                  v79 = v49;
                  v80 = 2112;
                  v81 = v40;
                  _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "GKNetworkRequestManager auth failure, retry %@: for request: %@", buf, 0x16u);
                }

                v50 = [NSNumber numberWithInteger:longValue2 + 1];
                [v40 setObject:v50 forKeyedSubscript:@"_gkAuthRetries"];

                originalRequest2 = [taskCopy originalRequest];
                [GKStoreBag addAuthHeadersToRequest:originalRequest2];

                originalRequest3 = [taskCopy originalRequest];
                v53 = [GKNetworkRequestManager taskWithRequest:originalRequest3 description:v40 session:sessionCopy];

                [v53 resume];
                v26 = v71;
                goto LABEL_81;
              }

              if (!os_log_GKGeneral)
              {
                v62 = GKOSLoggers();
              }

              v63 = os_log_GKDaemon;
              v26 = v71;
              if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v79 = v40;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "GKNetworkRequestManager request exceeded maximum amount of auth retries: %@", buf, 0xCu);
              }
            }

LABEL_76:
            if (!os_log_GKGeneral)
            {
              v64 = GKOSLoggers();
            }

            v65 = os_log_GKDaemon;
            if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
            {
              v73 = v20;
              log = v65;
              v69 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [response statusCode]);
              v66 = [NSNumber numberWithLong:v74];
              v67 = [GKNetworkRequestManager dictionaryFromTaskDescription:taskCopy];
              allHeaderFields = [response allHeaderFields];
              *buf = 138413826;
              v79 = taskCopy;
              v80 = 2112;
              v81 = v69;
              v82 = 2112;
              v83 = v66;
              v84 = 2112;
              v85 = errorCopy;
              v86 = 2112;
              v87 = v67;
              v88 = 2112;
              v89 = allHeaderFields;
              v90 = 2112;
              v91 = v75;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "GKNetworkRequestManager Task completed: %@ code:%@ serverCode:%@ error: %@ descriptor: %@ , headers: %@ resultsPlist: %@", buf, 0x48u);

              v20 = v73;
              v26 = v71;
            }

            v40 = objc_loadWeakRetained(&self->_networkManager);
            [v40 handleTaskFinished:taskCopy];
            goto LABEL_81;
          }
        }

        else
        {
          v74 = -1;
          v75 = 0;
          v26 = v23;
        }

LABEL_33:
        v76 = &stru_100374F10;
        goto LABEL_34;
      }

      v75 = 0;
    }

    else
    {
      v75 = 0;
      v26 = 0;
      v77 = 0;
    }

    v74 = -1;
    goto LABEL_33;
  }

  if (!os_log_GKGeneral)
  {
    v14 = GKOSLoggers();
  }

  v15 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = [GKNetworkRequestManager dictionaryFromTaskDescription:taskCopy];
    *buf = 138412290;
    v79 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "GKNetworkRequestManager task was explicitly cancelled: %@", buf, 0xCu);
LABEL_29:
  }

LABEL_82:

  objc_autoreleasePoolPop(v11);
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  lCopy = l;
  taskCopy = task;
  v9 = +[NSFileManager defaultManager];
  v10 = [GKNetworkRequestManager uuidFromTask:taskCopy];

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_networkManager);
    resultsLocation = [v11 resultsLocation];
    v13 = [v11 filePathToTempFile:resultsLocation fileName:v10];

    path = [v13 path];
    [v9 removeItemAtPath:path error:0];

    v25 = 0;
    LODWORD(resultsLocation) = [v9 moveItemAtURL:lCopy toURL:v13 error:&v25];
    v15 = v25;
    if (resultsLocation)
    {
      if (!os_log_GKGeneral)
      {
        v16 = GKOSLoggers();
      }

      v17 = os_log_GKDaemon;
      if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      *buf = 138412546;
      v27 = lCopy;
      v28 = 2112;
      v29 = v13;
      v18 = "GKNetworkRequestManager moved %@ to %@";
      v19 = v17;
      v20 = 22;
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v23 = GKOSLoggers();
      }

      v24 = os_log_GKDaemon;
      if (!os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      *buf = 138412802;
      v27 = lCopy;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v15;
      v18 = "GKNetworkRequestManager failed to move %@ to %@ error:%@";
      v19 = v24;
      v20 = 32;
    }

    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, v18, buf, v20);
LABEL_16:

    goto LABEL_17;
  }

  if (!os_log_GKGeneral)
  {
    v21 = GKOSLoggers();
  }

  v22 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "GKNetworkRequestManager cannot move file into place there was no uuid in the task description", buf, 2u);
  }

LABEL_17:
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  sessionCopy = session;
  taskCopy = task;
  metricsCopy = metrics;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "GKNetworkRequestManager finished collecting metrics for background task", v13, 2u);
  }

  v12 = +[GKAMPController controller];
  [v12 reportURLSessionEventWithTask:taskCopy metrics:metricsCopy];
}

- (GKNetworkRequestManager)networkManager
{
  WeakRetained = objc_loadWeakRetained(&self->_networkManager);

  return WeakRetained;
}

@end