@interface TransparencyLogSessionDelegate
- (KTLogClient)logClient;
- (TransparencyLogSessionDelegate)initWithDataStore:(id)store workloop:(id)workloop;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)handleDownloadRecord:(id)record downloadData:(id)data downloadMetadata:(id)metadata;
- (void)handleDownloadRecordFailure:(id)failure task:(id)task downloadMetadata:(id)metadata error:(id)error;
@end

@implementation TransparencyLogSessionDelegate

- (TransparencyLogSessionDelegate)initWithDataStore:(id)store workloop:(id)workloop
{
  storeCopy = store;
  workloopCopy = workloop;
  v11.receiver = self;
  v11.super_class = TransparencyLogSessionDelegate;
  v8 = [(TransparencyLogSessionDelegate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TransparencyLogSessionDelegate *)v8 setDataStore:storeCopy];
    [(TransparencyLogSessionDelegate *)v9 setWorkloop:workloopCopy];
  }

  return v9;
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  sessionCopy = session;
  taskCopy = task;
  if (qword_10039CEB8 != -1)
  {
    sub_100260240();
  }

  v12 = qword_10039CEC0;
  if (os_log_type_enabled(qword_10039CEC0, OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    currentRequest = [taskCopy currentRequest];
    v15 = [currentRequest URL];
    absoluteURL = [v15 absoluteURL];
    v17 = 134218498;
    writtenCopy = written;
    v19 = 2048;
    writeCopy = write;
    v21 = 2112;
    v22 = absoluteURL;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Wrote %lld bytes of %lld total bytes for request %@", &v17, 0x20u);
  }
}

- (void)handleDownloadRecord:(id)record downloadData:(id)data downloadMetadata:(id)metadata
{
  recordCopy = record;
  dataCopy = data;
  metadataCopy = metadata;
  dataStore = [(TransparencyLogSessionDelegate *)self dataStore];
  v24 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10023C330;
  v19[3] = &unk_10032C968;
  v12 = dataCopy;
  v20 = v12;
  v13 = metadataCopy;
  v21 = v13;
  selfCopy = self;
  v14 = recordCopy;
  v23 = v14;
  LODWORD(metadataCopy) = [dataStore performAndWaitForDownloadId:v14 error:&v24 block:v19];
  v15 = v24;

  if (!metadataCopy || v15)
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

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  sessionCopy = session;
  taskCopy = task;
  lCopy = l;
  if (qword_10039CEB8 != -1)
  {
    sub_1002602B8();
  }

  v11 = qword_10039CEC0;
  if (os_log_type_enabled(qword_10039CEC0, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v33 = taskCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Download task %@ completed successfully", buf, 0xCu);
  }

  originalRequest = [taskCopy originalRequest];
  response = [taskCopy response];
  kt_requestId = [originalRequest kt_requestId];
  v15 = [NSData dataWithContentsOfURL:lCopy];
  workloop = [(TransparencyLogSessionDelegate *)self workloop];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10023CB18;
  v26[3] = &unk_10032C9D0;
  v17 = response;
  v27 = v17;
  selfCopy = self;
  v18 = kt_requestId;
  v29 = v18;
  v19 = v15;
  v30 = v19;
  v20 = taskCopy;
  v31 = v20;
  [TransparencyLogSession dispatchToQueue:workloop block:v26];

  v21 = +[NSFileManager defaultManager];
  v25 = 0;
  v22 = [v21 removeItemAtURL:lCopy error:&v25];
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
      v33 = lCopy;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to delete %@: %@", buf, 0x16u);
    }
  }
}

- (void)handleDownloadRecordFailure:(id)failure task:(id)task downloadMetadata:(id)metadata error:(id)error
{
  failureCopy = failure;
  taskCopy = task;
  metadataCopy = metadata;
  errorCopy = error;
  dataStore = [(TransparencyLogSessionDelegate *)self dataStore];
  v40 = 0;
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_10023CED8;
  v34 = &unk_10032CA98;
  v15 = errorCopy;
  v35 = v15;
  v16 = taskCopy;
  v36 = v16;
  v17 = failureCopy;
  v37 = v17;
  v18 = metadataCopy;
  v38 = v18;
  selfCopy = self;
  v19 = [dataStore performAndWaitForDownloadId:v17 error:&v40 block:&v31];
  v20 = v40;

  domain = [v15 domain];
  if ([domain isEqualToString:NSURLErrorDomain])
  {
    code = [v15 code];

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

    if (code == -999)
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

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  originalRequest = [taskCopy originalRequest];
  response = [taskCopy response];
  kt_requestId = [originalRequest kt_requestId];
  response2 = [taskCopy response];
  v13 = [TransparencyLogSession createErrorFromURLResonse:response2 data:0 allowEmptyData:1 error:errorCopy];

  if (v13)
  {
    workloop = [(TransparencyLogSessionDelegate *)self workloop];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10023D5D8;
    v15[3] = &unk_10032C9D0;
    v15[4] = self;
    v16 = kt_requestId;
    v17 = taskCopy;
    v18 = response;
    v19 = v13;
    [TransparencyLogSession dispatchToQueue:workloop block:v15];
  }
}

- (KTLogClient)logClient
{
  WeakRetained = objc_loadWeakRetained(&self->_logClient);

  return WeakRetained;
}

@end