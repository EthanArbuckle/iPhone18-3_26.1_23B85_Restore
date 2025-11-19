@interface MSDSession
- (id)getServerErrorMessage:(id)a3 withDefault:(id)a4;
- (id)parseResponseHeader:(id)a3 statusCode:(int64_t)a4;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)dispatchSessionTask:(id)a3;
- (void)dispatchSessionTask:(id)a3 withError:(id *)a4;
- (void)handleDownloadAborted:(id)a3;
- (void)handleDownloadPaused:(id)a3;
- (void)invalidate;
- (void)launchTaskWithInfo:(id)a3;
- (void)logDownloadTaskLaunch:(id)a3;
- (void)retrySessionTask:(id)a3;
@end

@implementation MSDSession

- (void)invalidate
{
  v2 = [(MSDSession *)self session];
  [v2 invalidateAndCancel];
}

- (void)launchTaskWithInfo:(id)a3
{
  v4 = a3;
  v5 = [[MSDSessionTask alloc] initFromTaskInfo:v4];

  v6 = [(MSDSession *)self demuxQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006FFE4;
  v8[3] = &unk_10016A258;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(v6, v8);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(MSDSession *)self taskManager];
  v13 = [v12 getSessionTask:v9];

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
      v30 = [v13 info];
      v31 = [v30 savePath];
      [v29 removeItemAtPath:v31 error:0];

      [v13 resetFileHandle];
    }

    v32 = sub_100063A54();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v14 statusCode];
      v34 = [v13 state];
      v35 = 134218240;
      v36 = v33;
      v37 = 1024;
      LODWORD(v38) = v34 == 2;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Cancelling download task on status code: %ld; should retry=%d", &v35, 0x12u);
    }

LABEL_26:

    v11[2](v11, 0);
    goto LABEL_27;
  }

  v14 = v10;
  v15 = [v13 info];
  v16 = [v15 savePath];

  if (v16)
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

    v17 = [v14 allHeaderFields];
    v18 = [v17 objectForKey:@"Content-Range"];

    if (!v18)
    {
      v26 = sub_100063A54();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v13 info];
        v28 = [v27 savePath];
        v35 = 138543618;
        v36 = v28;
        v37 = 2114;
        v38 = @"Content-Range";
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "HTTP response header for %{public}@ does not contain key %{public}@; cannot proceed with download", &v35, 0x16u);
      }

      v18 = 0;
      v25 = 1;
      goto LABEL_20;
    }

    v19 = [v13 contentRange];
    [v19 processServerRangeResponse:v18];

    v20 = [v13 contentRange];
    v21 = [v20 isDownloadComplete];

    if (v21)
    {
      v22 = sub_100063A54();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v13 info];
        v24 = [v23 savePath];
        v35 = 138543362;
        v36 = v24;
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

  v11[2](v11, 1);
LABEL_27:
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = [v9 response];
  v13 = [v12 statusCode];
  v14 = [(MSDSession *)self taskManager];
  v15 = [v14 getSessionTask:v9];

  if (!v15)
  {
    v20 = sub_100063A54();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000D9694();
    }

    v19 = 0;
    goto LABEL_15;
  }

  v16 = [v15 info];
  v17 = [v16 savePath];
  if (!v17)
  {

LABEL_8:
    v19 = [v15 outData];
    [v19 appendData:v10];
    goto LABEL_9;
  }

  if (v13 != 206 && v13 != 200)
  {
    goto LABEL_8;
  }

  v18 = [v15 fileHandle];
  v21 = 0;
  [v18 writeData:v10 error:&v21];
  v19 = v21;

  if (v19)
  {
    [v15 setError:v19];
    v20 = sub_100063A54();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1000D96FC(v15, v19, v20);
    }

LABEL_15:

    [v9 cancel];
    goto LABEL_9;
  }

  v19 = [v15 contentRange];
  [v19 appendDownloadedFileSize:{objc_msgSend(v10, "length")}];
LABEL_9:

  objc_autoreleasePoolPop(v11);
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(MSDSession *)self taskManager];
  v13 = [v12 getSessionTask:v9];

  if (v13)
  {
    v14 = [v10 protectionSpace];
    v15 = [v14 authenticationMethod];

    v16 = sub_100063A54();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D97B8(v13);
    }

    if ([v15 isEqualToString:NSURLAuthenticationMethodServerTrust])
    {
      [(MSDSession *)self authenticate:v10 forTask:v13 completion:v11];
    }

    else
    {
      v18 = sub_100063A54();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000D985C();
      }

      v11[2](v11, 2, 0);
    }
  }

  else
  {
    v17 = sub_100063A54();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Untracked task: %{public}@; canceling...", &v19, 0xCu);
    }

    v11[2](v11, 2, 0);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v10 = a4;
  v11 = a6;
  v12 = a7;
  v13 = [(MSDSession *)self taskManager];
  v14 = [v13 getSessionTask:v10];

  if (v14)
  {
    [v14 setRedirected:1];
    v15 = [v11 URL];
    v16 = [NSMutableURLRequest requestWithURL:v15 cachePolicy:1 timeoutInterval:30.0];

    v17 = [v14 info];
    v18 = [v17 savePath];

    if (v18)
    {
      v19 = [v14 contentRange];
      v20 = [v19 getRangeHeaderForDownload];

      if (v20)
      {
        [v16 setValue:v20 forHTTPHeaderField:@"Range"];
      }
    }

    v12[2](v12, v16);
  }

  else
  {
    v21 = sub_100063A54();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138543362;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Untracked task: %{public}@; canceling...", &v22, 0xCu);
    }

    [v10 cancel];
    v12[2](v12, 0);
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v109 = a5;
  v8 = [(MSDSession *)self taskManager];
  v9 = [v8 getSessionTask:v7];

  v10 = [v7 response];
  v11 = [v10 statusCode];
  v12 = objc_alloc_init(NSMutableDictionary);
  if (!v9)
  {
    v30 = sub_100063A54();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v116 = v7;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Untracked task: %{public}@ done.", buf, 0xCu);
    }

    v27 = 0;
    goto LABEL_77;
  }

  if (!-[MSDSession getIsFileDownload](self, "getIsFileDownload") || [v9 state] != 1)
  {
    if ([v109 code] == -999 && objc_msgSend(v9, "state") != 3)
    {
      v103 = v10;
      v106 = v12;
      v32 = [v9 info];
      v33 = [v32 savePath];
      if (v33)
      {
        v34 = v33;
        [v9 contentRange];
        v36 = v35 = v11;
        v37 = [v36 isDownloadComplete];

        v11 = v35;
        if (v37)
        {
          v38 = sub_100063A54();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [v9 info];
            v40 = [v39 description];
            v41 = [v9 info];
            v42 = [v41 savePath];
            *buf = 138543618;
            v116 = v40;
            v117 = 2114;
            v118 = v42;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "SessionTask %{public}@ for file %{public}@ is cancelled but it is already complete, ignoring cancellation", buf, 0x16u);

            v11 = v35;
          }

          v27 = 0;
          v28 = 0;
          v29 = 0;
          v10 = v103;
          v12 = v106;
          goto LABEL_61;
        }
      }

      else
      {
      }

      v54 = [v9 error];
      if (v54)
      {
        v55 = [v9 error];
      }

      else
      {
        v55 = v109;
      }

      v27 = v55;
      v10 = v103;

      v28 = 0;
      v29 = [v9 state] == 2;
      goto LABEL_46;
    }

    if (!v10)
    {
      if (v109)
      {
        v107 = v7;
        v31 = v12;
        v27 = v109;
        v29 = 1;
LABEL_58:
        v61 = sub_100063A54();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          [v9 info];
          v62 = v104 = v10;
          [v62 description];
          v64 = v63 = v11;
          v65 = [v27 localizedDescription];
          v66 = [v27 code];
          *buf = 138543874;
          v116 = v64;
          v117 = 2114;
          v118 = v65;
          v119 = 2048;
          v120 = v66;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Session task %{public}@ did fail with error: %{public}@(0x%tx)", buf, 0x20u);

          v10 = v104;
          v11 = v63;
        }

        v28 = 0;
        v12 = v31;
        v7 = v107;
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

    if (v11 <= 205)
    {
      v29 = 0;
      v27 = 0;
      v28 = 1;
      if ((v11 - 200) < 3 || v11 == 204)
      {
        goto LABEL_61;
      }

      goto LABEL_53;
    }

    if (v11 > 403)
    {
      if (v11 != 404)
      {
        if (v11 == 408)
        {
          v43 = v10;
          v51 = [(MSDSession *)self getServerErrorMessage:v9 withDefault:@"Connection with server is broken."];
          v112 = 0;
          sub_1000C1390(&v112, 3727740931, v51);
          v52 = v112;
          goto LABEL_56;
        }

        goto LABEL_53;
      }

      v43 = v10;
      v44 = [(MSDSession *)self getServerErrorMessage:v9 withDefault:@"Requested asset not found"];
      v113 = 0;
      sub_1000C1390(&v113, 3727740934, v44);
      v45 = v113;
      goto LABEL_51;
    }

    if (v11 != 206)
    {
      if (v11 != 403)
      {
LABEL_53:
        v43 = v10;
        v60 = sub_100063A54();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v116 = v11;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Unrecognized status code %ld; will attempt to retry task", buf, 0xCu);
        }

        v51 = [(MSDSession *)self getServerErrorMessage:v9 withDefault:@"Unexpected server response."];
        v111 = 0;
        sub_1000C1390(&v111, 3727744512, v51);
        v52 = v111;
        goto LABEL_56;
      }

      v43 = v10;
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
        v107 = v7;
        v31 = v12;
        v10 = v43;
        goto LABEL_58;
      }

LABEL_52:
      v28 = 0;
      v10 = v43;
      goto LABEL_61;
    }

    v43 = v10;
    v56 = [v9 info];
    v57 = [v56 savePath];

    if (v57)
    {
      v58 = [v9 contentRange];
      v59 = [v58 isDownloadComplete];

      if (v59)
      {
        v29 = 0;
        goto LABEL_83;
      }

      v94 = [v9 contentRange];
      v95 = [v94 didProgress];

      if (v95)
      {
        v96 = sub_100063A54();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          v97 = [v9 info];
          [v97 savePath];
          v98 = v7;
          v100 = v99 = v12;
          *buf = 138543362;
          v116 = v100;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Allowing partial download of %{public}@ to progress without retry penalty", buf, 0xCu);

          v12 = v99;
          v7 = v98;
        }

        [v9 setCurrentRetry:{objc_msgSend(v9, "currentRetry") - 1}];
        v101 = [v9 contentRange];
        [v101 recordDownloadedBytes];
      }
    }

    v29 = 1;
LABEL_83:
    v27 = v109;
    if (v27)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  v106 = v12;
  v13 = [v9 contentRange];
  v14 = [v13 isDownloadComplete];

  v15 = sub_100063A54();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if ((v14 & 1) == 0)
  {
    if (v16)
    {
      v46 = [v9 info];
      [v46 description];
      v48 = v47 = v10;
      v49 = [v9 info];
      v50 = [v49 savePath];
      *buf = 138543618;
      v116 = v48;
      v117 = 2114;
      v118 = v50;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SessionTask %{public}@ with savePath: %{public}@ paused, waiting to be resumed", buf, 0x16u);

      v10 = v47;
    }

    v27 = 0;
    v12 = v106;
    goto LABEL_77;
  }

  if (v16)
  {
    v17 = [v9 info];
    [v17 savePath];
    v19 = v18 = v11;
    *buf = 138543362;
    v116 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not pausing task for %{public}@ because download is already complete", buf, 0xCu);

    v11 = v18;
  }

  v20 = sub_100063BEC();
  v21 = [(MSDSession *)self signpostId];
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = v21;
    if (os_signpost_enabled(v20))
    {
      v23 = [v9 info];
      v24 = [v23 description];
      [v9 info];
      v25 = v102 = v11;
      v26 = [v25 savePath];
      *buf = 138412546;
      v116 = v24;
      v117 = 2112;
      v118 = v26;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_EVENT, v22, "Resume Session Task", "Not Pausing Completed Session Task: %{xcode:string}@ with save path: %{xcode:string}@", buf, 0x16u);

      v11 = v102;
    }
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
LABEL_46:
  v12 = v106;
LABEL_61:
  v67 = [(MSDSession *)self taskManager];
  [v67 removeSessionTask:v9];

  [(MSDSession *)self collectTimingDataForTask:v9 withNetworkError:v109];
  if (v29)
  {
    v105 = v11;
    v68 = v7;
    v69 = v12;
    v70 = v10;
    v71 = [v9 currentRetry];
    v72 = [v9 info];
    v73 = [v72 maxRetry];

    if (v71 <= v73)
    {
      [(MSDSession *)self retrySessionTask:v9];
      v10 = v70;
      v12 = v69;
      v7 = v68;
      goto LABEL_77;
    }

    v74 = sub_100063A54();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v108 = [v9 info];
      v75 = [v108 description];
      v76 = [v9 info];
      v77 = [v76 maxRetry];
      *buf = 138543618;
      v116 = v75;
      v117 = 2048;
      v118 = v77;
      _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "%{public}@ exceeded maximum retry %ld", buf, 0x16u);
    }

    v10 = v70;
    v12 = v69;
    v7 = v68;
    v11 = v105;
  }

  v78 = [NSNumber numberWithInteger:v11];
  [v12 setObject:v78 forKey:@"statusCode"];

  if (v28)
  {
    v79 = [v10 allHeaderFields];
    v80 = [(MSDSession *)self parseResponseHeader:v79 statusCode:v11];
    [v12 addEntriesFromDictionary:v80];
  }

  v81 = [v9 outData];

  if (v81)
  {
    v82 = [v9 outData];
    [v12 setObject:v82 forKey:@"data"];
  }

  v83 = [v9 info];
  v84 = [v83 savePath];

  if (v84)
  {
    v85 = [v9 contentRange];
    v86 = [v85 downloadedBytes];

    v87 = [NSNumber numberWithInteger:v86];
    [v12 setObject:v87 forKey:@"fileSize"];
  }

  v88 = [v9 fileHandle];

  if (v88)
  {
    v89 = [v9 fileHandle];
    [v89 closeFile];
  }

  v90 = [v9 info];
  v91 = [v90 handler];

  if (v91)
  {
    v92 = [v9 info];
    v93 = [v92 handler];
    (v93)[2](v93, v27, v12);
  }

LABEL_77:
}

- (void)handleDownloadPaused:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"kMSDDownloadPausedKey"];
  v6 = [v5 BOOLValue];

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v66 = self;
    v67 = 1024;
    LODWORD(v68) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Session received background download paused notification; pause=%d", buf, 0x12u);
  }

  if (v6 == [(MSDSession *)self isDownloadPaused])
  {
    v30 = sub_100063A54();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v66 = self;
      v67 = 1024;
      LODWORD(v68) = v6;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: downloadPaused = %d, ignoring notification...", buf, 0x12u);
    }

    v12 = v30;
  }

  else
  {
    [(MSDSession *)self setIsDownloadPaused:v6];
    v8 = [(MSDSession *)self taskManager];
    v9 = v8;
    if (v6)
    {
      v10 = [v8 getTaskInState:0];

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
              v16 = [v14 info];
              v17 = [v16 description];
              *buf = 138543618;
              v66 = self;
              v67 = 2114;
              v68 = v17;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: Canceling task %{public}@", buf, 0x16u);
            }

            v18 = sub_100063BEC();
            v19 = [(MSDSession *)self signpostId];
            if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v20 = v19;
              if (os_signpost_enabled(v18))
              {
                v21 = [v14 info];
                v22 = [v21 description];
                v23 = [v14 info];
                v24 = [v23 savePath];
                *buf = 138412546;
                v66 = v22;
                v67 = 2112;
                v68 = v24;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_EVENT, v20, "Pause Session Task", "Pause Session Task: %{xcode:string}@ with save path: %{xcode:string}@", buf, 0x16u);
              }
            }

            [v14 setState:1];
            v25 = [v14 task];
            [v25 cancel];

            if (os_variant_has_internal_content())
            {
              v26 = [v14 info];
              v27 = [v26 savePath];
              v28 = [v14 contentRange];
              [v28 setFileDownloading:v27];

              v29 = [v14 contentRange];
              [v29 pushToTestLog:0];
            }
          }

          obj = [v12 countByEnumeratingWithState:&v60 objects:v69 count:16];
        }

        while (obj);
      }
    }

    else
    {
      v31 = [v8 getTaskInState:1];

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
            v39 = [(MSDSession *)self taskManager];
            [v39 removeSessionTask:v38];

            [v38 setState:0];
            [v38 setCurrentRetry:0];
            v40 = sub_100063A54();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = [v38 info];
              v42 = [v41 description];
              *buf = 138543618;
              v66 = self;
              v67 = 2114;
              v68 = v42;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@: Relaunching task %{public}@ to resume", buf, 0x16u);
            }

            v43 = sub_100063BEC();
            v44 = [(MSDSession *)self signpostId];
            if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v45 = v44;
              if (os_signpost_enabled(v43))
              {
                v46 = [v38 info];
                [v46 description];
                v48 = v47 = v36;
                v49 = [v38 info];
                v50 = [v49 savePath];
                *buf = v51;
                v66 = v48;
                v67 = 2112;
                v68 = v50;
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

- (void)handleDownloadAborted:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"kMSDDownloadAbortedKey"];
  v6 = [v5 BOOLValue];

  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = self;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Session received timer expired notification; timerExpired=%d", &v9, 0x12u);
  }

  if (v6)
  {
    v8 = [(MSDSession *)self taskManager];
    [v8 cancelAndRemoveAllSessionTask];
  }
}

- (void)dispatchSessionTask:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [v6 info];
  v8 = [v7 postData];

  v9 = [v6 info];
  v10 = [v9 postFile];

  v11 = [v6 info];
  v12 = [v11 getRequestForTimeout:30.0];
  v13 = [v12 mutableCopy];

  v14 = [v6 info];
  LOBYTE(v12) = [v14 isValid];

  if ((v12 & 1) == 0)
  {
    sub_1000D9A18(a4);
    goto LABEL_25;
  }

  if (!v13)
  {
    sub_1000D9C44(a4);
    goto LABEL_25;
  }

  [v6 resetData];
  v15 = [v6 info];
  v16 = [v15 savePath];

  if (v16)
  {
    v17 = [v6 fileHandle];

    if (!v17)
    {
      sub_1000D9A90(a4);
      goto LABEL_25;
    }

    v18 = [v6 contentRange];
    v19 = [v18 getRangeHeaderForDownload];

    if (v19)
    {
      [v13 setValue:v19 forHTTPHeaderField:@"Range"];
    }

    [(MSDSession *)self logDownloadTaskLaunch:v6];
  }

  else
  {
    v19 = 0;
  }

  [v6 setCurrentRetry:{objc_msgSend(v6, "currentRetry") + 1}];
  if (v8)
  {
    v20 = [(MSDSession *)self session];
    v21 = [v20 uploadTaskWithRequest:v13 fromData:v8];
LABEL_11:
    v22 = v21;
    [v6 setTask:v21];
    goto LABEL_14;
  }

  v23 = [(MSDSession *)self session];
  v20 = v23;
  if (!v10)
  {
    v21 = [v23 dataTaskWithRequest:v13];
    goto LABEL_11;
  }

  v22 = [NSURL URLWithString:v10];
  v24 = [v20 uploadTaskWithRequest:v13 fromFile:v22];
  [v6 setTask:v24];

LABEL_14:
  v25 = [v6 task];

  if (v25)
  {
    if ([(MSDSession *)self isDownloadPaused]&& [(MSDSession *)self getIsFileDownload])
    {
      v26 = sub_100063A54();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_1000D9B08(v6);
      }

      v27 = sub_100063BEC();
      v28 = [(MSDSession *)self signpostId];
      if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v29 = v28;
        if (os_signpost_enabled(v27))
        {
          v35 = [v6 info];
          v34 = [v35 description];
          v30 = [v6 info];
          [v30 savePath];
          *buf = 138412546;
          v37 = v34;
          v39 = v38 = 2112;
          v31 = v39;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_EVENT, v29, "Pause Session Task", "Launching Session Task: %{xcode:string}@ with save path: %{xcode:string}@ as paused", buf, 0x16u);
        }
      }

      [v6 setState:1];
    }

    else
    {
      [v6 setState:0];
      v32 = [v6 task];
      [v32 resume];
    }

    v33 = [(MSDSession *)self taskManager];
    [v33 addSessionTask:v6];
  }

  else
  {
    sub_1000D9BAC(a4, v19);
  }

LABEL_25:
}

- (void)dispatchSessionTask:(id)a3
{
  v4 = a3;
  v10 = 0;
  [(MSDSession *)self dispatchSessionTask:v4 withError:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = [v4 info];
    v7 = [v6 handler];

    if (v7)
    {
      v8 = [v4 info];
      v9 = [v8 handler];
      (v9)[2](v9, v5, 0);
    }
  }
}

- (void)retrySessionTask:(id)a3
{
  v4 = a3;
  v5 = exp2([v4 currentRetry]);
  v6 = arc4random_uniform(0x1F4u) + v5 * 1000.0;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v4 info];
    v9 = [v8 description];
    v10 = [v4 info];
    v11 = [v10 savePath];
    v12 = [v4 currentRetry];
    v13 = [v4 info];
    *buf = 138544386;
    v20 = v9;
    v21 = 2114;
    v22 = v11;
    v23 = 2048;
    v24 = v6;
    v25 = 2048;
    v26 = v12;
    v27 = 2048;
    v28 = [v13 maxRetry];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retrying task %{public}@ with savePath: %{public}@ after %f ms; attempt %ld/%ld...", buf, 0x34u);
  }

  v14 = dispatch_time(0, (v6 * 1000000.0));
  v15 = [(MSDSession *)self demuxQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000725C0;
  v17[3] = &unk_10016A258;
  v17[4] = self;
  v18 = v4;
  v16 = v4;
  dispatch_after(v14, v15, v17);
}

- (id)parseResponseHeader:(id)a3 statusCode:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [v5 objectForKey:@"X-Protocol-Version"];
  if (v7)
  {
    [v6 setObject:v7 forKey:@"protocolVersion"];
  }

  if (a4 == 202)
  {
    v8 = [v5 objectForKey:@"Retry-After"];
    if (v8)
    {
      v9 = v8;
      v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 intValue]);
      [v6 setObject:v10 forKey:@"retryAfter"];
    }
  }

  return v6;
}

- (void)logDownloadTaskLaunch:(id)a3
{
  v4 = a3;
  v5 = [v4 contentRange];
  v6 = [v5 getRangeHeaderForDownload];

  v7 = [v4 contentRange];
  v8 = [v7 downloadedBytes];

  v9 = [v4 contentRange];
  v10 = [v9 existingFileSize];

  if (v8 + v10 >= 1)
  {
    v11 = sub_100063A54();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v4 info];
      v13 = [v12 savePath];
      v19 = 138544130;
      v20 = v13;
      v21 = 2048;
      v22 = v10;
      v23 = 2048;
      v24 = v8;
      v25 = 2114;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "File %{public}@ is partially downloaded with existing size = %ld, downloaded bytes = %ld; using range header %{public}@", &v19, 0x2Au);
    }

    v14 = sub_100063BEC();
    v15 = [(MSDSession *)self signpostId];
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        v17 = [v4 info];
        v18 = [v17 savePath];
        v19 = 138413058;
        v20 = v18;
        v21 = 2048;
        v22 = v10;
        v23 = 2048;
        v24 = v8;
        v25 = 2112;
        v26 = v6;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, v16, "Resume Partial Download", "Resuming partial download for: %{xcode:string}@, existing size = %{xcode:size-in-bytes}lu; downloaded bytes = %{xcode:size-in-bytes}lu; range header = %{xcode:string}@", &v19, 0x2Au);
      }
    }
  }
}

- (id)getServerErrorMessage:(id)a3 withDefault:(id)a4
{
  v5 = a4;
  v6 = [a3 outData];
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:0];
  v8 = v7;
  if (!v7)
  {
    v10 = [[NSString alloc] initWithData:v6 encoding:4];
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
    v11 = [v5 stringByAppendingFormat:@": %@", v9];

    goto LABEL_11;
  }

LABEL_10:
  v11 = v5;
LABEL_11:

  return v11;
}

@end