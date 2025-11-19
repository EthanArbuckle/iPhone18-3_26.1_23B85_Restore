@interface GKNetworkRequestManagerSessionDelegate
- (GKNetworkRequestManager)networkManager;
- (GKNetworkRequestManagerSessionDelegate)initWithNetworkManager:(id)a3;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didResumeAtOffset:(int64_t)a5 expectedTotalBytes:(int64_t)a6;
- (void)URLSession:(id)a3 task:(id)a4 _willSendRequestForEstablishedConnection:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
@end

@implementation GKNetworkRequestManagerSessionDelegate

- (GKNetworkRequestManagerSessionDelegate)initWithNetworkManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = GKNetworkRequestManagerSessionDelegate;
  v5 = [(GKNetworkRequestManagerSessionDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_networkManager, v4);
  }

  return v6;
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didResumeAtOffset:(int64_t)a5 expectedTotalBytes:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v14 = 134218754;
    v15 = a5;
    v16 = 2048;
    v17 = a6;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "GKNetworkRequestManager Download resumed at offset %lld bytes out of an expected %lld bytes. Session %@ task %@\n", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
}

- (void)URLSession:(id)a3 task:(id)a4 _willSendRequestForEstablishedConnection:(id)a5 completionHandler:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = v8;
  [GKStoreBag addAuthHeadersToRequest:v10];
  v11 = [v10 valueForHTTPHeaderField:@"x-gk-sap-signature"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100109E64;
  v22[3] = &unk_100360FC8;
  v23 = v10;
  v12 = v23;
  v24 = v12;
  v13 = v9;
  v25 = v13;
  v14 = objc_retainBlock(v22);
  v15 = v14;
  if (v11)
  {
    v16 = [(GKNetworkRequestManagerSessionDelegate *)self networkManager];
    if (v16)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100109F70;
      v19[3] = &unk_100366D80;
      v20 = v12;
      v21 = v15;
      [v16 getFairPlaySession:v19];
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

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [v9 response];
  WeakRetained = objc_loadWeakRetained(&self->_networkManager);

  if (!v9 || !WeakRetained)
  {
    if (!os_log_GKGeneral)
    {
      v18 = GKOSLoggers();
    }

    v19 = os_log_GKDaemon;
    if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v79 = v8;
      v80 = 2112;
      v81 = v9;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "GKNetworkRequestManager Download manager or task is nil. Session %@ task %@", buf, 0x16u);
    }

    goto LABEL_82;
  }

  if (!v10 || [v10 code] != -999)
  {
    if (!v12)
    {
      if (!os_log_GKGeneral)
      {
        v34 = GKOSLoggers();
      }

      v35 = os_log_GKDaemon;
      if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v79 = v8;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "GKNetworkRequestManager Session %@ Task completed but repsonse was nil, going to retry", buf, 0xCu);
      }

      v16 = [GKNetworkRequestManager dictionaryFromTaskDescription:v9];
      v36 = [v9 originalRequest];
      v17 = [GKNetworkRequestManager taskWithRequest:v36 description:v16 session:v8];

      [v17 resume];
      goto LABEL_29;
    }

    v20 = [GKNetworkRequestManager uuidFromTask:v9];
    if (v20)
    {
      v21 = objc_loadWeakRetained(&self->_networkManager);
      v22 = [v21 resultsLocation];
      v23 = [v21 pathToTempFile:v22 fileName:v20];

      v24 = objc_loadWeakRetained(&self->_networkManager);
      v25 = [v24 resultsLocation];
      v77 = [v24 filePathToTempFile:v25 fileName:v20];

      v26 = v23;
      if (v23)
      {
        v27 = [v23 absoluteString];
        v28 = [NSDictionary dictionaryWithContentsOfFile:v27];

        if (v28)
        {
          v29 = v28;
          v72 = v20;
          v30 = [v28 objectForKey:@"status"];
          v31 = [v30 longValue];

          v75 = v29;
          v76 = [v29 objectForKey:@"message"];
          v26 = v23;
          v74 = v31;
          if (v31)
          {
            if (!os_log_GKGeneral)
            {
              v32 = GKOSLoggers();
            }

            v33 = os_log_GKDaemon;
            if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
            {
              *buf = 134217984;
              v79 = v31;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "GKNetworkRequestManager serverError %ld", buf, 0xCu);
            }
          }

          v20 = v72;
          if (v76)
          {
LABEL_34:
            v37 = +[NSFileManager defaultManager];
            v38 = [v77 path];
            [v37 removeItemAtPath:v38 error:0];

            v39 = [v12 statusCode];
            if (v39 == 520)
            {
              v40 = objc_loadWeakRetained(&self->_networkManager);
              [v40 handleRetryAfter:v9];
LABEL_81:

              goto LABEL_82;
            }

            v43 = v39 != 401 && v39 != 200 && v39 != 413 && (v39 - 433) > 1;
            v71 = v26;
            if (v43 || v74 != 5000)
            {
              v56 = v39 != 200 && v39 != 304 && v39 != 206;
              if (!v10 && !v56 && v74 < 1)
              {
                goto LABEL_76;
              }

              v92[0] = @"statusCode";
              v57 = [NSNumber numberWithInteger:v39];
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
              v40 = [GKNetworkRequestManager dictionaryFromTaskDescription:v9];
              v44 = [v40 objectForKeyedSubscript:@"_gkAuthRetries"];
              v45 = [v44 longValue];

              if (v45 <= 9)
              {
                if (!os_log_GKGeneral)
                {
                  v46 = GKOSLoggers();
                }

                v47 = os_log_GKDaemon;
                if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
                {
                  v48 = v47;
                  v49 = [NSNumber numberWithInteger:v45 + 1];
                  *buf = 138412546;
                  v79 = v49;
                  v80 = 2112;
                  v81 = v40;
                  _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "GKNetworkRequestManager auth failure, retry %@: for request: %@", buf, 0x16u);
                }

                v50 = [NSNumber numberWithInteger:v45 + 1];
                [v40 setObject:v50 forKeyedSubscript:@"_gkAuthRetries"];

                v51 = [v9 originalRequest];
                [GKStoreBag addAuthHeadersToRequest:v51];

                v52 = [v9 originalRequest];
                v53 = [GKNetworkRequestManager taskWithRequest:v52 description:v40 session:v8];

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
              v69 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 statusCode]);
              v66 = [NSNumber numberWithLong:v74];
              v67 = [GKNetworkRequestManager dictionaryFromTaskDescription:v9];
              v68 = [v12 allHeaderFields];
              *buf = 138413826;
              v79 = v9;
              v80 = 2112;
              v81 = v69;
              v82 = 2112;
              v83 = v66;
              v84 = 2112;
              v85 = v10;
              v86 = 2112;
              v87 = v67;
              v88 = 2112;
              v89 = v68;
              v90 = 2112;
              v91 = v75;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "GKNetworkRequestManager Task completed: %@ code:%@ serverCode:%@ error: %@ descriptor: %@ , headers: %@ resultsPlist: %@", buf, 0x48u);

              v20 = v73;
              v26 = v71;
            }

            v40 = objc_loadWeakRetained(&self->_networkManager);
            [v40 handleTaskFinished:v9];
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
    v17 = [GKNetworkRequestManager dictionaryFromTaskDescription:v9];
    *buf = 138412290;
    v79 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "GKNetworkRequestManager task was explicitly cancelled: %@", buf, 0xCu);
LABEL_29:
  }

LABEL_82:

  objc_autoreleasePoolPop(v11);
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = +[NSFileManager defaultManager];
  v10 = [GKNetworkRequestManager uuidFromTask:v8];

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_networkManager);
    v12 = [v11 resultsLocation];
    v13 = [v11 filePathToTempFile:v12 fileName:v10];

    v14 = [v13 path];
    [v9 removeItemAtPath:v14 error:0];

    v25 = 0;
    LODWORD(v12) = [v9 moveItemAtURL:v7 toURL:v13 error:&v25];
    v15 = v25;
    if (v12)
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
      v27 = v7;
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
      v27 = v7;
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

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
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
  [v12 reportURLSessionEventWithTask:v8 metrics:v9];
}

- (GKNetworkRequestManager)networkManager
{
  WeakRetained = objc_loadWeakRetained(&self->_networkManager);

  return WeakRetained;
}

@end