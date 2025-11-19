@interface TransparencyLogSessionDelegate
- (KTLogClient)logClient;
- (TransparencyLogSessionDelegate)initWithDataStore:(id)a3 workloop:(id)a4;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)handleDownloadRecord:(id)a3 downloadData:(id)a4 downloadMetadata:(id)a5;
- (void)handleDownloadRecordFailure:(id)a3 task:(id)a4 downloadMetadata:(id)a5 error:(id)a6;
@end

@implementation TransparencyLogSessionDelegate

- (TransparencyLogSessionDelegate)initWithDataStore:(id)a3 workloop:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TransparencyLogSessionDelegate;
  v8 = [(TransparencyLogSessionDelegate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TransparencyLogSessionDelegate *)v8 setDataStore:v6];
    [(TransparencyLogSessionDelegate *)v9 setWorkloop:v7];
  }

  return v9;
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  v10 = a3;
  v11 = a4;
  if (qword_10039CEB8 != -1)
  {
    sub_100260240();
  }

  v12 = qword_10039CEC0;
  if (os_log_type_enabled(qword_10039CEC0, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = [v11 currentRequest];
    v15 = [v14 URL];
    v16 = [v15 absoluteURL];
    v17 = 134218498;
    v18 = a6;
    v19 = 2048;
    v20 = a7;
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Wrote %lld bytes of %lld total bytes for request %@", &v17, 0x20u);
  }
}

- (void)handleDownloadRecord:(id)a3 downloadData:(id)a4 downloadMetadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(TransparencyLogSessionDelegate *)self dataStore];
  v24 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10023C330;
  v19[3] = &unk_10032C968;
  v12 = v9;
  v20 = v12;
  v13 = v10;
  v21 = v13;
  v22 = self;
  v14 = v8;
  v23 = v14;
  LODWORD(v10) = [v11 performAndWaitForDownloadId:v14 error:&v24 block:v19];
  v15 = v24;

  if (!v10 || v15)
  {
    if (qword_10039CEB8 != -1)
    {
      sub_100260254();
    }

    v16 = qword_10039CEC0;
    if (os_log_type_enabled(qword_10039CEC0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to fetch download record %@: %@", buf, 0x16u);
    }

    v17 = [TransparencyAnalytics formatEventName:@"NetworkDownloadEvent" application:kKTApplicationIdentifierTLT];
    v18 = +[TransparencyAnalytics logger];
    [v18 logResultForEvent:v17 hardFailure:1 result:v15];
  }
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_10039CEB8 != -1)
  {
    sub_1002602B8();
  }

  v11 = qword_10039CEC0;
  if (os_log_type_enabled(qword_10039CEC0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Download task %@ completed successfully", buf, 0xCu);
  }

  v12 = [v9 originalRequest];
  v13 = [v9 response];
  v14 = [v12 kt_requestId];
  v15 = [NSData dataWithContentsOfURL:v10];
  v16 = [(TransparencyLogSessionDelegate *)self workloop];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10023CB18;
  v26[3] = &unk_10032C9D0;
  v17 = v13;
  v27 = v17;
  v28 = self;
  v18 = v14;
  v29 = v18;
  v19 = v15;
  v30 = v19;
  v20 = v9;
  v31 = v20;
  [TransparencyLogSession dispatchToQueue:v16 block:v26];

  v21 = +[NSFileManager defaultManager];
  v25 = 0;
  v22 = [v21 removeItemAtURL:v10 error:&v25];
  v23 = v25;

  if ((v22 & 1) == 0)
  {
    if (qword_10039CEB8 != -1)
    {
      sub_1002602CC();
    }

    v24 = qword_10039CEC0;
    if (os_log_type_enabled(qword_10039CEC0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v33 = v10;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to delete %@: %@", buf, 0x16u);
    }
  }
}

- (void)handleDownloadRecordFailure:(id)a3 task:(id)a4 downloadMetadata:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(TransparencyLogSessionDelegate *)self dataStore];
  v40 = 0;
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_10023CED8;
  v34 = &unk_10032CA98;
  v15 = v13;
  v35 = v15;
  v16 = v11;
  v36 = v16;
  v17 = v10;
  v37 = v17;
  v18 = v12;
  v38 = v18;
  v39 = self;
  v19 = [v14 performAndWaitForDownloadId:v17 error:&v40 block:&v31];
  v20 = v40;

  v21 = [v15 domain];
  if ([v21 isEqualToString:NSURLErrorDomain])
  {
    v22 = [v15 code];

    if (v20)
    {
      v23 = 0;
    }

    else
    {
      v23 = v19;
    }

    if (v23)
    {
      goto LABEL_20;
    }

    if (v22 == -999)
    {
      if (qword_10039CEB8 != -1)
      {
        sub_10026031C();
      }

      v24 = qword_10039CEC0;
      if (os_log_type_enabled(qword_10039CEC0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v42 = v17;
        v25 = "Failed to fetch cancelled downloadId %{public}@";
        v26 = v24;
        v27 = OS_LOG_TYPE_DEFAULT;
        v28 = 12;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v26, v27, v25, buf, v28);
        goto LABEL_20;
      }

      goto LABEL_20;
    }
  }

  else
  {

    if (v20)
    {
      v29 = 0;
    }

    else
    {
      v29 = v19;
    }

    if (v29)
    {
      goto LABEL_20;
    }
  }

  if (qword_10039CEB8 != -1)
  {
    sub_1002602F4();
  }

  v30 = qword_10039CEC0;
  if (os_log_type_enabled(qword_10039CEC0, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v42 = v17;
    v43 = 2112;
    v44 = v20;
    v25 = "Failed to fetch downloadId %{public}@ for failed download: %@";
    v26 = v30;
    v27 = OS_LOG_TYPE_ERROR;
    v28 = 22;
    goto LABEL_19;
  }

LABEL_20:
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 originalRequest];
  v10 = [v7 response];
  v11 = [v9 kt_requestId];
  v12 = [v7 response];
  v13 = [TransparencyLogSession createErrorFromURLResonse:v12 data:0 allowEmptyData:1 error:v8];

  if (v13)
  {
    v14 = [(TransparencyLogSessionDelegate *)self workloop];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10023D5D8;
    v15[3] = &unk_10032C9D0;
    v15[4] = self;
    v16 = v11;
    v17 = v7;
    v18 = v10;
    v19 = v13;
    [TransparencyLogSession dispatchToQueue:v14 block:v15];
  }
}

- (KTLogClient)logClient
{
  WeakRetained = objc_loadWeakRetained(&self->_logClient);

  return WeakRetained;
}

@end